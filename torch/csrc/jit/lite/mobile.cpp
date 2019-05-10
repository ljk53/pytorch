#include "torch/script.h"
#include "torch/csrc/autograd/grad_mode.h"
#include "mobile.h"

static at::Tensor input;
static at::Tensor output;
static std::shared_ptr<torch::jit::script::Module> module;

void allocate_input_buffer(int c, int h, int w) {
  torch::autograd::AutoGradMode guard(false);
  input = torch::zeros({1, c, h, w});
}

float* input_buffer() {
  return input.data<float>();
}

float* output_buffer() {
  return output.data<float>();
}

bool is_model_loaded() {
  return !!module;
}

void load_model(std::istream& input) {
  torch::autograd::AutoGradMode guard(false);
  module = torch::jit::load(input);
}

void run_model() {
  torch::autograd::AutoGradMode guard(false);
  std::vector<torch::jit::IValue> inputs{input};
  output = module->forward(inputs).toTensor();
}

int main(int argc, const char* argv[]) {
  if (argc != 2) {
    std::cerr << "usage: example-app <path-to-exported-script-module>\n";
    return -1;
  }
  std::ifstream input(argv[1]);
  load_model(input);
  std::cout << (is_model_loaded() ? "OK" : "Failed") << std::endl;
  allocate_input_buffer(3, 227, 227);
  for (int i = 0; i < 3 * 227 * 227; i++)
    input_buffer()[i] = 1.;
  run_model();
  for (int i = 0; i < 5; i++)
    std::cout << output_buffer()[i] << " ";
  std::cout << std::endl;
}
