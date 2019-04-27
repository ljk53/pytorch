#include <torch/csrc/jit/instruction_executor.h>
#include <aten/core/dispatch/Dispatcher.h>

namespace torch {
namespace jit {

void InstructionExecutor::loadTensorsFromRegisters(const UseList& uses, Stack& stack) {
  for (int i = 0; i < uses.values.size; i++) {
    int reg = get(uses.values, i);
    // std::cout << "push reg[" << reg << "];\n" << registers[reg] << "\n\n";
    if (get(uses.free_flags, i)) {
      stack.push_back(std::move(registers[reg]));
    } else {
      stack.push_back(registers[reg]);
    }
  }
}

bool InstructionExecutor::run(Stack& stack) {
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
    if (inst.name == "prim::Constant") {
      if (inst.attributes.empty()) {
        throw std::runtime_error("No values available for constant operator.");
      }
      stack.push_back(inst.attributes[0]);
    }
    else {
      auto fc = c10::Dispatcher::singleton().findSchema(inst.name.c_str(), inst.overload_name.c_str());
      assert(fc.has_value());
      auto kernel = c10::Dispatcher::singleton().lookup(fc.value(), &stack);
      kernel.call(&stack);
    }

    for (int i = inst.outputs.size - 1; i >= 0; --i) {
      int reg = get(inst.outputs, i);
      registers[reg] = pop(stack);
      std::cout << "pop reg[" << reg << "];\n" << registers[reg] << "\n";
    }
    ++pc;
  }
}

}
}
