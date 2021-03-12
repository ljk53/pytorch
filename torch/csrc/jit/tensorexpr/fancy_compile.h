#pragma once

#include <torch/csrc/WindowsTorchApiMacro.h>
#include <torch/csrc/jit/ir/ir.h>

namespace torch {
namespace jit {

namespace tensorexpr {
TORCH_API c10::IValue fancy_compile(
    std::shared_ptr<Graph>& subgraph,
    const std::vector<int64_t>& sizes);

} // namespace tensorexpr
} // namespace jit
} // namespace torch
