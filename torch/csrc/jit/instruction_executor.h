#pragma once

#include <torch/csrc/jit/instruction.h>

namespace torch {
namespace jit {

class InstructionExecutor final {
 public:
  InstructionExecutor(std::shared_ptr<InstructionList> ins_list)
      : ins_list(ins_list),
        registers(ins_list->register_size) {}
  bool run(Stack& stack);
 private:
  int get(const ListHandle<int>& list, int i) {
    return ins_list->int_data[list.start + i];
  };
  bool get(const ListHandle<bool>& list, int i) {
    return ins_list->bool_data[list.start + i];
  }
  void loadTensorsFromRegisters(const UseList& uses, Stack& stack);

  size_t pc = 0;
  std::shared_ptr<InstructionList> ins_list;
  std::vector<IValue> registers;
};

}
}
