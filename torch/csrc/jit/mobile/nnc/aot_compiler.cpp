#include <torch/csrc/jit/mobile/nnc/aot_compiler.h>

#include <ATen/Functions.h>
#include <ATen/NativeFunctions.h>
#include <torch/csrc/jit/ir/ir.h>
#include <torch/csrc/jit/jit_log.h>
#include <torch/csrc/jit/passes/constant_propagation.h>
#include <torch/csrc/jit/passes/dead_code_elimination.h>
#include <torch/csrc/jit/passes/peephole.h>
#include <torch/csrc/jit/passes/remove_mutation.h>
#include <torch/csrc/jit/passes/shape_analysis.h>
#include <torch/csrc/jit/passes/symbolic_shape_analysis.h>
#include <torch/csrc/jit/tensorexpr/graph_opt.h>
#include <torch/csrc/jit/tensorexpr/ir.h>
#include <torch/csrc/jit/tensorexpr/kernel.h>

using namespace torch::jit;
using namespace torch::jit::tensorexpr;

namespace torch {
namespace jit {
namespace mobile {
namespace nnc {

std::vector<int64_t> getConstSizes(const BufPtr b) {
  std::vector<int64_t> r;
  for (const auto& dim : b->dims()) {
    LongImmPtr imm_dim = to<LongImm>(dim);
    // TODO: assert it's actually immediate
    int64_t s = imm_dim->value();
    r.push_back(s);
  }
  return r;
}

void compileFunction(
    std::shared_ptr<tensorexpr::TensorExprKernel> kernel,
    Function* func) {
  std::vector<at::Tensor> parameters;

  auto const_descriptors = kernel->getConstantDescriptors();
  for (const auto& cd : const_descriptors) {
    auto sizes = getConstSizes(cd.buf);
    at::Tensor const_tensor = at::from_blob(cd.ptr, sizes).clone();
    parameters.push_back(const_tensor);
  }
  func->set_parameters(c10::impl::toList(c10::List<at::Tensor>(parameters)));

  MemoryPlan plan;
  plan.buffer_sizes_ = {}; // temp_sizes_;
  // TODO: implement prealloc optimization and fill in temp_sizes
  func->set_memory_plan(plan);

  int64_t n_inputs = kernel->graph()->inputs().size();
  int64_t n_outputs = kernel->graph()->outputs().size();
  std::vector<OutputSpec> out_spec;
  for (int64_t idx = n_inputs; idx < n_inputs + n_outputs; idx++) {
    const auto& ba = kernel->getBufferArgs()[idx];
    OutputSpec output;
    output.sizes_ = getConstSizes(ba.buf());
    // TODO: assert the output is a buffer and not a scalar
    // TODO: use actual dtype
    output.dtype_ = c10::ScalarType::Float;
    out_spec.push_back(output);
  }
  func->set_output_specs(out_spec);
}

std::pair<std::unique_ptr<Function>, const std::string> aotCompile(
    const std::string& method_name,
    std::shared_ptr<Graph>& g,
    const std::vector<int64_t>& sizes) {
  auto g2 = g->copy();
  GRAPH_DEBUG("Input sizes ", sizes);

  RemoveTensorMutation(g);
  EliminateDeadCode(g->block());
  g = tensorexpr::removeUnusedSelfArgument(g);
  GRAPH_DUMP("graph before shape propagation ", g);

  std::vector<c10::optional<at::Tensor>> example_inputs = {at::rand(sizes)};
  tensorexpr::annotateInputShapes(g, example_inputs);

  PropagateShapesOnGraph(g);
  PeepholeOptimize(g, false);
  ConstantPropagation(g);
  PropagateShapesOnGraph(g);
  GRAPH_DUMP("graph after shape propagation ", g);

  g = g2;

  auto func = std::make_unique<Function>();
  func->set_name(method_name);

  InputSpec input;
  input.sizes_ = sizes;
  input.dtype_ = c10::ScalarType::Float;
  func->set_input_specs({input});

  // Summary:
  // Two things to fix:
  //  1) Need to pass in triple/cpu/attrs to LLVMCodegen instead of using host's.
  //  2) Make step 1 platform neutral, so that the 'Function' is also platform
  //     neutral and can be shared among armv7/x86/etc.

  // Step 1: generate platform-neutral function.
  // Internally the line below calls TensorExprKernel::compile(),
  // which calls CreateCodeGen(), which inits LLVMCodeGen() and
  // LLVMCodeGenImpl(), which detects and makes use of the local-host
  // architecture to generate the LLVM assembly, which is technically
  // WRONG!
  std::shared_ptr<tensorexpr::TensorExprKernel> kernel =
      std::make_shared<tensorexpr::TensorExprKernel>(g);

  compileFunction(kernel, func.get());

  // Step 2: generate platform-specific assemblies.
  for (auto architecture : supported_architectures) {
    // Ideally, we should call platform specific CreateCodeGen() here.
    // And all the work we do in Step 1 do not depend on CreateCodeGen(), i.e.
    // entirely platform neutral.
    const std::string compiled_assembly = kernel->getCodeText(architecture);
    assembles[architecture] = std::make_pair(std::move(func), compiled_assembly);
  }
  return assembles;
}

} // namespace nnc
} // namespace mobile
} // namespace jit
} // namespace torch
