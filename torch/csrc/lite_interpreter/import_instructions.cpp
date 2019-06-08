#include <google/protobuf/util/json_util.h>
#include <google/protobuf/util/type_resolver_util.h>

#include <torch/csrc/lite_interpreter/import_instructions.h>
#include <torch/csrc/lite_interpreter/gason.h>
#include <torch/csrc/autograd/variable.h>

#include "caffe2/core/common.h"
#include "caffe2/core/types.h"
#include "caffe2/serialize/inline_container.h"
#include "caffe2/serialize/istream_adapter.h"
#include "caffe2/serialize/read_adapter_interface.h"

#include <ATen/ATen.h>

#include <fstream>
#include <string>
#include <unordered_map>
#include <vector>

namespace torch {
namespace jit {

const caffe2::TypeMeta& DataTypeStringToTypeMeta(const std::string& dt) {
  static std::map<std::string, caffe2::TypeMeta> type_meta_map{
    {"FLOAT", caffe2::TypeMeta::Make<float>()},
    {"INT32", caffe2::TypeMeta::Make<int>()},
    {"BYTE", caffe2::TypeMeta::Make<uint8_t>()},
    {"STRING", caffe2::TypeMeta::Make<std::string>()},
    {"BOOL", caffe2::TypeMeta::Make<bool>()},
    {"UINT8", caffe2::TypeMeta::Make<uint8_t>()},
    {"INT8", caffe2::TypeMeta::Make<int8_t>()},
    {"UINT16", caffe2::TypeMeta::Make<uint16_t>()},
    {"INT16", caffe2::TypeMeta::Make<int16_t>()},
    {"INT64", caffe2::TypeMeta::Make<int64_t>()},
    {"FLOAT16", caffe2::TypeMeta::Make<at::Half>()},
    {"DOUBLE", caffe2::TypeMeta::Make<double>()},
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
  void deserialize(std::shared_ptr<GenericInstructionList> insList,
                   c10::optional<at::Device> device);

 private:
  void loadTensorTable(const JsonValue& tensorsVal,
                       std::vector<c10::IValue>& tensor_table);
  at::Tensor loadTensor(
      JsonNode* tNode,
      std::unordered_map<std::string, at::Storage>& storageMap);

  void loadInstructions(const JsonValue& instructionsVal,
                        const std::vector<c10::IValue>& tensors,
                        std::vector<GenericInstruction>& instructions);

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

void InstructionsDeserializer::deserialize(std::shared_ptr<GenericInstructionList> insList,
                                           c10::optional<at::Device> device) {
//  instruction::InstructionListProto list_proto;

  // String to proto def
  at::DataPtr data_ptr;
  size_t data_size;
  std::tie(data_ptr, data_size) = reader_.getRecord("instructions.json");
  std::string json_string = std::string(
      static_cast<char*>(data_ptr.get()),
      static_cast<char*>(data_ptr.get()) + data_size);
  std::cout << json_string << std::endl;

  char *source = static_cast<char*>(data_ptr.get());
  char *endptr;
  JsonValue value;
  JsonAllocator allocator;
  int status = jsonParse(source, &endptr, &value, allocator);
  if (status != JSON_OK) {
    fprintf(stderr, "%s at %zd\n", jsonStrError(status), endptr - source);
    exit(EXIT_FAILURE);
  }

  JsonValue tensorsVal, instructionsVal;
  for (auto node : value) {
    auto key = std::string(node->key);
    if (key == "tensors") {
      tensorsVal = node->value;
    } else if (key == "instructions") {
      instructionsVal = node->value;
    }
  }

  // Tensors
  loadTensorTable(tensorsVal, insList->tensors);

  // Instructions
  loadInstructions(instructionsVal, insList->tensors, insList->instructions);
}

void InstructionsDeserializer::loadTensorTable(const JsonValue& tensorsVal,
                                               std::vector<c10::IValue>& tensor_table) {
  std::unordered_map<std::string, at::Storage> storageMap;
  for (auto tNode : tensorsVal) {
    tensor_table.emplace_back(loadTensor(tNode, storageMap));
  }
}

at::Tensor InstructionsDeserializer::loadTensor(
    JsonNode* tNode,
    std::unordered_map<std::string, at::Storage>& storageMap) {
  std::vector<int64_t> dims;
  std::vector<int64_t> strides;
  std::string typeString;
  std::string record_key;
  int64_t offset = 0;
  bool requires_grad = false;
  std::string deviceString;
  for (auto node : tNode->value) {
    std::string key(node->key);
    if (key == "dims") {
      for (auto i : node->value) {
        dims.emplace_back(std::stoll(i->value.toString()));
      }
    } else if (key == "strides") {
      for (auto i : node->value) {
        strides.emplace_back(std::stoll(i->value.toString()));
      }
    } else if (key == "dataType") {
      typeString = node->value.toString();
    } else if (key == "data") {
      auto i = node->value.toNode();
      record_key = i->value.toString();
    } else if (key == "offset") {
      offset = std::stoll(node->value.toString());
    } else if (key == "requiresGrad") {
      if (node->value.getTag() == JSON_TRUE) {
        requires_grad = true;
      }
    } else if (key == "device") {
      deviceString = node->value.toString();
    }
  }
  auto type = at::typeMetaToScalarType(DataTypeStringToTypeMeta(typeString));

  at::Device device(deviceString);
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
            .set_(storage_it->second, offset, dims, strides);
  } else if (device.type() == at::DeviceType::CUDA) {
    result =
        at::empty({0}, at::CUDA(type).options())
            .set_(storage_it->second, offset, dims, strides);
  }
  AT_ASSERT(result.defined());

  result = autograd::make_variable(result, requires_grad);

  return result;
}

void InstructionsDeserializer::loadInstructions(const JsonValue& instructionsVal,
                                                const std::vector<c10::IValue>& tensors,
                                                std::vector<GenericInstruction>& instructions) {
  for (auto insVal : instructionsVal) {
    instructions.emplace_back();
    auto& ins = instructions.back();
    for (auto node : insVal->value) {
      std::string key(node->key);
      if (key == "op") {
        for (auto i : node->value) {
          std::string ikey(i->key);
          if (ikey == "name") {
            ins.name = i->value.toString();
          } else if (ikey == "overloadName") {
            ins.overload_name = i->value.toString();
          }
        }
      } else if (key == "inputs") {
        for (auto i : node->value) {
          ins.inputs.emplace_back();
          auto& input = ins.inputs.back();
          input.free_flag = false;
          for (auto j : i->value) {
            std::string jkey(j->key);
            if (jkey == "uniqueId") {
              input.unique_id = j->value.toNumber();
            } else if (jkey == "freeFlag") {
              if (j->value.getTag() == JSON_TRUE) {
                input.free_flag = true;
              }
            }
          }
        }
      } else if (key == "outputs") {
        for (auto i : node->value) {
          ins.outputs.emplace_back();
          auto& output = ins.outputs.back();
          for (auto j : i->value) {
            std::string jkey(j->key);
            if (jkey == "uniqueId") {
              output.unique_id = j->value.toNumber();
            }
          }
        }
      } else if (key == "attributes") {
        for (auto i : node->value) {
          for (auto j : i->value) {
            std::string key(j->key);
            if (key == "intValue") {
              int64_t intVal = std::stoll(j->value.toString());
              ins.attributes.emplace_back(intVal);
            }
            else if (key == "boolValue") {
              if (j->value.getTag() == JSON_TRUE)
                ins.attributes.emplace_back(true);
              else
                ins.attributes.emplace_back(false);
            }
            else if (key == "floatValue") {
              double doubleVal = j->value.toNumber();
              ins.attributes.emplace_back(doubleVal);
            }
            else if (key == "intList") {
              std::vector<int64_t> iv;
              for (auto ii : j->value) {
                iv.emplace_back(std::stoll(ii->value.toString()));
              }
              ins.attributes.emplace_back(iv);
            }
            else if (key == "floatList") {
              std::vector<double> dv;
              for (auto ii : j->value) {
                dv.emplace_back(std::stod(ii->value.toString()));
              }
              ins.attributes.emplace_back(dv);
            }
            else if (key == "kind" && j->value.toString() == "n") {
              ins.attributes.emplace_back(c10::IValue());
            }
            else if (key == "tensorId") {
              size_t id = std::stoi(j->value.toString());
              ins.attributes.emplace_back(tensors[id]);
            }
          }
        }
      }
    }
  }
}

} // namespace

std::shared_ptr<GenericInstructionList> loadInstructionList(
    std::unique_ptr<ReadAdapterInterface> rai,
    c10::optional<c10::Device> device) {
  auto list = std::make_shared<GenericInstructionList>();

  InstructionsDeserializer deserializer(std::move(rai));
  deserializer.deserialize(list, device);

  return list;
}

std::shared_ptr<GenericInstructionList> loadInstructionList(
    std::istream& in,
    c10::optional<at::Device> device) {
  std::unique_ptr<IStreamAdapter> rai =
      caffe2::make_unique<IStreamAdapter>(&in);
  auto list = loadInstructionList(std::move(rai), device);
  return list;
}

std::shared_ptr<GenericInstructionList> loadInstructionList(
    const std::string& filename,
    c10::optional<at::Device> device) {
  std::unique_ptr<FileAdapter> rai = caffe2::make_unique<FileAdapter>(filename);
  auto list = loadInstructionList(std::move(rai), device);
  return list;
}

} // namespace jit
} // namespace torch
