#include <torch/csrc/jit/import_instructions.h>
#include <torch/csrc/jit/instruction_executor.h>
#include <torch/script.h> // One-stop header.

#include <iostream>
#include <memory>

int main(int argc, const char* argv[]) {
  if (argc != 2) {
    std::cerr << "usage: example-app <path-to-exported-script-module>\n";
    return -1;
  }

  std::shared_ptr<torch::jit::InstructionList> list = torch::jit::loadInstructionList(argv[1]);

  std::vector<c10::IValue> inputs;
  inputs.push_back(torch::ones({1, 2}));

  torch::jit::InstructionExecutor executor(list);
  executor.run(inputs);
////  inputs.push_back(torch::ones({64, 100}));
////  inputs.push_back(torch::ones({1, 3, 224, 224}));

//  at::Tensor output = module->forward(inputs).toTensor();
//  std::cout << output.slice(/*dim=*/1, /*start=*/0, /*end=*/5) << std::endl;
}
