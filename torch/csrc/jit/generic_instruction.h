#pragma once
//#include <c10/util/Optional.h>
#include <memory>
#include <vector>

//#include <torch/csrc/WindowsTorchApiMacro.h>
#include <ATen/core/ivalue.h>
#include <torch/csrc/jit/source_range.h>
#include <ATen/core/stack.h>
#include <ATen/core/interned_strings.h>

namespace torch {
namespace jit {

struct Variable {
  size_t unique_id;
  bool free_flag;
};

struct GenericInstruction {
  // For C10 dispatcher and debugging
  std::string name;
  std::string overload_name;
  std::vector<Variable> inputs;
  std::vector<Variable> outputs;
  // To build the link between the instruction and constants.
  std::vector<c10::IValue> attributes;
};

struct GenericInstructionList {
  std::vector<GenericInstruction> instructions;
  std::vector<c10::IValue> tensors;
};

} // namespace jit
} // namespace torch
