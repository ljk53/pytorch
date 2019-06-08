#include <ATen/core/op_registration/op_registration.h>
#include "torch/csrc/jit/custom_operator.h"
#include <ATen/ATen.h>
#include <ATen/core/Type.h>
#include <ATen/core/stack.h>

using Stack = std::vector<c10::IValue>;
using torch::jit::peek;
using torch::jit::drop;
using torch::jit::pack;

static auto registry0 = torch::RegisterOperators().op(
  "aten::matmul",
  torch::RegisterOperators::options().kernel<decltype(at::matmul), &at::matmul>(at::CPUTensorId())
).op(
  "aten::add_Tensor_Tensor_Scalar__Tensor",
  torch::RegisterOperators::options().kernel(at::CPUTensorId(),
  [](at::Tensor a, at::Tensor b, at::Scalar c) ->at::Tensor {
    return at::add(a, b, c);
  })
).op(
  "aten::add_Tensor_Scalar_Scalar__Tensor",
  torch::RegisterOperators::options().kernel(at::CPUTensorId(),
  [](at::Tensor a, at::Scalar b, at::Scalar c) ->at::Tensor {
    return at::add(a, b, c);
  })
).op(
  "aten::add__Tensor_Tensor_Scalar__Tensor",
  torch::RegisterOperators::options().kernel(at::CPUTensorId(),
  [](at::Tensor a, at::Tensor b, at::Scalar c) ->at::Tensor {
    return at::add(a, b, c);
  })
//).op(
//  "aten::adaptive_avg_pool2d_Tensor_int[]__Tensor",
//  torch::RegisterOperators::options().kernel(at::CPUTensorId(),
//  [](at::Tensor a, c10::IntArrayRef b) ->at::Tensor {
//    return at::adaptive_avg_pool2d(a, b);
//  })
).op(
  "aten::mm_Tensor_Tensor__Tensor",
  torch::RegisterOperators::options().kernel(at::CPUTensorId(),
  [](at::Tensor a, at::Tensor b) ->at::Tensor {
    return at::mm(a, b);
  })
//).op(
//  "aten::_convolution_Tensor_Tensor_Tensor?_int[]_int[]_int[]_bool_int[]_int_bool_bool_bool__Tensor",
//  torch::RegisterOperators::options().kernel<decltype(at::_convolution),
//  &at::_convolution>(at::CPUTensorId())
// ).op(
//   "aten::batch_norm_Tensor_Tensor?_Tensor?_Tensor?_Tensor?_bool_float_float_bool__Tensor",
//   torch::RegisterOperators::options().kernel<decltype(at::batch_norm), &at::batch_norm>(at::CPUTensorId())
// ).op(
//   "aten::max_pool2d_with_indices_Tensor_int[]_int[]_int[]_int[]_bool__Tensor_Tensor",
//   torch::RegisterOperators::options().kernel<decltype(at::max_pool2d_with_indices),
//   &at::max_pool2d_with_indices>(at::CPUTensorId())
).op(
  "aten::relu_Tensor__Tensor",
  torch::RegisterOperators::options().kernel<decltype(at::relu), &at::relu>(at::CPUTensorId())
).op(
  "aten::t_Tensor__Tensor",
  torch::RegisterOperators::options().kernel<decltype(at::t), &at::t>(at::CPUTensorId())
).op(
  "aten::size_Tensor_int__int",
  torch::RegisterOperators::options().kernel<decltype(at::size), &at::size>(at::CPUTensorId())
// ).op(
//   "aten::view_Tensor_int[]__Tensor",
//   torch::RegisterOperators::options().kernel(at::CPUTensorId(),
//   [](at::Tensor a, c10::IntArrayRef list) ->at::Tensor {
//     return a.view(list);
//   })
).op(
  "prim::Load___",
  torch::RegisterOperators::options().kernel(at::CPUTensorId(),[]() {
  })
).op(
  "prim::Store___",
  torch::RegisterOperators::options().kernel(at::CPUTensorId(),[]() {
  })
);


//class MyKernel : public OperatorKernel {
// public:
//  MyKernel(int value): value_(value) {}
//  int operator()() {
//    return value_;
//  }
//};

//static auto registry2 = c10::RegisterOperators().op(
//    "aten::constant6",
//    torch::RegisterOperators::options().kernel<MyKernel>(6)
//);
