#pragma once
//#include <c10/util/Optional.h>
#include <memory>
#include <vector>

//#include <torch/csrc/WindowsTorchApiMacro.h>
#include <ATen/core/ivalue.h>
#include <torch/csrc/jit/source_location.h>
#include <ATen/core/stack.h>
#include <ATen/core/interned_strings.h>

namespace torch {
namespace jit {

// The interpreter run Graphs with Tensor inputs and Tensor outputs
// a separate component in the autograd handles unwrapping and wrapping
// variable objects for use in the interpreter.

using Stack = std::vector<c10::IValue>;
using c10::ivalue::Future;
using c10::ivalue::Tuple;

// We need some lists for inputs and outputs. To keep all the memory
// contiguous we allocate a single vector and use offsets into the vector
// which are stored in the ListHandle struct
// start is an offset into int_data of Code for ListHandle<int>
// and bool_data of Code for ListHandle<bool>
template <typename T>
struct ListHandle {
  int start;
  int size;
};

struct UseList {
  // values to be used
  ListHandle<int> values;
  // boolean flags indicating whether to free the Tensor after this use
  ListHandle<bool> free_flags;
};

// one instruction plus meta-data
// NOLINTNEXTLINE(cppcoreguidelines-pro-type-member-init)
struct Instruction {
  Operation callback;
  UseList inputs;
  ListHandle<int> outputs;
  // Short-term. To build the link between the instruction and constants.
  std::vector<c10::IValue> attributes;
  std::string name; // For debugging purpose.
  std::string overload_name;
  c10::Symbol debug_name; // used in dump to understand the generated code
  std::shared_ptr<SourceLocation> debug_location; // for error reporting
};

struct InstructionList {
  std::vector<Instruction> instructions;
  std::vector<c10::IValue> tensors;
  std::vector<int> int_data;
  std::vector<bool> bool_data;
  size_t register_size;
};

} // namespace jit
} // namespace torch
