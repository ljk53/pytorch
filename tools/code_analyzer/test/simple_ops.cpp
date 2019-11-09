#include <iostream>

#include <c10/core/Scalar.h>
#include <c10/core/Storage.h>
#include <ATen/Tensor.h>
#include <c10/core/TensorOptions.h>
#include <ATen/core/op_registration/op_registration.h>

namespace at {

namespace {

Tensor call_AA_op(const Tensor& self) {
  static c10::OperatorHandle op = c10::Dispatcher::singleton()
      .findSchema({"aten::AA_op", ""}).value();
  return c10::Dispatcher::singleton().callUnboxedOnly<Tensor, const Tensor&>(
      op, self, self);
}

Tensor helper1(const Tensor& self) {
  return call_AA_op(self);
}

}

Tensor AA_op(const Tensor& self) {
  std::cout << "AA op" << std::endl;
  return self;
}

Tensor BB_op(const Tensor& self) {
  std::cout << "BB op" << std::endl;
  return helper1(self);
}

Tensor CC_op(const Tensor& self) {
  std::cout << "CC op" << std::endl;
  return call_AA_op(self);
}

namespace {
auto registerer = torch::RegisterOperators()
  .op(torch::RegisterOperators::options()
    .schema("aten::AA_op(Tensor self) -> Tensor")
    .catchAllKernel<Tensor (const Tensor&)>(&AA_op)
    .aliasAnalysis(c10::AliasAnalysisKind::FROM_SCHEMA))
  .op(torch::RegisterOperators::options()
    .schema("aten::BB_op(Tensor self) -> Tensor")
    .catchAllKernel<Tensor (const Tensor&)>(&BB_op)
    .aliasAnalysis(c10::AliasAnalysisKind::FROM_SCHEMA))
  .op(torch::RegisterOperators::options()
    .schema("aten::CC_op(Tensor self) -> Tensor")
    .impl_unboxedOnlyKernel<Tensor (const Tensor&), &CC_op>(TensorTypeId::CPUTensorId)
    .aliasAnalysis(c10::AliasAnalysisKind::FROM_SCHEMA))
  ;
}

}
