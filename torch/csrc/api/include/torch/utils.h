#pragma once

//#include <torch/csrc/autograd/grad_mode.h>

#include <cstdint>

namespace torch {
#if 0
using autograd::AutoGradMode;

// A RAII, thread local (!) guard that stops future operations from building
// gradients.
struct TORCH_API NoGradGuard : public AutoGradMode {
  NoGradGuard() : AutoGradMode(/*enabled=*/false) {}
};
#endif

struct TORCH_API NoGradGuard {};

/// Sets the global random seed for all newly created CPU and CUDA tensors.
using at::manual_seed;
} // namespace torch
