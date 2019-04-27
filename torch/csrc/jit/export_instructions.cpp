#include <google/protobuf/util/json_util.h>
#include <google/protobuf/util/type_resolver_util.h>

#include <torch/csrc/autograd/symbolic.h>
#include <torch/csrc/jit/export.h>
#include <torch/csrc/onnx/onnx.h>

#include <ATen/core/functional.h>
#include <c10/util/Exception.h>
#include <torch/csrc/jit/passes/dead_code_elimination.h>
#include <torch/csrc/jit/passes/python_print.h>
#include <torch/csrc/jit/pickler.h>
#include <torch/csrc/jit/instruction.h>

#include <caffe2/core/types.h>
//#include <caffe2/proto/caffe2_pb.h>
//#include <caffe2/proto/torch_pb.h>
#include <caffe2/proto/jit_mobile_pb.h>
#include <caffe2/serialize/inline_container.h>
#include <onnx/onnx_pb.h>

#include <ATen/ATen.h>
#include <c10/util/Optional.h>

#include <fstream>
#include <memory>
#include <sstream>
#include <stack>
#include <string>
#include <vector>

namespace torch {
namespace jit {


jit_mobile::TensorDef::DataType TypeMetaToDataType(const caffe2::TypeMeta& meta) {
  static_assert(sizeof(int) == 4,
                "int in this compiler does not equal to 4 bytes.");
  static std::map<caffe2::TypeIdentifier, jit_mobile::TensorDef::DataType> data_type_map {
    {caffe2::TypeMeta::Id<float>(), jit_mobile::TensorDef_DataType_FLOAT},
        {caffe2::TypeMeta::Id<int>(), jit_mobile::TensorDef_DataType_INT32},
    // BYTE does not have a type meta to proto mapping: we should
    // always use uint8_t when serializing. BYTE is kept for backward
        // compatibility.
        // {TypeMeta::Id<>(), TensorProto_DataType_BYTE},
        {caffe2::TypeMeta::Id<std::string>(), jit_mobile::TensorDef_DataType_STRING},
        {caffe2::TypeMeta::Id<bool>(), jit_mobile::TensorDef_DataType_BOOL},
        {caffe2::TypeMeta::Id<uint8_t>(), jit_mobile::TensorDef_DataType_UINT8},
        {caffe2::TypeMeta::Id<int8_t>(), jit_mobile::TensorDef_DataType_INT8},
        {caffe2::TypeMeta::Id<uint16_t>(), jit_mobile::TensorDef_DataType_UINT16},
        {caffe2::TypeMeta::Id<int16_t>(), jit_mobile::TensorDef_DataType_INT16},
        {caffe2::TypeMeta::Id<int64_t>(), jit_mobile::TensorDef_DataType_INT64},
      {caffe2::TypeMeta::Id<at::Half>(), jit_mobile::TensorDef_DataType_FLOAT16},
      {caffe2::TypeMeta::Id<double>(), jit_mobile::TensorDef_DataType_DOUBLE},
  };
  const auto it = data_type_map.find(meta.id());
  return (it == data_type_map.end()
              ? jit_mobile::TensorDef_DataType_UNDEFINED : it->second);
}

namespace {
// this is a serializer class which saves instructions and constants to a file.
// It's similar to file structure in InstructionsSerializer.
// TODO: modularize the attribute and tensor parts in the final version, if the's
// no difference on tensors in models and instructions.
class InstructionsSerializer final {
 public:
  InstructionsSerializer(const std::string& filename);

  InstructionsSerializer(std::ostream* ofs);

  void serialize(const InstructionList& inslist);

 private:

  // write the content of the tensor to the file/stream, and save the
  // offset in the storageMap_
  void convertAndWriteTensor(
      size_t tensor_id,
      const at::Tensor& tensor,
      jit_mobile::TensorDef* tensor_proto,
      std::unordered_map<const void*, std::string>& storageMap);

  std::ofstream ofs_;
  caffe2::serialize::PyTorchStreamWriter writer_;

  // all tensors that will be stored
  std::vector<at::Tensor> tensor_table_;
};

// InstructionsSerializer's methods
InstructionsSerializer::InstructionsSerializer(const std::string& filename)
    : writer_(filename.c_str()) {
  // TODO appropriate support for mmap, right now we still use stream writer
}

InstructionsSerializer::InstructionsSerializer(std::ostream* ofs)
    : ofs_(), writer_(ofs) {}

void InstructionsSerializer::serialize(const InstructionList& inslist) {
  jit_mobile::InstructionListProto list_proto;

  // meta data
  list_proto.set_name("list");
  for (size_t i = 0; i < inslist.int_data.size(); ++i) {
    list_proto.add_int_data(inslist.int_data[i]);
  }
  for (size_t i = 0; i < inslist.bool_data.size(); ++i) {
    list_proto.add_bool_data(inslist.bool_data[i]);
  }
  list_proto.set_register_size(inslist.register_size);

  // instructions and tensors
  std::unordered_map<const void*, std::string> storageMap;
  size_t tensor_id = 0;
  for (auto& ins : inslist.instructions) {
    auto ins_proto = list_proto.add_instructions();

    // operator
    auto op = ins_proto->mutable_op();
    auto opName = ins.debug_name.toQualString();
    std::cout << "Exporting op " << opName << std::endl;
    op->set_name(opName);
    op->set_overload_name("");

    // inputs
    auto inputs = ins_proto->mutable_inputs();
    inputs->mutable_values()->set_start(ins.inputs.values.start);
    inputs->mutable_values()->set_size(ins.inputs.values.size);
    inputs->mutable_free_flags()->set_start(ins.inputs.free_flags.start);
    inputs->mutable_free_flags()->set_size(ins.inputs.free_flags.size);

    // outputs
    auto outputs = ins_proto->mutable_outputs();
    outputs->set_start(ins.outputs.start);
    outputs->set_size(ins.outputs.size);

    // If it's a Constant operator, serialize the constant
    if (std::string(opName) == "prim::Constant") {
      // Serialize constant to attribute value
      auto attribute = ins_proto->add_attributes();

      Stack stack;
      ins.callback(stack);
      auto val = stack.back();

      if (val.isInt()) {
        attribute->set_kind(jit_mobile::AttributeValueProto::i);
        attribute->set_int_value(val.toInt());
      }
      else if (val.isDouble()) {
        attribute->set_kind(jit_mobile::AttributeValueProto::f);
        attribute->set_float_value(val.toDouble());
      }
      else if (val.isTensor()) {
        attribute->set_kind(jit_mobile::AttributeValueProto::t);
        attribute->set_tensor_id(tensor_id);
        auto tensor_proto = list_proto.add_tensors();
        convertAndWriteTensor(tensor_id++, val.toTensor(), tensor_proto, storageMap);
      }
      else {
        throw std::runtime_error("Value type of Constant operator is not supported yet.");
      }
    }
  }
//  std::cout << list_proto.DebugString() << std::endl;
  std::string output;
  // NB: cannot use MessageToJsonString, since fbcode's protobuf is too old
  // be consistent with MessageToJsonString
  std::string url_prefix = "type.googleapis.com";
  std::unique_ptr<::google::protobuf::util::TypeResolver> resolver(
      ::google::protobuf::util::NewTypeResolverForDescriptorPool(
          url_prefix, list_proto.GetDescriptor()->file()->pool()));
  ::google::protobuf::util::Status convert_result =
      ::google::protobuf::util::BinaryToJsonString(
          resolver.get(),
          url_prefix + "/" + list_proto.GetDescriptor()->full_name(),
          list_proto.SerializeAsString(),
          &output);
  if (!convert_result.ok()) {
    std::stringstream ss;
    ss << convert_result;
    AT_ERROR(ss.str());
  }
  std::cout << output << std::endl;
  writer_.writeRecord("instructions.json", output.data(), output.size());
  writer_.writeEndOfFile();
}

// TODO: should pull ScriptModuleSerializer::convertAndWriteTensor and re-use it.
// However protobuf is to be replaced by a lighter lib, keep the function here
// for future change. The function as is should not be landed.
void InstructionsSerializer::convertAndWriteTensor(
    size_t tensor_id,
    const at::Tensor& tensor,
    jit_mobile::TensorDef* tensor_proto,
    std::unordered_map<const void*, std::string>& storageMap) {
  for (auto d : tensor.sizes()) {
    tensor_proto->add_dims(d);
  }
  for (auto s : tensor.strides()) {
    tensor_proto->add_strides(s);
  }

  tensor_proto->set_data_type(torch::jit::TypeMetaToDataType(
      at::scalarTypeToTypeMeta(tensor.scalar_type())));
  tensor_proto->set_offset(tensor.storage_offset());

  tensor_proto->set_requires_grad(tensor.requires_grad());

  uint64_t record_size =
      tensor.element_size() * tensor.storage().size();
  auto* key = tensor.storage().unsafeGetStorageImpl();

  auto storage_it = storageMap.find(key);
  if (storage_it == storageMap.end()) {
    at::Tensor storage_tensor = tensor;
    // TODO HIP support
    if (tensor.storage().device_type() == at::DeviceType::CUDA) {
      // NB: This new tensor is created to support cuda tensors.
      // Storages can be mutated when converting tensors from cuda to cpu,
      // and we need a cpu tensor to copy data from.
      storage_tensor = at::empty({0}, tensor.options())
                           .set_(
                               tensor.storage(),
                               /* storageOffset = */ 0,
                               /* size = */
                               {static_cast<int64_t>(tensor.storage().size())},
                               /* stride = */ {1})
                           .cpu();
      AT_ASSERT(
          storage_tensor.element_size() *
              storage_tensor.storage().size() ==
          record_size);
    }
    std::string name = "tensors/" + std::to_string(tensor_id);
    writer_.writeRecord(name, storage_tensor.storage().data(), record_size);
    storage_it = storageMap.insert({key, name}).first;
  }

  auto* data = tensor_proto->mutable_data();
  data->set_key(storage_it->second);

  // handle device case, set the device_detail and load to CUDA device
  std::stringstream ss;
  ss << tensor.device();
  tensor_proto->set_device(ss.str());
}

}

void ExportInstructions(
    const InstructionList& inslist,
    const std::string& filename) {
  InstructionsSerializer serializer(filename);
  serializer.serialize(inslist);
}

} // namespace jit
} // namespace torch
