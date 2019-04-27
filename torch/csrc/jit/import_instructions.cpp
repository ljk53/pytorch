#include <google/protobuf/util/json_util.h>
#include <google/protobuf/util/type_resolver_util.h>

#include <torch/csrc/jit/import_instructions.h>
#include <torch/csrc/autograd/variable.h>

#include "caffe2/core/common.h"
#include "caffe2/core/types.h"
#include "caffe2/proto/jit_mobile_pb.h"
#include "caffe2/serialize/inline_container.h"
#include "caffe2/serialize/istream_adapter.h"

#include <ATen/ATen.h>

#include <fstream>
#include <string>
#include <unordered_map>
#include <vector>

namespace torch {
namespace jit {

const caffe2::TypeMeta& DataTypeToTypeMeta(const jit_mobile::TensorDef::DataType& dt) {
  static std::map<jit_mobile::TensorDef::DataType, caffe2::TypeMeta> type_meta_map{
    {jit_mobile::TensorDef_DataType_FLOAT, caffe2::TypeMeta::Make<float>()},
        {jit_mobile::TensorDef_DataType_INT32, caffe2::TypeMeta::Make<int>()},
        {jit_mobile::TensorDef_DataType_BYTE, caffe2::TypeMeta::Make<uint8_t>()},
        {jit_mobile::TensorDef_DataType_STRING, caffe2::TypeMeta::Make<std::string>()},
        {jit_mobile::TensorDef_DataType_BOOL, caffe2::TypeMeta::Make<bool>()},
        {jit_mobile::TensorDef_DataType_UINT8, caffe2::TypeMeta::Make<uint8_t>()},
        {jit_mobile::TensorDef_DataType_INT8, caffe2::TypeMeta::Make<int8_t>()},
        {jit_mobile::TensorDef_DataType_UINT16, caffe2::TypeMeta::Make<uint16_t>()},
        {jit_mobile::TensorDef_DataType_INT16, caffe2::TypeMeta::Make<int16_t>()},
      {jit_mobile::TensorDef_DataType_INT64, caffe2::TypeMeta::Make<int64_t>()},
      {jit_mobile::TensorDef_DataType_FLOAT16, caffe2::TypeMeta::Make<at::Half>()},
      {jit_mobile::TensorDef_DataType_DOUBLE, caffe2::TypeMeta::Make<double>()},
  };
  const auto it = type_meta_map.find(dt);
  if (it == type_meta_map.end()) {
    throw std::runtime_error("Unknown data type.");
  }
  return it->second;
}

namespace {

// this is a deserializer class which loads script modules from pt files. the
// content of the file is written using PyTorchStreamWriter, for details please
// check caffe2/serialize/inline_container.h. all the records except the last
// one are tensor data, and the last record is a serialized ModelProto, defined
// in caffe2/proto/torch.proto. ModelProto contains all the metadata of the
// model, and it is serialized as json.
class InstructionsDeserializer final {
 public:
  InstructionsDeserializer(const std::string& filename);
  InstructionsDeserializer(std::istream* is);
  explicit InstructionsDeserializer(std::unique_ptr<ReadAdapterInterface> rai);
  void deserialize(std::shared_ptr<InstructionList> insList,
                   c10::optional<at::Device> device);

 private:
  void loadTensorTable(jit_mobile::InstructionListProto* list_proto,
                       std::vector<c10::IValue>& tensor_table);
  at::Tensor loadTensor(
      const jit_mobile::TensorDef& tensor_proto,
      std::unordered_map<std::string, at::Storage>& storageMap);

  void loadInstructions(jit_mobile::InstructionListProto* list_proto,
                        std::shared_ptr<InstructionList> insList);

  caffe2::serialize::PyTorchStreamReader reader_;
  c10::optional<at::Device> device_;
  std::vector<at::Tensor> tensor_table_;
};

InstructionsDeserializer::InstructionsDeserializer(const std::string& filename)
    : reader_(filename.c_str()) {
}

InstructionsDeserializer::InstructionsDeserializer(std::istream* is)
    : reader_(is) {}

InstructionsDeserializer::InstructionsDeserializer(
    std::unique_ptr<ReadAdapterInterface> rai)
    : reader_(std::move(rai)) {}

void InstructionsDeserializer::deserialize(std::shared_ptr<InstructionList> insList,
                                           c10::optional<at::Device> device) {
  jit_mobile::InstructionListProto list_proto;

  // String to proto def
  at::DataPtr data_ptr;
  size_t data_size;
  std::tie(data_ptr, data_size) = reader_.getRecord("instructions.json");
  // NB: cannot use JsonStringToMessage, since fbcode's protobuf is too old
  // be consistent with JsonStringToMessage
  std::string url_prefix = "type.googleapis.com";
  std::unique_ptr<::google::protobuf::util::TypeResolver> resolver(
      ::google::protobuf::util::NewTypeResolverForDescriptorPool(
          url_prefix, list_proto.GetDescriptor()->file()->pool()));
  std::string json_string = std::string(
      static_cast<char*>(data_ptr.get()),
      static_cast<char*>(data_ptr.get()) + data_size);
  std::cout << json_string << std::endl;

  std::string binary_string;
  auto convert_result = ::google::protobuf::util::JsonToBinaryString(
      resolver.get(),
      url_prefix + "/" + list_proto.GetDescriptor()->full_name(),
      json_string,
      &binary_string);
  if (!convert_result.ok()) {
    std::stringstream ss;
    ss << convert_result;
    AT_ERROR(ss.str());
  }
  AT_ASSERTM(
      list_proto.ParseFromString(binary_string),
      "JSON transcoder produced invalid protobuf output.");
  device_ = device;

  // Tensors
  loadTensorTable(&list_proto, insList->tensors);

  // Instructions
  loadInstructions(&list_proto, insList);

  // Meta data
  insList->int_data = std::vector<int>(list_proto.int_data().begin(), list_proto.int_data().end());
  insList->bool_data = std::vector<bool>(list_proto.bool_data().begin(), list_proto.bool_data().end());
  insList->register_size = list_proto.register_size();
}

void InstructionsDeserializer::loadTensorTable(jit_mobile::InstructionListProto* list_proto,
                                               std::vector<c10::IValue>& tensor_table) {
  std::unordered_map<std::string, at::Storage> storageMap;
  for (const jit_mobile::TensorDef& tensor : list_proto->tensors()) {
    tensor_table.emplace_back(loadTensor(tensor, storageMap));
  }
}

at::Tensor InstructionsDeserializer::loadTensor(
    const jit_mobile::TensorDef& tensor_proto,
    std::unordered_map<std::string, at::Storage>& storageMap) {
  std::vector<int64_t> dims(
      tensor_proto.dims().begin(), tensor_proto.dims().end());
  std::vector<int64_t> strides(
      tensor_proto.strides().begin(), tensor_proto.strides().end());

  auto type = at::typeMetaToScalarType(
      DataTypeToTypeMeta(tensor_proto.data_type()));
  const std::string& record_key = tensor_proto.data().key();
  AT_ASSERT(tensor_proto.has_device() && !tensor_proto.device().empty());
  at::Device device(tensor_proto.device());
  if (device_.has_value()) {
    // override the device, if user provides map_location
    device = device_.value();
  }

  auto storage_it = storageMap.find(record_key);
  if (storage_it == storageMap.end()) {
    at::DataPtr storage_ptr;
    uint64_t record_size;
    std::tie(storage_ptr, record_size) = reader_.getRecord(record_key);
    auto cpu_storage = at::Storage(
        at::CPU(type).typeMeta(),
        record_size / at::CPU(type).typeMeta().itemsize(),
        std::move(storage_ptr),
        /*allocator=*/nullptr,
        /*resizable=*/false); // NB: we didn't set any allocator for the tensor
    if (device.type() == at::DeviceType::CPU) {
      storage_it =
          storageMap.insert(std::make_pair(record_key, cpu_storage)).first;
    } else if (device.type() == at::DeviceType::CUDA) {
      at::Tensor cpu_tensor =
          at::empty({0}, at::CPU(type).options()).set_(cpu_storage);
      at::Storage cuda_storage =
          cpu_tensor.to(device, cpu_tensor.scalar_type()).storage();
      storage_it =
          storageMap.insert(std::make_pair(record_key, cuda_storage)).first;
    } else {
      AT_ERROR(
          "supported devices include CPU and CUDA, however got ",
          at::DeviceTypeName(device.type(), false));
    }
  }
  if (storage_it->second.device().type() != device.type() ||
      (device.has_index() &&
       storage_it->second.device().index() != device.index())) {
    std::stringstream oss;
    oss << "storage previously was specified with device "
        << storage_it->second.device() << "but now is specified with device "
        << device << std::endl;
    AT_ERROR(oss.str());
  }

  at::Tensor result;
  if (device.type() == at::DeviceType::CPU) {
    result =
        at::empty({0}, at::CPU(type).options())
            .set_(storage_it->second, tensor_proto.offset(), dims, strides);
  } else if (device.type() == at::DeviceType::CUDA) {
    result =
        at::empty({0}, at::CUDA(type).options())
            .set_(storage_it->second, tensor_proto.offset(), dims, strides);
  }
  AT_ASSERT(result.defined());

  // TODO: investigate what's this for.
  result = autograd::make_variable(result, tensor_proto.requires_grad());

  return result;
}

void InstructionsDeserializer::loadInstructions(jit_mobile::InstructionListProto* list_proto,
                                               std::shared_ptr<InstructionList> insList) {
  for (const jit_mobile::InstructionProto& ins_proto : list_proto->instructions()) {
    insList->instructions.emplace_back();
    auto& ins = insList->instructions.back();
    // Operator
    ins.name = ins_proto.op().name();
    ins.overload_name = ins_proto.op().overload_name();
    std::cout << ins_proto.op().name() << ": " << ins_proto.op().overload_name() << std::endl;
    // ins.callback

    // inputs
    auto inputsDef = ins_proto.inputs();
    ins.inputs.values.start = inputsDef.values().start();
    ins.inputs.values.size = inputsDef.values().size();
    ins.inputs.free_flags.start = inputsDef.free_flags().start();
    ins.inputs.free_flags.size = inputsDef.free_flags().size();

    // outputs
    auto outputsDef = ins_proto.outputs();
    ins.outputs.start = outputsDef.start();
    ins.outputs.size = outputsDef.size();

    // Constant attributes
    if (ins_proto.op().name() == "prim::Constant") {
      for (auto attrDef : ins_proto.attributes()) {
        if (attrDef.kind() == jit_mobile::AttributeValueProto::i) {
          ins.attributes.emplace_back(attrDef.int_value());
        }
        else if (attrDef.kind() == jit_mobile::AttributeValueProto::f) {
          ins.attributes.emplace_back(attrDef.float_value());
        }
        else if (attrDef.kind() == jit_mobile::AttributeValueProto::t) {
          ins.attributes.emplace_back(insList->tensors[attrDef.tensor_id()]);
        }
        else {
          throw std::runtime_error("Value type of Constant operator cannot be proccessed.");
        }
      }
    }
  }
}

} // namespace

std::shared_ptr<InstructionList> loadInstructionList(
    std::unique_ptr<ReadAdapterInterface> rai,
    c10::optional<c10::Device> device) {
  auto list = std::make_shared<InstructionList>();

  InstructionsDeserializer deserializer(std::move(rai));
  deserializer.deserialize(list, device);

  return list;
}

std::shared_ptr<InstructionList> loadInstructionList(
    std::istream& in,
    c10::optional<at::Device> device) {
  std::unique_ptr<IStreamAdapter> rai =
      caffe2::make_unique<IStreamAdapter>(&in);
  auto list = loadInstructionList(std::move(rai), device);
  return list;
}

std::shared_ptr<InstructionList> loadInstructionList(
    const std::string& filename,
    c10::optional<at::Device> device) {
  std::unique_ptr<FileAdapter> rai = caffe2::make_unique<FileAdapter>(filename);
  auto list = loadInstructionList(std::move(rai), device);
  return list;
}

} // namespace jit
} // namespace torch
