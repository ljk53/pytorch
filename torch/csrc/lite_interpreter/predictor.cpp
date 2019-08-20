#include <torch/csrc/lite_interpreter/import_instructions.h>
#include <torch/csrc/jit/generic_instruction.h>
#include <torch/csrc/lite_interpreter/instruction_executor.h>
#include <torch/csrc/jit/ir.h>
#include <torch/script.h> // One-stop header.
#include <fstream>
#include <exception>
#include "predictor.h"
#include <chrono>
using namespace std::chrono;

static at::Tensor input;
static at::Tensor output;
static std::shared_ptr<torch::jit::GenericInstructionList> model;
#define BATCH_SIZE 1
void allocate_input_buffer(int c, int h, int w) {
  input = at::zeros({BATCH_SIZE, c, h, w}, at::dtype(at::kFloat));
}

float* input_buffer() {
  return input.data<float>();
}

float* output_buffer() {
  return output.data<float>();
}

bool is_model_loaded() {
  return !!model;
}

void load_model(std::istream& input) {
  model = torch::jit::loadInstructionList(input);
}

void run_model() {
  auto exec = std::make_shared<torch::jit::InstructionExecutor>(model);
  std::vector<torch::jit::IValue> inputs{input};
  output = exec->run(inputs).toTensor();
}
int main(int argc, const char* argv[]) {
  if (argc != 2) {
    std::cerr << "usage: example-app <path-to-exported-script-module>\n";
    return -1;
  }
  std::ifstream input_file(argv[1]);
  load_model(input_file);
  std::cout << (is_model_loaded() ? "OK" : "Failed") << std::endl;
  allocate_input_buffer(3, 224, 224);

  /*std::ifstream File;
  File.open("./mnist_in0.txt");
  std::cout << " Loading input, batch size " << BATCH_SIZE << std::endl;
  std::cout << "Caffe2Observer {\"type\": \"NET\", \"metric\": \"latency\", \"unit\": \"ms_per_iter\", \"value\": " << 0 << "}" << std::endl;
  for (int j = 0; j < BATCH_SIZE; ++j) {
    for(int i = 0; i < 28*28; ++i)
    {
        float x;
        File >> x;
        input_buffer()[j * 784 + i] = x;
    }
    File.clear();                 // clear fail and eof bits
    File.seekg(0, std::ios::beg);
  }
  input = at::quantize_linear(input, 0.0144, 0, torch::kQUInt8);
  //std::cout << input << std::endl;
  File.close();
  */
  auto start = high_resolution_clock::now();
  std::cout << "Starting time " << std::endl;
  run_model();
  auto stop = high_resolution_clock::now();

  auto duration = duration_cast<milliseconds>(stop - start);
  std::cout << "Time taken for QNNPACK " << duration.count() << std::endl;
  std::cout << "Caffe2Observer {\"type\": \"Total\", \"metric\": \"latency\", \"unit\": \"ms_per_iter\", \"value\": " << duration.count() << "}" << std::endl;
  for (auto it : torch::jit::time_map) {
    std::cout << "Caffe2Observer {\"type\": \""<< it.first << "\", \"metric\": \"latency\", \"unit\": \"ms_per_iter\", \"value\": " << it.second << "}" << std::endl;
  }
  //throw std::runtime_error("Something Bad");
  for (int i = 0; i < 10; i++)
    std::cout << output_buffer()[i] << " ";
  std::cout << std::endl;

  //at::Tensor test = at::full({1,2,2}, 5.5);
  //std::cout << test<< std::endl;
  //auto qz = at::quantize_linear(test, 0.5, 1, torch::kQUInt8);
  //std::cout << qz;
  //return 0;
}
