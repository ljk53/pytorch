#include <ATen/core/op_registration/op_registration.h>
#include <ATen/ATen.h>
#include <ATen/core/Type.h>
#include <ATen/core/stack.h>

using Stack = std::vector<c10::IValue>;
using torch::jit::peek;
using torch::jit::drop;
using torch::jit::pack;

static auto registry0 = c10::RegisterOperators().op(
  "aten::matmul",
  c10::kernel<decltype(at::matmul), &at::matmul>(),
  c10::dispatchKey(at::CPUTensorId())
).op(
  "aten::add",
  c10::kernel([](at::Tensor a, at::Tensor b, at::Scalar c) ->at::Tensor {
    return at::add(a, b, c);
  }),
  c10::dispatchKey(at::CPUTensorId())
).op(
    "prim::Load",
    c10::kernel([]() {
    })
).op(
    "prim::Store",
    c10::kernel([]() {
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
//    c10::kernel<MyKernel>(6)
//);
