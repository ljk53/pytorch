#include <torch/csrc/jit/mobile/import.h>
#include <torch/csrc/jit/mobile/module.h>
#include <torch/torch.h>

#include <chrono>
#include <unordered_set>
using namespace std::chrono;

C10_DEFINE_string(model, "", "The given torch script model to test.");
C10_DEFINE_string(
    input_dims,
    "",
    "Alternate to input_files, if all inputs are simple "
    "float TensorCPUs, specify the dimension using comma "
    "separated numbers. If multiple input needed, use "
    "semicolon to separate the dimension of different "
    "tensors.");
C10_DEFINE_int(warmup, 0, "The number of iterations to warm up.");
C10_DEFINE_int(iter, 10, "The number of iterations to run.");

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

std::vector<c10::IValue> create_inputs() {
  CAFFE_ENFORCE_GE(FLAGS_input_dims.size(), 0, "Input dims must be specified.");
  std::vector<std::string> input_dims_list = split(';', FLAGS_input_dims);
  std::vector<c10::IValue> inputs;
  for (size_t i = 0; i < input_dims_list.size(); ++i) {
    auto input_dims_str = split(',', input_dims_list[i]);
    std::vector<int64_t> input_dims;
    for (const auto& s : input_dims_str) {
      input_dims.push_back(c10::stoi(s));
    }
    inputs.push_back(
        torch::ones(
            input_dims,
            at::TensorOptions(at::ScalarType::Float)));
  }
  return inputs;
}

} // namespace

int main(int argc, char* argv[]) {
  c10::SetUsageMessage(
    "Run speed benchmark for lite-interpreter model.\n"
    "Example usage:\n"
    "./test_mobile_nnc"
    " --model=<model_file>"
    " --warmup=5"
    " --iter=20");
  if (!c10::ParseCommandLineFlags(&argc, &argv)) {
    std::cerr << "Failed to parse command line flags!" << std::endl;
    return 1;
  }
  std::vector<c10::IValue> inputs = create_inputs();

  at::AutoNonVariableTypeMode nonVarTypeModeGuard(true);
  torch::autograd::AutoGradMode guard(false);
  auto module = torch::jit::_load_for_mobile(FLAGS_model);

  std::cout << "Result: " << module.forward(inputs) << std::endl;

  std::cout << "Running warmup runs." << std::endl;
  CAFFE_ENFORCE(
      FLAGS_warmup >= 0,
      "Number of warm up runs should be non negative, provided ",
      FLAGS_warmup,
      ".");
  for (int i = 0; i < FLAGS_warmup; ++i) {
    module.forward(inputs);
  }

  std::cout << "Main runs." << std::endl;
  CAFFE_ENFORCE(
      FLAGS_iter >= 0,
      "Number of main runs should be non negative, provided ",
      FLAGS_iter,
      ".");

  auto start = high_resolution_clock::now();
  for (int i = 0; i < FLAGS_iter; ++i) {
    module.forward(inputs);
  }
  auto stop = high_resolution_clock::now();
  auto duration = duration_cast<microseconds>(stop - start).count();
  std::cout << "Main run finished. Microseconds per iter: "
            << duration / FLAGS_iter
            << ". Iters per second: " << 1000.0 * 1000 * FLAGS_iter / duration
            << std::endl;

  return 0;
}
