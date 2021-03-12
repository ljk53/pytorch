#include <torch/csrc/jit/backends/backend.h>
#include <torch/csrc/jit/tensorexpr/fancy_compile.h>
#include <torch/csrc/jit/tensorexpr/external_functions.h>

extern "C" {
int linear_wrapper(void** input);
int mobilenetv3_wrapper(void** input);

// HACK to declare the extern functions with C linkage.
#define DECLARE_EXTERN_FUN(NAME)      \
void NAME(                            \
    int64_t bufs_num,                 \
    void** buf_data,                  \
    int64_t* buf_ranks,               \
    int64_t* buf_dims,                \
    int8_t* buf_dtypes,               \
    int64_t args_num,                 \
    int64_t* extra_args) {            \
  torch::jit::tensorexpr::NAME(       \
      bufs_num,                       \
      buf_data,                       \
      buf_ranks,                      \
      buf_dims,                       \
      buf_dtypes,                     \
      args_num,                       \
      extra_args);                    \
}                                     \

FOR_ALL_EXTERN_FUN(DECLARE_EXTERN_FUN)
#undef DECLARE_EXTERN_FUN
}

namespace torch {
namespace jit {

namespace {
std::vector<int64_t> get_input_sizes_for_method(
    const c10::Dict<c10::IValue, c10::IValue>& method_compile_spec,
    const std::string& method_name) {
  return method_compile_spec.at(method_name).toGenericDict().at("sizes").toIntVector();
}
}

class NNCBackend : public PyTorchBackendInterface {
 public:
  // Constructor.
  explicit NNCBackend() {}
  virtual ~NNCBackend() = default;

  bool is_available() override {
#ifdef C10_MOBILE
    return true;
#else
    return false;
#endif
  }

  c10::impl::GenericDict compile(
      c10::IValue processed,
      c10::impl::GenericDict method_compile_spec) override {
    return processed.toGenericDict();
  }

  c10::impl::GenericList execute(
      c10::IValue handle,
      c10::impl::GenericList inputs) override {
    TORCH_INTERNAL_ASSERT(inputs.size() == 1);

    auto dict = handle.toGenericDict();
    auto params = dict.at("parameters").toTensorVector();
    auto temp_sizes = dict.at("temp_sizes").toIntVector();
    auto out_sizes = dict.at("out_sizes").toIntVector();

    IValue input = inputs[0];
    auto input_tensor = input.toTensor();
    auto output = at::empty(
        out_sizes,
        at::TensorOptions().dtype(at::kFloat).layout(at::kStrided).device(at::kCPU).requires_grad(false));

    std::vector<void*> args{input_tensor.data_ptr(), output.data_ptr()};
    // std::cerr << "input shape: " << input_tensor.sizes() << "\n";
    // std::cerr << "output shape: " << output.sizes() << "\n";
    for (const at::Tensor& param : params) {
      args.emplace_back(param.data_ptr());
    //   std::cerr << "param shape: " << param.sizes() << "\n";
    }
    std::vector<std::string> tmps;
    for (auto temp_size : temp_sizes) {
      tmps.emplace_back(temp_size, 0);
      void* p = (void*) tmps.back().c_str();
    //   std::cerr << "alloc size: " << temp_size << " at: " << p << "\n";
      args.emplace_back(p);
    }

    // TODO: dispatch to compiled assembly
    // TODO: check consistency, e.g.: code version, input shape and compiled shape, etc
#ifdef C10_MOBILE
    mobilenetv3_wrapper(args.data());
    // linear_wrapper(args.data());
#else
    TORCH_CHECK(false, "only support execution with mobile build!");
#endif

    c10::List<at::Tensor> output_list;
    output_list.emplace_back(output);
    return c10::impl::toList(output_list);
  }
};

namespace {

#ifndef C10_MOBILE
c10::IValue preprocess(
    const Module& mod,
    const c10::Dict<c10::IValue, c10::IValue>& method_compile_spec) {
  // The output of this process would produce a dictionary
  // Key: method name.
  // Val: compiled blob.
  c10::Dict<c10::IValue, c10::IValue> compiled(StringType::get(), AnyType::get());
  const std::string& method_name = "forward";
  auto method = mod.get_method(method_name);
  auto graph = method.function().graph()->copy();  // shall we copy?
  auto sizes = get_input_sizes_for_method(method_compile_spec, method_name);
  auto blob = torch::jit::tensorexpr::fancy_compile(graph, sizes);
  compiled.insert(method_name, blob);
  return compiled;
}

static auto cls = torch::jit::backend<NNCBackend>(
    "nnc",
    preprocess);
#else
static auto cls =
    torch::class_<NNCBackend>("__backends__", "nnc")
        .def(torch::init<>())
        ._def_unboxed(
            "is_available",
            [](Stack& stack) {
                auto self = pop(stack).toCustomClass<NNCBackend>();
                auto ret = self->is_available();
                push(stack, ret);
            },
            c10::FunctionSchema{
                "is_available",
                /*overload_name=*/"",
                /*arguments=*/{c10::Argument{"self", c10::AnyType::get()}},
                /*returns=*/{c10::Argument{"available", c10::BoolType::get()}}
            })
        ._def_unboxed(
            "compile",
            [](Stack& stack) {
                auto method_compile_spec = pop(stack).toGenericDict();
                auto processed = pop(stack);
                auto self = pop(stack).toCustomClass<NNCBackend>();
                auto ret = self->compile(processed, method_compile_spec);
                push(stack, ret);
            },
            c10::FunctionSchema{
                "compile",
                /*overload_name=*/"",
                /*arguments=*/{
                    c10::Argument{"self", c10::AnyType::get()},
                    c10::Argument{"processed", c10::AnyType::get()},
                    c10::Argument{"method_compile_spec",
                        c10::DictType::create(c10::StringType::get(), c10::AnyType::get())}},
                /*returns=*/{c10::Argument{"handles",
                        c10::DictType::create(c10::StringType::get(), c10::AnyType::get())}}})
        ._def_unboxed(
            "execute",
            [](Stack& stack) {
                auto args = pop(stack);
                auto handle = pop(stack);
                auto self = pop(stack);
                auto backend = self.toCustomClass<NNCBackend>();
                auto res = backend->execute(handle, args.toList());
                push(stack, res);
            },
            c10::FunctionSchema{
                "execute",
                /*overload_name=*/"",
                /*arguments=*/{
                    c10::Argument{"self", c10::AnyType::get()},
                    c10::Argument{"handle", c10::AnyType::get()},
                    c10::Argument{"input",
                        c10::ListType::create(c10::AnyType::get())}},
                /*returns=*/{c10::Argument{"handles",
                        c10::ListType::create(c10::AnyType::get())}}});
#endif

} // namespace

} // namespace jit
} // namespace torch
