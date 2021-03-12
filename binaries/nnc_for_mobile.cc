#include <string>
#include <sstream>
#include "torch/script.h"
#include "torch/csrc/jit/api/module.h"
#include "torch/csrc/jit/backends/backend_detail.h"
#include "torch/csrc/jit/passes/freeze_module.h"
#include "torch/csrc/jit/serialization/import.h"
#include "torch/csrc/jit/serialization/export.h"

C10_DEFINE_string(model, "", "The torch script model to optimize.");
C10_DEFINE_string(
    input_dims,
    "",
    "Alternate to input_files, if all inputs are simple "
    "float TensorCPUs, specify the dimension using comma "
    "separated numbers. If multiple input needed, use "
    "semicolon to separate the dimension of different "
    "tensors.");
C10_DEFINE_string(
    output,
    "",
    "Name of the output model to be saved.");

namespace {
std::vector<std::string>
split(char separator, const std::string& string, bool ignore_empty = true) {
  std::vector<std::string> pieces;
  std::stringstream ss(string);
  std::string item;
  while (getline(ss, item, separator)) {
    if (!ignore_empty || !item.empty()) {
      pieces.push_back(std::move(item));
    }
  }
  return pieces;
}

std::vector<std::vector<int64_t>> parse_input_shapes() {
  CAFFE_ENFORCE_GE(FLAGS_input_dims.size(), 0, "Input dims must be specified.");
  std::vector<std::string> input_dims_list = split(';', FLAGS_input_dims);
  std::vector<std::vector<int64_t>> inputs;
  for (size_t i = 0; i < input_dims_list.size(); ++i) {
    auto input_dims_str = split(',', input_dims_list[i]);
    std::vector<int64_t> input_dims;
    for (const auto& s : input_dims_str) {
      input_dims.push_back(c10::stoi(s));
    }
    inputs.push_back(input_dims);
  }
  return inputs;
}
}

int main(int argc, char** argv) {
  c10::SetUsageMessage(
    "\nRun nnc compiler for pytorch model. Example usage:\n"
    "./nnc_for_mobile"
    " --model=<model_file>"
    " [--output=<output_file_name>]"
  );

  if (!c10::ParseCommandLineFlags(&argc, &argv)) {
    std::cerr << "Failed to parse command line flags!" << std::endl;
    std::cout << c10::UsageMessage() << std::endl;
    return 1;
  }

  CAFFE_ENFORCE(FLAGS_model != "", c10::UsageMessage());

  std::string output_model_name =
    FLAGS_model.substr(0, FLAGS_model.find(".")) + "_compiled.ptl";

  if (FLAGS_output != "") {
    output_model_name = FLAGS_output;
  }

  auto m = torch::jit::load(FLAGS_model);
  m.eval();
  auto frozen_m = torch::jit::freeze_module(m.clone());

  c10::Dict<c10::IValue, c10::IValue> compile_spec(c10::StringType::get(), c10::AnyType::get());
  c10::Dict<c10::IValue, c10::IValue> method_spec(c10::StringType::get(), c10::AnyType::get());
  auto input_shapes = parse_input_shapes();
  method_spec.insert("sizes", input_shapes[0]);  // TODO: support multiple inputs
  compile_spec.insert("forward", method_spec);
  auto any_dict_ty = c10::DictType::create(c10::StringType::get(), c10::AnyType::get());

  auto compiled_module = torch::jit::detail::codegen_backend_module("nnc", frozen_m, compile_spec, any_dict_ty);
  compiled_module._save_for_mobile(output_model_name);
  std::cout << "The compiled model was saved to " << output_model_name << std::endl;
  return 0;
}
