#include <torch/csrc/lite_interpreter/instruction_executor.h>
#include <aten/src/ATen/core/dispatch/Dispatcher.h>

namespace torch {
namespace jit {

InstructionExecutor::InstructionExecutor(std::shared_ptr<GenericInstructionList> ins_list)
    : ins_list(ins_list) {
  size_t register_size = 0;
  for (const auto& ins : ins_list->instructions) {
    for (const auto& input : ins.inputs) {
      register_size = std::max(register_size, input.unique_id);
    }
  }
  registers.resize(register_size + 1, 0);
}

void InstructionExecutor::loadTensorsFromRegisters(const std::vector<Variable>& inputs, Stack& stack) {
  for (const Variable& input : inputs) {
    int reg = input.unique_id;
    // std::cout << "push reg[" << reg << "];\n" << registers[reg] << "\n\n";
    if (input.free_flag) {
      stack.push_back(std::move(registers[reg]));
    } else {
      stack.push_back(registers[reg]);
    }
  }
}

IValue InstructionExecutor::run(Stack& stack) {
  auto& instructions = ins_list->instructions;
  size_t last = instructions.size();

  while (pc < last) {
    auto& inst = instructions[pc];
    std::cout << "executing " << pc << ": " << inst.name << std::endl;
    loadTensorsFromRegisters(inst.inputs, stack);

    std::cout << "stack:" << std::endl;
    for (auto val : stack) {
      std::cout << val << ", " << (int)val.isTensor() << std::endl;
    }

    // Currently we cannot pass constants to c10 kernels. One work-around
    // is to register an operator for each constant. It may also make sense to
    // directly push constants to stack, without goint through the operator
    // registration route.
    if (inst.name == "prim::Load___") {
      for (const auto& attr : inst.attributes) {
        stack.push_back(attr);
      }
    }
    else if (inst.name == "prim::Constant___") {
      if (inst.attributes.empty()) {
        throw std::runtime_error("No values available for constant operator.");
      }
      stack.push_back(inst.attributes[0]);
    }
    else if (inst.name == "prim::Drop___") {
      drop(stack, inst.inputs.size());
    }
    else {
      auto fc = c10::Dispatcher::singleton().findSchema(inst.name.c_str(), inst.overload_name.c_str());
      assert(fc.has_value());
      auto kernel = c10::Dispatcher::singleton().lookup(fc.value(), &stack);
      kernel.call(&stack);
    }

    for (int i = inst.outputs.size() - 1; i >= 0; --i) {
      int reg = inst.outputs[i].unique_id;
      registers[reg] = pop(stack);
      std::cout << "pop reg[" << reg << "];\n" << registers[reg] << "\n";
    }
    ++pc;
  }

  return stack.front();
}

}
}
