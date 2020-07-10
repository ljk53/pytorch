#include <c10/core/Scalar.h>
#include <c10/core/MemoryFormat.h>
#include <c10/core/QScheme.h>
#include <c10/macros/Macros.h>
#include <c10/core/TensorOptions.h>
#include <c10/util/intrusive_ptr.h>
#include <ATen/core/DeprecatedTypeProperties.h>
#include <ATen/core/dispatch/Dispatcher.h>
#include <ATen/core/NamedTensor.h>
#include <ATen/core/LegacyTypeDispatch.h>
#include <ATen/quantized/Quantizer.h>
#include <torch/csrc/WindowsTorchApiMacro.h>

#ifdef USE_STATIC_DISPATCH
#include <ATen/TypeDefault.h>
#include <ATen/CPUType.h>
#include <ATen/QuantizedCPUType.h>
#ifdef USE_VULKAN
#include <ATen/VulkanType.h>
#endif
#endif

namespace at {

// This is temporary typedef to enable Quantizer in aten native function API
// we'll remove them when we are actually exposing Quantizer class
// to frontend
using ConstQuantizerPtr = const c10::intrusive_ptr<Quantizer>&;

Tensor Tensor::cpu() const {
  return to(options().device(DeviceType::CPU), /*non_blocking*/ false, /*copy*/ false);
}

// TODO: The Python version also accepts arguments
Tensor Tensor::cuda() const {
  return to(options().device(DeviceType::CUDA), /*non_blocking*/ false, /*copy*/ false);
}

Tensor Tensor::hip() const {
  return to(options().device(DeviceType::HIP), /*non_blocking*/ false, /*copy*/ false);
}

Tensor Tensor::vulkan() const {
  return to(options().device(DeviceType::Vulkan), /*non_blocking*/ false, /*copy*/ false);
}

Tensor Tensor::toType(ScalarType t) const {
  return to(options().dtype(t), /*non_blocking*/ false, /*copy*/ false);
}

// TODO: Deprecate me
Tensor Tensor::toBackend(Backend b) const {
  return to(options().device(backendToDeviceType(b)).layout(layout_from_backend(b)), /*non_blocking*/ false, /*copy*/ false);
}

TensorOptions Tensor::options() const {
  return TensorOptions().dtype(dtype())
                        .device(device())
                        .layout(layout());
}


// aten::backward(Tensor self, Tensor? gradient=None, bool? retain_graph=None, bool create_graph=False) -> ()
void Tensor::backward(const Tensor & gradient, c10::optional<bool> retain_graph, bool create_graph) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
     TypeDefault::backward(const_cast<Tensor&>(*this), gradient, retain_graph, create_graph);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::backward", "")
        .typed<void (const Tensor &, const Tensor &, c10::optional<bool>, bool)>();
    return op.call(const_cast<Tensor&>(*this), gradient, retain_graph, create_graph);
#endif
}

// aten::set_data(Tensor(a!) self, Tensor new_data) -> ()
void Tensor::set_data(const Tensor & new_data) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
     TypeDefault::set_data(const_cast<Tensor&>(*this), new_data);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::set_data", "")
        .typed<void (const Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), new_data);
#endif
}

// aten::data(Tensor self) -> Tensor
Tensor Tensor::data() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::data(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::data", "")
        .typed<Tensor (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::is_leaf(Tensor self) -> bool
bool Tensor::is_leaf() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::is_leaf(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::is_leaf", "")
        .typed<bool (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::output_nr(Tensor self) -> int
int64_t Tensor::output_nr() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::output_nr(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::output_nr", "")
        .typed<int64_t (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::_version(Tensor self) -> int
int64_t Tensor::_version() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::_version(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::_version", "")
        .typed<int64_t (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::requires_grad_(Tensor(a!) self, bool requires_grad=True) -> Tensor(a!)
Tensor & Tensor::requires_grad_(bool requires_grad) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::requires_grad_(const_cast<Tensor&>(*this), requires_grad);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::requires_grad_", "")
        .typed<Tensor & (Tensor &, bool)>();
    return op.call(const_cast<Tensor&>(*this), requires_grad);
#endif
}

// aten::retain_grad(Tensor(a!) self) -> ()
void Tensor::retain_grad() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
     TypeDefault::retain_grad(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::retain_grad", "")
        .typed<void (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::rename_(Tensor(a!) self, Dimname[]? names) -> Tensor(a!)
Tensor & Tensor::rename_(c10::optional<DimnameList> names) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::rename_(const_cast<Tensor&>(*this), names);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::rename_", "")
        .typed<Tensor & (Tensor &, c10::optional<DimnameList>)>();
    return op.call(const_cast<Tensor&>(*this), names);
#endif
}

// aten::rename(Tensor(a) self, Dimname[]? names) -> Tensor(a)
Tensor Tensor::rename(c10::optional<DimnameList> names) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::rename(const_cast<Tensor&>(*this), names);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::rename", "")
        .typed<Tensor (const Tensor &, c10::optional<DimnameList>)>();
    return op.call(const_cast<Tensor&>(*this), names);
#endif
}

// aten::align_to(Tensor(a) self, Dimname[] names) -> Tensor(a)
Tensor Tensor::align_to(DimnameList names) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::align_to(const_cast<Tensor&>(*this), names);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::align_to", "")
        .typed<Tensor (const Tensor &, DimnameList)>();
    return op.call(const_cast<Tensor&>(*this), names);
#endif
}

// aten::align_to.ellipsis_idx(Tensor(a) self, Dimname[] order, int ellipsis_idx) -> Tensor(a)
Tensor Tensor::align_to(DimnameList order, int64_t ellipsis_idx) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::align_to_ellipsis_idx(const_cast<Tensor&>(*this), order, ellipsis_idx);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::align_to", "ellipsis_idx")
        .typed<Tensor (const Tensor &, DimnameList, int64_t)>();
    return op.call(const_cast<Tensor&>(*this), order, ellipsis_idx);
#endif
}

// aten::align_as(Tensor self, Tensor other) -> Tensor
Tensor Tensor::align_as(const Tensor & other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::align_as(const_cast<Tensor&>(*this), other);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::align_as", "")
        .typed<Tensor (const Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::refine_names(Tensor(a) self, Dimname[] names) -> Tensor(a)
Tensor Tensor::refine_names(DimnameList names) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::refine_names(const_cast<Tensor&>(*this), names);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::refine_names", "")
        .typed<Tensor (const Tensor &, DimnameList)>();
    return op.call(const_cast<Tensor&>(*this), names);
#endif
}

// aten::unflatten.Dimname(Tensor self, Dimname dim, int[] sizes, Dimname[] names) -> Tensor
Tensor Tensor::unflatten(Dimname dim, IntArrayRef sizes, DimnameList names) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::unflatten_Dimname(const_cast<Tensor&>(*this), dim, sizes, names);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::unflatten", "Dimname")
        .typed<Tensor (const Tensor &, Dimname, IntArrayRef, DimnameList)>();
    return op.call(const_cast<Tensor&>(*this), dim, sizes, names);
#endif
}

// aten::unflatten.int(Tensor self, int dim, int[] sizes, Dimname[] names) -> Tensor
Tensor Tensor::unflatten(int64_t dim, IntArrayRef sizes, DimnameList names) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::unflatten_int(const_cast<Tensor&>(*this), dim, sizes, names);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::unflatten", "int")
        .typed<Tensor (const Tensor &, int64_t, IntArrayRef, DimnameList)>();
    return op.call(const_cast<Tensor&>(*this), dim, sizes, names);
#endif
}

// aten::abs(Tensor self) -> Tensor
Tensor Tensor::abs() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::abs(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::abs", "")
        .typed<Tensor (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::abs_(Tensor(a!) self) -> Tensor(a!)
Tensor & Tensor::abs_() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::abs_(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::abs_", "")
        .typed<Tensor & (Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::absolute(Tensor self) -> Tensor
Tensor Tensor::absolute() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::absolute(const_cast<Tensor&>(*this));
            break;
        default:
            AT_ERROR("absolute not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::absolute", "")
        .typed<Tensor (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::absolute_(Tensor(a!) self) -> Tensor(a!)
Tensor & Tensor::absolute_() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::absolute_(const_cast<Tensor&>(*this));
            break;
        default:
            AT_ERROR("absolute_ not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::absolute_", "")
        .typed<Tensor & (Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::angle(Tensor self) -> Tensor
Tensor Tensor::angle() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::angle(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::angle", "")
        .typed<Tensor (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::conj(Tensor self) -> Tensor
Tensor Tensor::conj() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::conj(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::conj", "")
        .typed<Tensor (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::acos(Tensor self) -> Tensor
Tensor Tensor::acos() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::acos(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::acos", "")
        .typed<Tensor (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::acos_(Tensor(a!) self) -> Tensor(a!)
Tensor & Tensor::acos_() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::acos_(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::acos_", "")
        .typed<Tensor & (Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::add.Tensor(Tensor self, Tensor other, *, Scalar alpha=1) -> Tensor
Tensor Tensor::add(const Tensor & other, Scalar alpha) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this, other);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::add_Tensor(const_cast<Tensor&>(*this), other, alpha);
            break;
        #ifdef USE_VULKAN
        case Backend::Vulkan:
            return VulkanType::add_Tensor(const_cast<Tensor&>(*this), other, alpha);
            break;
        #endif
        default:
            AT_ERROR("add not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::add", "Tensor")
        .typed<Tensor (const Tensor &, const Tensor &, Scalar)>();
    return op.call(const_cast<Tensor&>(*this), other, alpha);
#endif
}

// aten::add_.Tensor(Tensor(a!) self, Tensor other, *, Scalar alpha=1) -> Tensor(a!)
Tensor & Tensor::add_(const Tensor & other, Scalar alpha) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this, other);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::add__Tensor(const_cast<Tensor&>(*this), other, alpha);
            break;
        default:
            AT_ERROR("add_ not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::add_", "Tensor")
        .typed<Tensor & (Tensor &, const Tensor &, Scalar)>();
    return op.call(const_cast<Tensor&>(*this), other, alpha);
#endif
}

// aten::add.Scalar(Tensor self, Scalar other, Scalar alpha=1) -> Tensor
Tensor Tensor::add(Scalar other, Scalar alpha) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::add_Scalar(const_cast<Tensor&>(*this), other, alpha);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::add", "Scalar")
        .typed<Tensor (const Tensor &, Scalar, Scalar)>();
    return op.call(const_cast<Tensor&>(*this), other, alpha);
#endif
}

// aten::add_.Scalar(Tensor(a!) self, Scalar other, Scalar alpha=1) -> Tensor(a!)
Tensor & Tensor::add_(Scalar other, Scalar alpha) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::add__Scalar(const_cast<Tensor&>(*this), other, alpha);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::add_", "Scalar")
        .typed<Tensor & (Tensor &, Scalar, Scalar)>();
    return op.call(const_cast<Tensor&>(*this), other, alpha);
#endif
}

// aten::addmv(Tensor self, Tensor mat, Tensor vec, *, Scalar beta=1, Scalar alpha=1) -> Tensor
Tensor Tensor::addmv(const Tensor & mat, const Tensor & vec, Scalar beta, Scalar alpha) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::addmv(const_cast<Tensor&>(*this), mat, vec, beta, alpha);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::addmv", "")
        .typed<Tensor (const Tensor &, const Tensor &, const Tensor &, Scalar, Scalar)>();
    return op.call(const_cast<Tensor&>(*this), mat, vec, beta, alpha);
#endif
}

// aten::addmv_(Tensor(a!) self, Tensor mat, Tensor vec, *, Scalar beta=1, Scalar alpha=1) -> Tensor(a!)
Tensor & Tensor::addmv_(const Tensor & mat, const Tensor & vec, Scalar beta, Scalar alpha) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::addmv_(const_cast<Tensor&>(*this), mat, vec, beta, alpha);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::addmv_", "")
        .typed<Tensor & (Tensor &, const Tensor &, const Tensor &, Scalar, Scalar)>();
    return op.call(const_cast<Tensor&>(*this), mat, vec, beta, alpha);
#endif
}

// aten::addr(Tensor self, Tensor vec1, Tensor vec2, *, Scalar beta=1, Scalar alpha=1) -> Tensor
Tensor Tensor::addr(const Tensor & vec1, const Tensor & vec2, Scalar beta, Scalar alpha) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::addr(const_cast<Tensor&>(*this), vec1, vec2, beta, alpha);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::addr", "")
        .typed<Tensor (const Tensor &, const Tensor &, const Tensor &, Scalar, Scalar)>();
    return op.call(const_cast<Tensor&>(*this), vec1, vec2, beta, alpha);
#endif
}

// aten::addr_(Tensor(a!) self, Tensor vec1, Tensor vec2, *, Scalar beta=1, Scalar alpha=1) -> Tensor(a!)
Tensor & Tensor::addr_(const Tensor & vec1, const Tensor & vec2, Scalar beta, Scalar alpha) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::addr_(const_cast<Tensor&>(*this), vec1, vec2, beta, alpha);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::addr_", "")
        .typed<Tensor & (Tensor &, const Tensor &, const Tensor &, Scalar, Scalar)>();
    return op.call(const_cast<Tensor&>(*this), vec1, vec2, beta, alpha);
#endif
}

// aten::all.dim(Tensor self, int dim, bool keepdim=False) -> Tensor
Tensor Tensor::all(int64_t dim, bool keepdim) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::all_dim(const_cast<Tensor&>(*this), dim, keepdim);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::all", "dim")
        .typed<Tensor (const Tensor &, int64_t, bool)>();
    return op.call(const_cast<Tensor&>(*this), dim, keepdim);
#endif
}

// aten::all.dimname(Tensor self, Dimname dim, bool keepdim=False) -> Tensor
Tensor Tensor::all(Dimname dim, bool keepdim) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::all_dimname(const_cast<Tensor&>(*this), dim, keepdim);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::all", "dimname")
        .typed<Tensor (const Tensor &, Dimname, bool)>();
    return op.call(const_cast<Tensor&>(*this), dim, keepdim);
#endif
}

// aten::allclose(Tensor self, Tensor other, float rtol=1e-05, float atol=1e-08, bool equal_nan=False) -> bool
bool Tensor::allclose(const Tensor & other, double rtol, double atol, bool equal_nan) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::allclose(const_cast<Tensor&>(*this), other, rtol, atol, equal_nan);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::allclose", "")
        .typed<bool (const Tensor &, const Tensor &, double, double, bool)>();
    return op.call(const_cast<Tensor&>(*this), other, rtol, atol, equal_nan);
#endif
}

// aten::any.dim(Tensor self, int dim, bool keepdim=False) -> Tensor
Tensor Tensor::any(int64_t dim, bool keepdim) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::any_dim(const_cast<Tensor&>(*this), dim, keepdim);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::any", "dim")
        .typed<Tensor (const Tensor &, int64_t, bool)>();
    return op.call(const_cast<Tensor&>(*this), dim, keepdim);
#endif
}

// aten::any.dimname(Tensor self, Dimname dim, bool keepdim=False) -> Tensor
Tensor Tensor::any(Dimname dim, bool keepdim) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::any_dimname(const_cast<Tensor&>(*this), dim, keepdim);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::any", "dimname")
        .typed<Tensor (const Tensor &, Dimname, bool)>();
    return op.call(const_cast<Tensor&>(*this), dim, keepdim);
#endif
}

// aten::argmax(Tensor self, int? dim=None, bool keepdim=False) -> Tensor
Tensor Tensor::argmax(c10::optional<int64_t> dim, bool keepdim) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::argmax(const_cast<Tensor&>(*this), dim, keepdim);
            break;
        default:
            AT_ERROR("argmax not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::argmax", "")
        .typed<Tensor (const Tensor &, c10::optional<int64_t>, bool)>();
    return op.call(const_cast<Tensor&>(*this), dim, keepdim);
#endif
}

// aten::argmin(Tensor self, int? dim=None, bool keepdim=False) -> Tensor
Tensor Tensor::argmin(c10::optional<int64_t> dim, bool keepdim) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::argmin(const_cast<Tensor&>(*this), dim, keepdim);
            break;
        default:
            AT_ERROR("argmin not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::argmin", "")
        .typed<Tensor (const Tensor &, c10::optional<int64_t>, bool)>();
    return op.call(const_cast<Tensor&>(*this), dim, keepdim);
#endif
}

// aten::acosh(Tensor self) -> Tensor
Tensor Tensor::acosh() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::acosh(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::acosh", "")
        .typed<Tensor (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::acosh_(Tensor(a!) self) -> Tensor(a!)
Tensor & Tensor::acosh_() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::acosh_(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::acosh_", "")
        .typed<Tensor & (Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::asinh(Tensor self) -> Tensor
Tensor Tensor::asinh() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::asinh(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::asinh", "")
        .typed<Tensor (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::asinh_(Tensor(a!) self) -> Tensor(a!)
Tensor & Tensor::asinh_() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::asinh_(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::asinh_", "")
        .typed<Tensor & (Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::atanh(Tensor self) -> Tensor
Tensor Tensor::atanh() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::atanh(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::atanh", "")
        .typed<Tensor (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::atanh_(Tensor(a!) self) -> Tensor(a!)
Tensor & Tensor::atanh_() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::atanh_(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::atanh_", "")
        .typed<Tensor & (Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::as_strided(Tensor(a) self, int[] size, int[] stride, int? storage_offset=None) -> Tensor(a)
Tensor Tensor::as_strided(IntArrayRef size, IntArrayRef stride, c10::optional<int64_t> storage_offset) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::as_strided(const_cast<Tensor&>(*this), size, stride, storage_offset);
            break;
        case Backend::QuantizedCPU:
            return QuantizedCPUType::as_strided(const_cast<Tensor&>(*this), size, stride, storage_offset);
            break;
        default:
            AT_ERROR("as_strided not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::as_strided", "")
        .typed<Tensor (const Tensor &, IntArrayRef, IntArrayRef, c10::optional<int64_t>)>();
    return op.call(const_cast<Tensor&>(*this), size, stride, storage_offset);
#endif
}

// aten::as_strided_(Tensor(a!) self, int[] size, int[] stride, int? storage_offset=None) -> Tensor(a!)
Tensor & Tensor::as_strided_(IntArrayRef size, IntArrayRef stride, c10::optional<int64_t> storage_offset) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::as_strided_(const_cast<Tensor&>(*this), size, stride, storage_offset);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::as_strided_", "")
        .typed<Tensor & (Tensor &, IntArrayRef, IntArrayRef, c10::optional<int64_t>)>();
    return op.call(const_cast<Tensor&>(*this), size, stride, storage_offset);
#endif
}

// aten::asin(Tensor self) -> Tensor
Tensor Tensor::asin() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::asin(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::asin", "")
        .typed<Tensor (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::asin_(Tensor(a!) self) -> Tensor(a!)
Tensor & Tensor::asin_() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::asin_(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::asin_", "")
        .typed<Tensor & (Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::atan(Tensor self) -> Tensor
Tensor Tensor::atan() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::atan(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::atan", "")
        .typed<Tensor (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::atan_(Tensor(a!) self) -> Tensor(a!)
Tensor & Tensor::atan_() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::atan_(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::atan_", "")
        .typed<Tensor & (Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::baddbmm(Tensor self, Tensor batch1, Tensor batch2, *, Scalar beta=1, Scalar alpha=1) -> Tensor
Tensor Tensor::baddbmm(const Tensor & batch1, const Tensor & batch2, Scalar beta, Scalar alpha) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this, batch1, batch2);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::baddbmm(const_cast<Tensor&>(*this), batch1, batch2, beta, alpha);
            break;
        default:
            AT_ERROR("baddbmm not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::baddbmm", "")
        .typed<Tensor (const Tensor &, const Tensor &, const Tensor &, Scalar, Scalar)>();
    return op.call(const_cast<Tensor&>(*this), batch1, batch2, beta, alpha);
#endif
}

// aten::baddbmm_(Tensor(a!) self, Tensor batch1, Tensor batch2, *, Scalar beta=1, Scalar alpha=1) -> Tensor(a!)
Tensor & Tensor::baddbmm_(const Tensor & batch1, const Tensor & batch2, Scalar beta, Scalar alpha) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this, batch1, batch2);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::baddbmm_(const_cast<Tensor&>(*this), batch1, batch2, beta, alpha);
            break;
        default:
            AT_ERROR("baddbmm_ not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::baddbmm_", "")
        .typed<Tensor & (Tensor &, const Tensor &, const Tensor &, Scalar, Scalar)>();
    return op.call(const_cast<Tensor&>(*this), batch1, batch2, beta, alpha);
#endif
}

// aten::bernoulli(Tensor self, *, Generator? generator=None) -> Tensor
Tensor Tensor::bernoulli(c10::optional<Generator> generator) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::bernoulli(const_cast<Tensor&>(*this), generator);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::bernoulli", "")
        .typed<Tensor (const Tensor &, c10::optional<Generator>)>();
    return op.call(const_cast<Tensor&>(*this), generator);
#endif
}

// aten::bernoulli_.Tensor(Tensor(a!) self, Tensor p, *, Generator? generator=None) -> Tensor(a!)
Tensor & Tensor::bernoulli_(const Tensor & p, c10::optional<Generator> generator) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::bernoulli__Tensor(const_cast<Tensor&>(*this), p, generator);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::bernoulli_", "Tensor")
        .typed<Tensor & (Tensor &, const Tensor &, c10::optional<Generator>)>();
    return op.call(const_cast<Tensor&>(*this), p, generator);
#endif
}

// aten::bernoulli_.float(Tensor(a!) self, float p=0.5, *, Generator? generator=None) -> Tensor(a!)
Tensor & Tensor::bernoulli_(double p, c10::optional<Generator> generator) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::bernoulli__float(const_cast<Tensor&>(*this), p, generator);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::bernoulli_", "float")
        .typed<Tensor & (Tensor &, double, c10::optional<Generator>)>();
    return op.call(const_cast<Tensor&>(*this), p, generator);
#endif
}

// aten::bernoulli.p(Tensor self, float p, *, Generator? generator=None) -> Tensor
Tensor Tensor::bernoulli(double p, c10::optional<Generator> generator) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::bernoulli_p(const_cast<Tensor&>(*this), p, generator);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::bernoulli", "p")
        .typed<Tensor (const Tensor &, double, c10::optional<Generator>)>();
    return op.call(const_cast<Tensor&>(*this), p, generator);
#endif
}

// aten::bincount(Tensor self, Tensor? weights=None, int minlength=0) -> Tensor
Tensor Tensor::bincount(const Tensor & weights, int64_t minlength) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this, weights);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::bincount(const_cast<Tensor&>(*this), weights, minlength);
            break;
        default:
            AT_ERROR("bincount not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::bincount", "")
        .typed<Tensor (const Tensor &, const Tensor &, int64_t)>();
    return op.call(const_cast<Tensor&>(*this), weights, minlength);
#endif
}

// aten::bitwise_not(Tensor self) -> Tensor
Tensor Tensor::bitwise_not() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::bitwise_not(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::bitwise_not", "")
        .typed<Tensor (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::bitwise_not_(Tensor(a!) self) -> Tensor(a!)
Tensor & Tensor::bitwise_not_() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::bitwise_not_(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::bitwise_not_", "")
        .typed<Tensor & (Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::logical_not(Tensor self) -> Tensor
Tensor Tensor::logical_not() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::logical_not(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::logical_not", "")
        .typed<Tensor (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::logical_not_(Tensor(a!) self) -> Tensor(a!)
Tensor & Tensor::logical_not_() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::logical_not_(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::logical_not_", "")
        .typed<Tensor & (Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::logical_xor(Tensor self, Tensor other) -> Tensor
Tensor Tensor::logical_xor(const Tensor & other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::logical_xor(const_cast<Tensor&>(*this), other);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::logical_xor", "")
        .typed<Tensor (const Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::logical_xor_(Tensor(a!) self, Tensor other) -> Tensor(a!)
Tensor & Tensor::logical_xor_(const Tensor & other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::logical_xor_(const_cast<Tensor&>(*this), other);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::logical_xor_", "")
        .typed<Tensor & (Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::logical_and(Tensor self, Tensor other) -> Tensor
Tensor Tensor::logical_and(const Tensor & other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::logical_and(const_cast<Tensor&>(*this), other);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::logical_and", "")
        .typed<Tensor (const Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::logical_and_(Tensor(a!) self, Tensor other) -> Tensor(a!)
Tensor & Tensor::logical_and_(const Tensor & other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::logical_and_(const_cast<Tensor&>(*this), other);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::logical_and_", "")
        .typed<Tensor & (Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::logical_or(Tensor self, Tensor other) -> Tensor
Tensor Tensor::logical_or(const Tensor & other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::logical_or(const_cast<Tensor&>(*this), other);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::logical_or", "")
        .typed<Tensor (const Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::logical_or_(Tensor(a!) self, Tensor other) -> Tensor(a!)
Tensor & Tensor::logical_or_(const Tensor & other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::logical_or_(const_cast<Tensor&>(*this), other);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::logical_or_", "")
        .typed<Tensor & (Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::bmm(Tensor self, Tensor mat2) -> Tensor
Tensor Tensor::bmm(const Tensor & mat2) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this, mat2);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::bmm(const_cast<Tensor&>(*this), mat2);
            break;
        default:
            AT_ERROR("bmm not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::bmm", "")
        .typed<Tensor (const Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), mat2);
#endif
}

// aten::ceil(Tensor self) -> Tensor
Tensor Tensor::ceil() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::ceil(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::ceil", "")
        .typed<Tensor (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::ceil_(Tensor(a!) self) -> Tensor(a!)
Tensor & Tensor::ceil_() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::ceil_(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::ceil_", "")
        .typed<Tensor & (Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::chunk(Tensor(a) self, int chunks, int dim=0) -> Tensor(a)[]
std::vector<Tensor> Tensor::chunk(int64_t chunks, int64_t dim) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::chunk(const_cast<Tensor&>(*this), chunks, dim);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::chunk", "")
        .typed<std::vector<Tensor> (const Tensor &, int64_t, int64_t)>();
    return op.call(const_cast<Tensor&>(*this), chunks, dim);
#endif
}

// aten::clamp(Tensor self, Scalar? min=None, Scalar? max=None) -> Tensor
Tensor Tensor::clamp(c10::optional<Scalar> min, c10::optional<Scalar> max) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::clamp(const_cast<Tensor&>(*this), min, max);
            break;
        case Backend::QuantizedCPU:
            return QuantizedCPUType::clamp(const_cast<Tensor&>(*this), min, max);
            break;
        #ifdef USE_VULKAN
        case Backend::Vulkan:
            return VulkanType::clamp(const_cast<Tensor&>(*this), min, max);
            break;
        #endif
        default:
            AT_ERROR("clamp not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::clamp", "")
        .typed<Tensor (const Tensor &, c10::optional<Scalar>, c10::optional<Scalar>)>();
    return op.call(const_cast<Tensor&>(*this), min, max);
#endif
}

// aten::clamp_(Tensor(a!) self, Scalar? min=None, Scalar? max=None) -> Tensor(a!)
Tensor & Tensor::clamp_(c10::optional<Scalar> min, c10::optional<Scalar> max) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::clamp_(const_cast<Tensor&>(*this), min, max);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::clamp_", "")
        .typed<Tensor & (Tensor &, c10::optional<Scalar>, c10::optional<Scalar>)>();
    return op.call(const_cast<Tensor&>(*this), min, max);
#endif
}

// aten::clamp_max(Tensor self, Scalar max) -> Tensor
Tensor Tensor::clamp_max(Scalar max) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::clamp_max(const_cast<Tensor&>(*this), max);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::clamp_max", "")
        .typed<Tensor (const Tensor &, Scalar)>();
    return op.call(const_cast<Tensor&>(*this), max);
#endif
}

// aten::clamp_max_(Tensor(a!) self, Scalar max) -> Tensor(a!)
Tensor & Tensor::clamp_max_(Scalar max) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::clamp_max_(const_cast<Tensor&>(*this), max);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::clamp_max_", "")
        .typed<Tensor & (Tensor &, Scalar)>();
    return op.call(const_cast<Tensor&>(*this), max);
#endif
}

// aten::clamp_min(Tensor self, Scalar min) -> Tensor
Tensor Tensor::clamp_min(Scalar min) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::clamp_min(const_cast<Tensor&>(*this), min);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::clamp_min", "")
        .typed<Tensor (const Tensor &, Scalar)>();
    return op.call(const_cast<Tensor&>(*this), min);
#endif
}

// aten::clamp_min_(Tensor(a!) self, Scalar min) -> Tensor(a!)
Tensor & Tensor::clamp_min_(Scalar min) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::clamp_min_(const_cast<Tensor&>(*this), min);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::clamp_min_", "")
        .typed<Tensor & (Tensor &, Scalar)>();
    return op.call(const_cast<Tensor&>(*this), min);
#endif
}

// aten::contiguous(Tensor(a) self, *, MemoryFormat memory_format=contiguous_format) -> Tensor(a)
Tensor Tensor::contiguous(MemoryFormat memory_format) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::contiguous(const_cast<Tensor&>(*this), memory_format);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::contiguous", "")
        .typed<Tensor (const Tensor &, MemoryFormat)>();
    return op.call(const_cast<Tensor&>(*this), memory_format);
#endif
}

// aten::copy_(Tensor(a!) self, Tensor src, bool non_blocking=False) -> Tensor(a!)
Tensor & Tensor::copy_(const Tensor & src, bool non_blocking) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::copy_(const_cast<Tensor&>(*this), src, non_blocking);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::copy_", "")
        .typed<Tensor & (Tensor &, const Tensor &, bool)>();
    return op.call(const_cast<Tensor&>(*this), src, non_blocking);
#endif
}

// aten::cos(Tensor self) -> Tensor
Tensor Tensor::cos() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::cos(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::cos", "")
        .typed<Tensor (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::cos_(Tensor(a!) self) -> Tensor(a!)
Tensor & Tensor::cos_() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::cos_(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::cos_", "")
        .typed<Tensor & (Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::cosh(Tensor self) -> Tensor
Tensor Tensor::cosh() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::cosh(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::cosh", "")
        .typed<Tensor (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::cosh_(Tensor(a!) self) -> Tensor(a!)
Tensor & Tensor::cosh_() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::cosh_(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::cosh_", "")
        .typed<Tensor & (Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::count_nonzero.dim_IntList(Tensor self, int[] dim) -> Tensor
Tensor Tensor::count_nonzero(IntArrayRef dim) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::count_nonzero_dim_IntList(const_cast<Tensor&>(*this), dim);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::count_nonzero", "dim_IntList")
        .typed<Tensor (const Tensor &, IntArrayRef)>();
    return op.call(const_cast<Tensor&>(*this), dim);
#endif
}

// aten::count_nonzero(Tensor self, int? dim=None) -> Tensor
Tensor Tensor::count_nonzero(c10::optional<int64_t> dim) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::count_nonzero(const_cast<Tensor&>(*this), dim);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::count_nonzero", "")
        .typed<Tensor (const Tensor &, c10::optional<int64_t>)>();
    return op.call(const_cast<Tensor&>(*this), dim);
#endif
}

// aten::cummax(Tensor self, int dim) -> (Tensor values, Tensor indices)
std::tuple<Tensor,Tensor> Tensor::cummax(int64_t dim) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::cummax(const_cast<Tensor&>(*this), dim);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::cummax", "")
        .typed<std::tuple<Tensor,Tensor> (const Tensor &, int64_t)>();
    return op.call(const_cast<Tensor&>(*this), dim);
#endif
}

// aten::cummax.dimname(Tensor self, Dimname dim) -> (Tensor values, Tensor indices)
std::tuple<Tensor,Tensor> Tensor::cummax(Dimname dim) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::cummax_dimname(const_cast<Tensor&>(*this), dim);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::cummax", "dimname")
        .typed<std::tuple<Tensor,Tensor> (const Tensor &, Dimname)>();
    return op.call(const_cast<Tensor&>(*this), dim);
#endif
}

// aten::cummin(Tensor self, int dim) -> (Tensor values, Tensor indices)
std::tuple<Tensor,Tensor> Tensor::cummin(int64_t dim) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::cummin(const_cast<Tensor&>(*this), dim);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::cummin", "")
        .typed<std::tuple<Tensor,Tensor> (const Tensor &, int64_t)>();
    return op.call(const_cast<Tensor&>(*this), dim);
#endif
}

// aten::cummin.dimname(Tensor self, Dimname dim) -> (Tensor values, Tensor indices)
std::tuple<Tensor,Tensor> Tensor::cummin(Dimname dim) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::cummin_dimname(const_cast<Tensor&>(*this), dim);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::cummin", "dimname")
        .typed<std::tuple<Tensor,Tensor> (const Tensor &, Dimname)>();
    return op.call(const_cast<Tensor&>(*this), dim);
#endif
}

// aten::cumprod(Tensor self, int dim, *, ScalarType? dtype=None) -> Tensor
Tensor Tensor::cumprod(int64_t dim, c10::optional<ScalarType> dtype) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::cumprod(const_cast<Tensor&>(*this), dim, dtype);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::cumprod", "")
        .typed<Tensor (const Tensor &, int64_t, c10::optional<ScalarType>)>();
    return op.call(const_cast<Tensor&>(*this), dim, dtype);
#endif
}

// aten::cumprod.dimname(Tensor self, Dimname dim, *, ScalarType? dtype=None) -> Tensor
Tensor Tensor::cumprod(Dimname dim, c10::optional<ScalarType> dtype) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::cumprod_dimname(const_cast<Tensor&>(*this), dim, dtype);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::cumprod", "dimname")
        .typed<Tensor (const Tensor &, Dimname, c10::optional<ScalarType>)>();
    return op.call(const_cast<Tensor&>(*this), dim, dtype);
#endif
}

// aten::cumsum(Tensor self, int dim, *, ScalarType? dtype=None) -> Tensor
Tensor Tensor::cumsum(int64_t dim, c10::optional<ScalarType> dtype) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::cumsum(const_cast<Tensor&>(*this), dim, dtype);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::cumsum", "")
        .typed<Tensor (const Tensor &, int64_t, c10::optional<ScalarType>)>();
    return op.call(const_cast<Tensor&>(*this), dim, dtype);
#endif
}

// aten::cumsum.dimname(Tensor self, Dimname dim, *, ScalarType? dtype=None) -> Tensor
Tensor Tensor::cumsum(Dimname dim, c10::optional<ScalarType> dtype) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::cumsum_dimname(const_cast<Tensor&>(*this), dim, dtype);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::cumsum", "dimname")
        .typed<Tensor (const Tensor &, Dimname, c10::optional<ScalarType>)>();
    return op.call(const_cast<Tensor&>(*this), dim, dtype);
#endif
}

// aten::det(Tensor self) -> Tensor
Tensor Tensor::det() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::det(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::det", "")
        .typed<Tensor (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::diag_embed(Tensor self, int offset=0, int dim1=-2, int dim2=-1) -> Tensor
Tensor Tensor::diag_embed(int64_t offset, int64_t dim1, int64_t dim2) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::diag_embed(const_cast<Tensor&>(*this), offset, dim1, dim2);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::diag_embed", "")
        .typed<Tensor (const Tensor &, int64_t, int64_t, int64_t)>();
    return op.call(const_cast<Tensor&>(*this), offset, dim1, dim2);
#endif
}

// aten::diagflat(Tensor self, int offset=0) -> Tensor
Tensor Tensor::diagflat(int64_t offset) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::diagflat(const_cast<Tensor&>(*this), offset);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::diagflat", "")
        .typed<Tensor (const Tensor &, int64_t)>();
    return op.call(const_cast<Tensor&>(*this), offset);
#endif
}

// aten::diagonal(Tensor(a) self, int offset=0, int dim1=0, int dim2=1) -> Tensor(a)
Tensor Tensor::diagonal(int64_t offset, int64_t dim1, int64_t dim2) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::diagonal(const_cast<Tensor&>(*this), offset, dim1, dim2);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::diagonal", "")
        .typed<Tensor (const Tensor &, int64_t, int64_t, int64_t)>();
    return op.call(const_cast<Tensor&>(*this), offset, dim1, dim2);
#endif
}

// aten::diagonal.Dimname(Tensor(a) self, *, Dimname outdim, Dimname dim1, Dimname dim2, int offset=0) -> Tensor(a)
Tensor Tensor::diagonal(Dimname outdim, Dimname dim1, Dimname dim2, int64_t offset) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::diagonal_Dimname(const_cast<Tensor&>(*this), outdim, dim1, dim2, offset);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::diagonal", "Dimname")
        .typed<Tensor (const Tensor &, Dimname, Dimname, Dimname, int64_t)>();
    return op.call(const_cast<Tensor&>(*this), outdim, dim1, dim2, offset);
#endif
}

// aten::fill_diagonal_(Tensor(a!) self, Scalar fill_value, bool wrap=False) -> Tensor(a!)
Tensor & Tensor::fill_diagonal_(Scalar fill_value, bool wrap) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::fill_diagonal_(const_cast<Tensor&>(*this), fill_value, wrap);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::fill_diagonal_", "")
        .typed<Tensor & (Tensor &, Scalar, bool)>();
    return op.call(const_cast<Tensor&>(*this), fill_value, wrap);
#endif
}

// aten::div.Tensor(Tensor self, Tensor other) -> Tensor
Tensor Tensor::div(const Tensor & other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this, other);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::div_Tensor(const_cast<Tensor&>(*this), other);
            break;
        default:
            AT_ERROR("div not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::div", "Tensor")
        .typed<Tensor (const Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::div_.Tensor(Tensor(a!) self, Tensor other) -> Tensor(a!)
Tensor & Tensor::div_(const Tensor & other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this, other);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::div__Tensor(const_cast<Tensor&>(*this), other);
            break;
        default:
            AT_ERROR("div_ not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::div_", "Tensor")
        .typed<Tensor & (Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::div.Scalar(Tensor self, Scalar other) -> Tensor
Tensor Tensor::div(Scalar other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::div_Scalar(const_cast<Tensor&>(*this), other);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::div", "Scalar")
        .typed<Tensor (const Tensor &, Scalar)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::div_.Scalar(Tensor(a!) self, Scalar other) -> Tensor(a!)
Tensor & Tensor::div_(Scalar other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::div__Scalar(const_cast<Tensor&>(*this), other);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::div_", "Scalar")
        .typed<Tensor & (Tensor &, Scalar)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::dot(Tensor self, Tensor tensor) -> Tensor
Tensor Tensor::dot(const Tensor & tensor) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this, tensor);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::dot(const_cast<Tensor&>(*this), tensor);
            break;
        default:
            AT_ERROR("dot not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::dot", "")
        .typed<Tensor (const Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), tensor);
#endif
}

// aten::new_empty(Tensor self, int[] size, *, ScalarType? dtype=None, Layout? layout=None, Device? device=None, bool? pin_memory=None) -> Tensor
Tensor Tensor::new_empty(IntArrayRef size, const TensorOptions & options) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::new_empty(const_cast<Tensor&>(*this), size, options);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::new_empty", "")
        .typed<Tensor (const Tensor &, IntArrayRef, c10::optional<ScalarType>, c10::optional<Layout>, c10::optional<Device>, c10::optional<bool>)>();
    return op.call(const_cast<Tensor&>(*this), size, optTypeMetaToScalarType(options.dtype_opt()), options.layout_opt(), options.device_opt(), options.pinned_memory_opt());
#endif
}

// aten::new_full(Tensor self, int[] size, Scalar fill_value, *, ScalarType? dtype=None, Layout? layout=None, Device? device=None, bool? pin_memory=None) -> Tensor
Tensor Tensor::new_full(IntArrayRef size, Scalar fill_value, const TensorOptions & options) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::new_full(const_cast<Tensor&>(*this), size, fill_value, options);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::new_full", "")
        .typed<Tensor (const Tensor &, IntArrayRef, Scalar, c10::optional<ScalarType>, c10::optional<Layout>, c10::optional<Device>, c10::optional<bool>)>();
    return op.call(const_cast<Tensor&>(*this), size, fill_value, optTypeMetaToScalarType(options.dtype_opt()), options.layout_opt(), options.device_opt(), options.pinned_memory_opt());
#endif
}

// aten::new_zeros(Tensor self, int[] size, *, ScalarType? dtype=None, Layout? layout=None, Device? device=None, bool? pin_memory=None) -> Tensor
Tensor Tensor::new_zeros(IntArrayRef size, const TensorOptions & options) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::new_zeros(const_cast<Tensor&>(*this), size, options);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::new_zeros", "")
        .typed<Tensor (const Tensor &, IntArrayRef, c10::optional<ScalarType>, c10::optional<Layout>, c10::optional<Device>, c10::optional<bool>)>();
    return op.call(const_cast<Tensor&>(*this), size, optTypeMetaToScalarType(options.dtype_opt()), options.layout_opt(), options.device_opt(), options.pinned_memory_opt());
#endif
}

// aten::resize_(Tensor(a!) self, int[] size, *, MemoryFormat? memory_format=None) -> Tensor(a!)
Tensor & Tensor::resize_(IntArrayRef size, c10::optional<MemoryFormat> memory_format) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::resize_(const_cast<Tensor&>(*this), size, memory_format);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::resize_", "")
        .typed<Tensor & (Tensor &, IntArrayRef, c10::optional<MemoryFormat>)>();
    return op.call(const_cast<Tensor&>(*this), size, memory_format);
#endif
}

// aten::erf(Tensor self) -> Tensor
Tensor Tensor::erf() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::erf(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::erf", "")
        .typed<Tensor (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::erf_(Tensor(a!) self) -> Tensor(a!)
Tensor & Tensor::erf_() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::erf_(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::erf_", "")
        .typed<Tensor & (Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::erfc(Tensor self) -> Tensor
Tensor Tensor::erfc() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::erfc(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::erfc", "")
        .typed<Tensor (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::erfc_(Tensor(a!) self) -> Tensor(a!)
Tensor & Tensor::erfc_() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::erfc_(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::erfc_", "")
        .typed<Tensor & (Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::exp(Tensor self) -> Tensor
Tensor Tensor::exp() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::exp(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::exp", "")
        .typed<Tensor (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::exp_(Tensor(a!) self) -> Tensor(a!)
Tensor & Tensor::exp_() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::exp_(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::exp_", "")
        .typed<Tensor & (Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::expm1(Tensor self) -> Tensor
Tensor Tensor::expm1() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::expm1(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::expm1", "")
        .typed<Tensor (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::expm1_(Tensor(a!) self) -> Tensor(a!)
Tensor & Tensor::expm1_() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::expm1_(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::expm1_", "")
        .typed<Tensor & (Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::expand(Tensor(a) self, int[] size, *, bool implicit=False) -> Tensor(a)
Tensor Tensor::expand(IntArrayRef size, bool implicit) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::expand(const_cast<Tensor&>(*this), size, implicit);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::expand", "")
        .typed<Tensor (const Tensor &, IntArrayRef, bool)>();
    return op.call(const_cast<Tensor&>(*this), size, implicit);
#endif
}

// aten::expand_as(Tensor(a) self, Tensor other) -> Tensor(a)
Tensor Tensor::expand_as(const Tensor & other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::expand_as(const_cast<Tensor&>(*this), other);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::expand_as", "")
        .typed<Tensor (const Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::flatten.using_ints(Tensor(a) self, int start_dim=0, int end_dim=-1) -> Tensor(a)
Tensor Tensor::flatten(int64_t start_dim, int64_t end_dim) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::flatten_using_ints(const_cast<Tensor&>(*this), start_dim, end_dim);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::flatten", "using_ints")
        .typed<Tensor (const Tensor &, int64_t, int64_t)>();
    return op.call(const_cast<Tensor&>(*this), start_dim, end_dim);
#endif
}

// aten::flatten.named_out_dim(Tensor(a) self, int start_dim, int end_dim, Dimname out_dim) -> Tensor(a)
Tensor Tensor::flatten(int64_t start_dim, int64_t end_dim, Dimname out_dim) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::flatten_named_out_dim(const_cast<Tensor&>(*this), start_dim, end_dim, out_dim);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::flatten", "named_out_dim")
        .typed<Tensor (const Tensor &, int64_t, int64_t, Dimname)>();
    return op.call(const_cast<Tensor&>(*this), start_dim, end_dim, out_dim);
#endif
}

// aten::flatten.using_names(Tensor(a) self, Dimname start_dim, Dimname end_dim, Dimname out_dim) -> Tensor(a)
Tensor Tensor::flatten(Dimname start_dim, Dimname end_dim, Dimname out_dim) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::flatten_using_names(const_cast<Tensor&>(*this), start_dim, end_dim, out_dim);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::flatten", "using_names")
        .typed<Tensor (const Tensor &, Dimname, Dimname, Dimname)>();
    return op.call(const_cast<Tensor&>(*this), start_dim, end_dim, out_dim);
#endif
}

// aten::flatten.DimnameList(Tensor(a) self, Dimname[] dims, Dimname out_dim) -> Tensor(a)
Tensor Tensor::flatten(DimnameList dims, Dimname out_dim) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::flatten_DimnameList(const_cast<Tensor&>(*this), dims, out_dim);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::flatten", "DimnameList")
        .typed<Tensor (const Tensor &, DimnameList, Dimname)>();
    return op.call(const_cast<Tensor&>(*this), dims, out_dim);
#endif
}

// aten::fill_.Scalar(Tensor(a!) self, Scalar value) -> Tensor(a!)
Tensor & Tensor::fill_(Scalar value) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::fill__Scalar(const_cast<Tensor&>(*this), value);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::fill_", "Scalar")
        .typed<Tensor & (Tensor &, Scalar)>();
    return op.call(const_cast<Tensor&>(*this), value);
#endif
}

// aten::fill_.Tensor(Tensor(a!) self, Tensor value) -> Tensor(a!)
Tensor & Tensor::fill_(const Tensor & value) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::fill__Tensor(const_cast<Tensor&>(*this), value);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::fill_", "Tensor")
        .typed<Tensor & (Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), value);
#endif
}

// aten::floor(Tensor self) -> Tensor
Tensor Tensor::floor() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::floor(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::floor", "")
        .typed<Tensor (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::floor_(Tensor(a!) self) -> Tensor(a!)
Tensor & Tensor::floor_() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::floor_(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::floor_", "")
        .typed<Tensor & (Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::floor_divide(Tensor self, Tensor other) -> Tensor
Tensor Tensor::floor_divide(const Tensor & other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this, other);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::floor_divide(const_cast<Tensor&>(*this), other);
            break;
        default:
            AT_ERROR("floor_divide not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::floor_divide", "")
        .typed<Tensor (const Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::floor_divide_.Tensor(Tensor(a!) self, Tensor other) -> Tensor(a!)
Tensor & Tensor::floor_divide_(const Tensor & other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this, other);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::floor_divide__Tensor(const_cast<Tensor&>(*this), other);
            break;
        default:
            AT_ERROR("floor_divide_ not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::floor_divide_", "Tensor")
        .typed<Tensor & (Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::floor_divide.Scalar(Tensor self, Scalar other) -> Tensor
Tensor Tensor::floor_divide(Scalar other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::floor_divide_Scalar(const_cast<Tensor&>(*this), other);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::floor_divide", "Scalar")
        .typed<Tensor (const Tensor &, Scalar)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::floor_divide_.Scalar(Tensor(a!) self, Scalar other) -> Tensor(a!)
Tensor & Tensor::floor_divide_(Scalar other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::floor_divide__Scalar(const_cast<Tensor&>(*this), other);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::floor_divide_", "Scalar")
        .typed<Tensor & (Tensor &, Scalar)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::frac(Tensor self) -> Tensor
Tensor Tensor::frac() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::frac(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::frac", "")
        .typed<Tensor (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::frac_(Tensor(a!) self) -> Tensor(a!)
Tensor & Tensor::frac_() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::frac_(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::frac_", "")
        .typed<Tensor & (Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::ger(Tensor self, Tensor vec2) -> Tensor
Tensor Tensor::ger(const Tensor & vec2) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::ger(const_cast<Tensor&>(*this), vec2);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::ger", "")
        .typed<Tensor (const Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), vec2);
#endif
}

// aten::fft(Tensor self, int signal_ndim, bool normalized=False) -> Tensor
Tensor Tensor::fft(int64_t signal_ndim, bool normalized) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::fft(const_cast<Tensor&>(*this), signal_ndim, normalized);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::fft", "")
        .typed<Tensor (const Tensor &, int64_t, bool)>();
    return op.call(const_cast<Tensor&>(*this), signal_ndim, normalized);
#endif
}

// aten::ifft(Tensor self, int signal_ndim, bool normalized=False) -> Tensor
Tensor Tensor::ifft(int64_t signal_ndim, bool normalized) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::ifft(const_cast<Tensor&>(*this), signal_ndim, normalized);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::ifft", "")
        .typed<Tensor (const Tensor &, int64_t, bool)>();
    return op.call(const_cast<Tensor&>(*this), signal_ndim, normalized);
#endif
}

// aten::rfft(Tensor self, int signal_ndim, bool normalized=False, bool onesided=True) -> Tensor
Tensor Tensor::rfft(int64_t signal_ndim, bool normalized, bool onesided) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::rfft(const_cast<Tensor&>(*this), signal_ndim, normalized, onesided);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::rfft", "")
        .typed<Tensor (const Tensor &, int64_t, bool, bool)>();
    return op.call(const_cast<Tensor&>(*this), signal_ndim, normalized, onesided);
#endif
}

// aten::irfft(Tensor self, int signal_ndim, bool normalized=False, bool onesided=True, int[] signal_sizes=[]) -> Tensor
Tensor Tensor::irfft(int64_t signal_ndim, bool normalized, bool onesided, IntArrayRef signal_sizes) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::irfft(const_cast<Tensor&>(*this), signal_ndim, normalized, onesided, signal_sizes);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::irfft", "")
        .typed<Tensor (const Tensor &, int64_t, bool, bool, IntArrayRef)>();
    return op.call(const_cast<Tensor&>(*this), signal_ndim, normalized, onesided, signal_sizes);
#endif
}

// aten::index.Tensor(Tensor self, Tensor?[] indices) -> Tensor
Tensor Tensor::index(TensorList indices) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::index_Tensor(const_cast<Tensor&>(*this), indices);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::index", "Tensor")
        .typed<Tensor (const Tensor &, TensorList)>();
    return op.call(const_cast<Tensor&>(*this), indices);
#endif
}

// aten::index_copy_(Tensor(a!) self, int dim, Tensor index, Tensor source) -> Tensor(a!)
Tensor & Tensor::index_copy_(int64_t dim, const Tensor & index, const Tensor & source) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::index_copy_(const_cast<Tensor&>(*this), dim, index, source);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::index_copy_", "")
        .typed<Tensor & (Tensor &, int64_t, const Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), dim, index, source);
#endif
}

// aten::index_copy(Tensor self, int dim, Tensor index, Tensor source) -> Tensor
Tensor Tensor::index_copy(int64_t dim, const Tensor & index, const Tensor & source) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::index_copy(const_cast<Tensor&>(*this), dim, index, source);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::index_copy", "")
        .typed<Tensor (const Tensor &, int64_t, const Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), dim, index, source);
#endif
}

// aten::index_copy_.dimname(Tensor(a!) self, Dimname dim, Tensor index, Tensor source) -> Tensor(a!)
Tensor & Tensor::index_copy_(Dimname dim, const Tensor & index, const Tensor & source) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::index_copy__dimname(const_cast<Tensor&>(*this), dim, index, source);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::index_copy_", "dimname")
        .typed<Tensor & (Tensor &, Dimname, const Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), dim, index, source);
#endif
}

// aten::index_copy.dimname(Tensor self, Dimname dim, Tensor index, Tensor source) -> Tensor
Tensor Tensor::index_copy(Dimname dim, const Tensor & index, const Tensor & source) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::index_copy_dimname(const_cast<Tensor&>(*this), dim, index, source);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::index_copy", "dimname")
        .typed<Tensor (const Tensor &, Dimname, const Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), dim, index, source);
#endif
}

// aten::index_put_(Tensor(a!) self, Tensor?[] indices, Tensor values, bool accumulate=False) -> Tensor(a!)
Tensor & Tensor::index_put_(TensorList indices, const Tensor & values, bool accumulate) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::index_put_(const_cast<Tensor&>(*this), indices, values, accumulate);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::index_put_", "")
        .typed<Tensor & (Tensor &, TensorList, const Tensor &, bool)>();
    return op.call(const_cast<Tensor&>(*this), indices, values, accumulate);
#endif
}

// aten::index_put(Tensor self, Tensor?[] indices, Tensor values, bool accumulate=False) -> Tensor
Tensor Tensor::index_put(TensorList indices, const Tensor & values, bool accumulate) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::index_put(const_cast<Tensor&>(*this), indices, values, accumulate);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::index_put", "")
        .typed<Tensor (const Tensor &, TensorList, const Tensor &, bool)>();
    return op.call(const_cast<Tensor&>(*this), indices, values, accumulate);
#endif
}

// aten::inverse(Tensor self) -> Tensor
Tensor Tensor::inverse() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::inverse(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::inverse", "")
        .typed<Tensor (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::isclose(Tensor self, Tensor other, float rtol=1e-05, float atol=1e-08, bool equal_nan=False) -> Tensor
Tensor Tensor::isclose(const Tensor & other, double rtol, double atol, bool equal_nan) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::isclose(const_cast<Tensor&>(*this), other, rtol, atol, equal_nan);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::isclose", "")
        .typed<Tensor (const Tensor &, const Tensor &, double, double, bool)>();
    return op.call(const_cast<Tensor&>(*this), other, rtol, atol, equal_nan);
#endif
}

// aten::isnan(Tensor self) -> Tensor
Tensor Tensor::isnan() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::isnan(const_cast<Tensor&>(*this));
            break;
        default:
            AT_ERROR("isnan not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::isnan", "")
        .typed<Tensor (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::is_distributed(Tensor self) -> bool
bool Tensor::is_distributed() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::is_distributed(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::is_distributed", "")
        .typed<bool (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::is_floating_point(Tensor self) -> bool
bool Tensor::is_floating_point() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::is_floating_point(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::is_floating_point", "")
        .typed<bool (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::is_complex(Tensor self) -> bool
bool Tensor::is_complex() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::is_complex(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::is_complex", "")
        .typed<bool (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::is_nonzero(Tensor self) -> bool
bool Tensor::is_nonzero() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::is_nonzero(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::is_nonzero", "")
        .typed<bool (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::is_same_size(Tensor self, Tensor other) -> bool
bool Tensor::is_same_size(const Tensor & other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::is_same_size(const_cast<Tensor&>(*this), other);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::is_same_size", "")
        .typed<bool (const Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::is_signed(Tensor self) -> bool
bool Tensor::is_signed() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::is_signed(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::is_signed", "")
        .typed<bool (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::kthvalue(Tensor self, int k, int dim=-1, bool keepdim=False) -> (Tensor values, Tensor indices)
std::tuple<Tensor,Tensor> Tensor::kthvalue(int64_t k, int64_t dim, bool keepdim) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::kthvalue(const_cast<Tensor&>(*this), k, dim, keepdim);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::kthvalue", "")
        .typed<std::tuple<Tensor,Tensor> (const Tensor &, int64_t, int64_t, bool)>();
    return op.call(const_cast<Tensor&>(*this), k, dim, keepdim);
#endif
}

// aten::kthvalue.dimname(Tensor self, int k, Dimname dim, bool keepdim=False) -> (Tensor values, Tensor indices)
std::tuple<Tensor,Tensor> Tensor::kthvalue(int64_t k, Dimname dim, bool keepdim) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::kthvalue_dimname(const_cast<Tensor&>(*this), k, dim, keepdim);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::kthvalue", "dimname")
        .typed<std::tuple<Tensor,Tensor> (const Tensor &, int64_t, Dimname, bool)>();
    return op.call(const_cast<Tensor&>(*this), k, dim, keepdim);
#endif
}

// aten::log(Tensor self) -> Tensor
Tensor Tensor::log() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::log(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::log", "")
        .typed<Tensor (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::log_(Tensor(a!) self) -> Tensor(a!)
Tensor & Tensor::log_() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::log_(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::log_", "")
        .typed<Tensor & (Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::log10(Tensor self) -> Tensor
Tensor Tensor::log10() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::log10(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::log10", "")
        .typed<Tensor (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::log10_(Tensor(a!) self) -> Tensor(a!)
Tensor & Tensor::log10_() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::log10_(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::log10_", "")
        .typed<Tensor & (Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::log1p(Tensor self) -> Tensor
Tensor Tensor::log1p() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::log1p(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::log1p", "")
        .typed<Tensor (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::log1p_(Tensor(a!) self) -> Tensor(a!)
Tensor & Tensor::log1p_() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::log1p_(const_cast<Tensor&>(*this));
            break;
        default:
            AT_ERROR("log1p_ not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::log1p_", "")
        .typed<Tensor & (Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::log2(Tensor self) -> Tensor
Tensor Tensor::log2() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::log2(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::log2", "")
        .typed<Tensor (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::log2_(Tensor(a!) self) -> Tensor(a!)
Tensor & Tensor::log2_() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::log2_(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::log2_", "")
        .typed<Tensor & (Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::logaddexp(Tensor self, Tensor other) -> Tensor
Tensor Tensor::logaddexp(const Tensor & other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::logaddexp(const_cast<Tensor&>(*this), other);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::logaddexp", "")
        .typed<Tensor (const Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::logaddexp2(Tensor self, Tensor other) -> Tensor
Tensor Tensor::logaddexp2(const Tensor & other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::logaddexp2(const_cast<Tensor&>(*this), other);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::logaddexp2", "")
        .typed<Tensor (const Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::logdet(Tensor self) -> Tensor
Tensor Tensor::logdet() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::logdet(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::logdet", "")
        .typed<Tensor (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::log_softmax.int(Tensor self, int dim, ScalarType? dtype=None) -> Tensor
Tensor Tensor::log_softmax(int64_t dim, c10::optional<ScalarType> dtype) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::log_softmax_int(const_cast<Tensor&>(*this), dim, dtype);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::log_softmax", "int")
        .typed<Tensor (const Tensor &, int64_t, c10::optional<ScalarType>)>();
    return op.call(const_cast<Tensor&>(*this), dim, dtype);
#endif
}

// aten::log_softmax.Dimname(Tensor self, Dimname dim, *, ScalarType? dtype=None) -> Tensor
Tensor Tensor::log_softmax(Dimname dim, c10::optional<ScalarType> dtype) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::log_softmax_Dimname(const_cast<Tensor&>(*this), dim, dtype);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::log_softmax", "Dimname")
        .typed<Tensor (const Tensor &, Dimname, c10::optional<ScalarType>)>();
    return op.call(const_cast<Tensor&>(*this), dim, dtype);
#endif
}

// aten::logcumsumexp(Tensor self, int dim) -> Tensor
Tensor Tensor::logcumsumexp(int64_t dim) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::logcumsumexp(const_cast<Tensor&>(*this), dim);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::logcumsumexp", "")
        .typed<Tensor (const Tensor &, int64_t)>();
    return op.call(const_cast<Tensor&>(*this), dim);
#endif
}

// aten::logcumsumexp.dimname(Tensor self, Dimname dim) -> Tensor
Tensor Tensor::logcumsumexp(Dimname dim) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::logcumsumexp_dimname(const_cast<Tensor&>(*this), dim);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::logcumsumexp", "dimname")
        .typed<Tensor (const Tensor &, Dimname)>();
    return op.call(const_cast<Tensor&>(*this), dim);
#endif
}

// aten::logsumexp(Tensor self, int[1] dim, bool keepdim=False) -> Tensor
Tensor Tensor::logsumexp(IntArrayRef dim, bool keepdim) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::logsumexp(const_cast<Tensor&>(*this), dim, keepdim);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::logsumexp", "")
        .typed<Tensor (const Tensor &, IntArrayRef, bool)>();
    return op.call(const_cast<Tensor&>(*this), dim, keepdim);
#endif
}

// aten::logsumexp.names(Tensor self, Dimname[1] dim, bool keepdim=False) -> Tensor
Tensor Tensor::logsumexp(DimnameList dim, bool keepdim) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::logsumexp_names(const_cast<Tensor&>(*this), dim, keepdim);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::logsumexp", "names")
        .typed<Tensor (const Tensor &, DimnameList, bool)>();
    return op.call(const_cast<Tensor&>(*this), dim, keepdim);
#endif
}

// aten::matmul(Tensor self, Tensor other) -> Tensor
Tensor Tensor::matmul(const Tensor & other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::matmul(const_cast<Tensor&>(*this), other);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::matmul", "")
        .typed<Tensor (const Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::matrix_power(Tensor self, int n) -> Tensor
Tensor Tensor::matrix_power(int64_t n) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::matrix_power(const_cast<Tensor&>(*this), n);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::matrix_power", "")
        .typed<Tensor (const Tensor &, int64_t)>();
    return op.call(const_cast<Tensor&>(*this), n);
#endif
}

// aten::max.dim(Tensor self, int dim, bool keepdim=False) -> (Tensor values, Tensor indices)
std::tuple<Tensor,Tensor> Tensor::max(int64_t dim, bool keepdim) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::max_dim(const_cast<Tensor&>(*this), dim, keepdim);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::max", "dim")
        .typed<std::tuple<Tensor,Tensor> (const Tensor &, int64_t, bool)>();
    return op.call(const_cast<Tensor&>(*this), dim, keepdim);
#endif
}

// aten::max_values(Tensor self, int[1] dim, bool keepdim=False) -> Tensor
Tensor Tensor::max_values(IntArrayRef dim, bool keepdim) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::max_values(const_cast<Tensor&>(*this), dim, keepdim);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::max_values", "")
        .typed<Tensor (const Tensor &, IntArrayRef, bool)>();
    return op.call(const_cast<Tensor&>(*this), dim, keepdim);
#endif
}

// aten::max.names_dim(Tensor self, Dimname dim, bool keepdim=False) -> (Tensor values, Tensor indices)
std::tuple<Tensor,Tensor> Tensor::max(Dimname dim, bool keepdim) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::max_names_dim(const_cast<Tensor&>(*this), dim, keepdim);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::max", "names_dim")
        .typed<std::tuple<Tensor,Tensor> (const Tensor &, Dimname, bool)>();
    return op.call(const_cast<Tensor&>(*this), dim, keepdim);
#endif
}

// aten::max_values.names(Tensor self, Dimname[1] dim, bool keepdim=False) -> Tensor
Tensor Tensor::max_values(DimnameList dim, bool keepdim) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::max_values_names(const_cast<Tensor&>(*this), dim, keepdim);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::max_values", "names")
        .typed<Tensor (const Tensor &, DimnameList, bool)>();
    return op.call(const_cast<Tensor&>(*this), dim, keepdim);
#endif
}

// aten::mean(Tensor self, *, ScalarType? dtype=None) -> Tensor
Tensor Tensor::mean(c10::optional<ScalarType> dtype) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::mean(const_cast<Tensor&>(*this), dtype);
            break;
        case Backend::QuantizedCPU:
            return QuantizedCPUType::mean(const_cast<Tensor&>(*this), dtype);
            break;
        default:
            AT_ERROR("mean not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::mean", "")
        .typed<Tensor (const Tensor &, c10::optional<ScalarType>)>();
    return op.call(const_cast<Tensor&>(*this), dtype);
#endif
}

// aten::mean.dim(Tensor self, int[1] dim, bool keepdim=False, *, ScalarType? dtype=None) -> Tensor
Tensor Tensor::mean(IntArrayRef dim, bool keepdim, c10::optional<ScalarType> dtype) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::mean_dim(const_cast<Tensor&>(*this), dim, keepdim, dtype);
            break;
        case Backend::QuantizedCPU:
            return QuantizedCPUType::mean_dim(const_cast<Tensor&>(*this), dim, keepdim, dtype);
            break;
        #ifdef USE_VULKAN
        case Backend::Vulkan:
            return VulkanType::mean_dim(const_cast<Tensor&>(*this), dim, keepdim, dtype);
            break;
        #endif
        default:
            AT_ERROR("mean not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::mean", "dim")
        .typed<Tensor (const Tensor &, IntArrayRef, bool, c10::optional<ScalarType>)>();
    return op.call(const_cast<Tensor&>(*this), dim, keepdim, dtype);
#endif
}

// aten::mean.names_dim(Tensor self, Dimname[1] dim, bool keepdim=False, *, ScalarType? dtype=None) -> Tensor
Tensor Tensor::mean(DimnameList dim, bool keepdim, c10::optional<ScalarType> dtype) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::mean_names_dim(const_cast<Tensor&>(*this), dim, keepdim, dtype);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::mean", "names_dim")
        .typed<Tensor (const Tensor &, DimnameList, bool, c10::optional<ScalarType>)>();
    return op.call(const_cast<Tensor&>(*this), dim, keepdim, dtype);
#endif
}

// aten::median.dim(Tensor self, int dim, bool keepdim=False) -> (Tensor values, Tensor indices)
std::tuple<Tensor,Tensor> Tensor::median(int64_t dim, bool keepdim) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::median_dim(const_cast<Tensor&>(*this), dim, keepdim);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::median", "dim")
        .typed<std::tuple<Tensor,Tensor> (const Tensor &, int64_t, bool)>();
    return op.call(const_cast<Tensor&>(*this), dim, keepdim);
#endif
}

// aten::median.names_dim(Tensor self, Dimname dim, bool keepdim=False) -> (Tensor values, Tensor indices)
std::tuple<Tensor,Tensor> Tensor::median(Dimname dim, bool keepdim) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::median_names_dim(const_cast<Tensor&>(*this), dim, keepdim);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::median", "names_dim")
        .typed<std::tuple<Tensor,Tensor> (const Tensor &, Dimname, bool)>();
    return op.call(const_cast<Tensor&>(*this), dim, keepdim);
#endif
}

// aten::min.dim(Tensor self, int dim, bool keepdim=False) -> (Tensor values, Tensor indices)
std::tuple<Tensor,Tensor> Tensor::min(int64_t dim, bool keepdim) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::min_dim(const_cast<Tensor&>(*this), dim, keepdim);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::min", "dim")
        .typed<std::tuple<Tensor,Tensor> (const Tensor &, int64_t, bool)>();
    return op.call(const_cast<Tensor&>(*this), dim, keepdim);
#endif
}

// aten::min_values(Tensor self, int[1] dim, bool keepdim=False) -> Tensor
Tensor Tensor::min_values(IntArrayRef dim, bool keepdim) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::min_values(const_cast<Tensor&>(*this), dim, keepdim);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::min_values", "")
        .typed<Tensor (const Tensor &, IntArrayRef, bool)>();
    return op.call(const_cast<Tensor&>(*this), dim, keepdim);
#endif
}

// aten::min.names_dim(Tensor self, Dimname dim, bool keepdim=False) -> (Tensor values, Tensor indices)
std::tuple<Tensor,Tensor> Tensor::min(Dimname dim, bool keepdim) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::min_names_dim(const_cast<Tensor&>(*this), dim, keepdim);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::min", "names_dim")
        .typed<std::tuple<Tensor,Tensor> (const Tensor &, Dimname, bool)>();
    return op.call(const_cast<Tensor&>(*this), dim, keepdim);
#endif
}

// aten::min_values.names(Tensor self, Dimname[1] dim, bool keepdim=False) -> Tensor
Tensor Tensor::min_values(DimnameList dim, bool keepdim) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::min_values_names(const_cast<Tensor&>(*this), dim, keepdim);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::min_values", "names")
        .typed<Tensor (const Tensor &, DimnameList, bool)>();
    return op.call(const_cast<Tensor&>(*this), dim, keepdim);
#endif
}

// aten::mm(Tensor self, Tensor mat2) -> Tensor
Tensor Tensor::mm(const Tensor & mat2) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this, mat2);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::mm(const_cast<Tensor&>(*this), mat2);
            break;
        default:
            AT_ERROR("mm not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::mm", "")
        .typed<Tensor (const Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), mat2);
#endif
}

// aten::mode(Tensor self, int dim=-1, bool keepdim=False) -> (Tensor values, Tensor indices)
std::tuple<Tensor,Tensor> Tensor::mode(int64_t dim, bool keepdim) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::mode(const_cast<Tensor&>(*this), dim, keepdim);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::mode", "")
        .typed<std::tuple<Tensor,Tensor> (const Tensor &, int64_t, bool)>();
    return op.call(const_cast<Tensor&>(*this), dim, keepdim);
#endif
}

// aten::mode.dimname(Tensor self, Dimname dim, bool keepdim=False) -> (Tensor values, Tensor indices)
std::tuple<Tensor,Tensor> Tensor::mode(Dimname dim, bool keepdim) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::mode_dimname(const_cast<Tensor&>(*this), dim, keepdim);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::mode", "dimname")
        .typed<std::tuple<Tensor,Tensor> (const Tensor &, Dimname, bool)>();
    return op.call(const_cast<Tensor&>(*this), dim, keepdim);
#endif
}

// aten::mul.Tensor(Tensor self, Tensor other) -> Tensor
Tensor Tensor::mul(const Tensor & other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this, other);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::mul_Tensor(const_cast<Tensor&>(*this), other);
            break;
        default:
            AT_ERROR("mul not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::mul", "Tensor")
        .typed<Tensor (const Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::mul_.Tensor(Tensor(a!) self, Tensor other) -> Tensor(a!)
Tensor & Tensor::mul_(const Tensor & other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this, other);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::mul__Tensor(const_cast<Tensor&>(*this), other);
            break;
        default:
            AT_ERROR("mul_ not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::mul_", "Tensor")
        .typed<Tensor & (Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::mul.Scalar(Tensor self, Scalar other) -> Tensor
Tensor Tensor::mul(Scalar other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::mul_Scalar(const_cast<Tensor&>(*this), other);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::mul", "Scalar")
        .typed<Tensor (const Tensor &, Scalar)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::mul_.Scalar(Tensor(a!) self, Scalar other) -> Tensor(a!)
Tensor & Tensor::mul_(Scalar other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::mul__Scalar(const_cast<Tensor&>(*this), other);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::mul_", "Scalar")
        .typed<Tensor & (Tensor &, Scalar)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::mv(Tensor self, Tensor vec) -> Tensor
Tensor Tensor::mv(const Tensor & vec) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this, vec);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::mv(const_cast<Tensor&>(*this), vec);
            break;
        default:
            AT_ERROR("mv not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::mv", "")
        .typed<Tensor (const Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), vec);
#endif
}

// aten::mvlgamma(Tensor self, int p) -> Tensor
Tensor Tensor::mvlgamma(int64_t p) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::mvlgamma(const_cast<Tensor&>(*this), p);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::mvlgamma", "")
        .typed<Tensor (const Tensor &, int64_t)>();
    return op.call(const_cast<Tensor&>(*this), p);
#endif
}

// aten::mvlgamma_(Tensor(a!) self, int p) -> Tensor(a!)
Tensor & Tensor::mvlgamma_(int64_t p) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::mvlgamma_(const_cast<Tensor&>(*this), p);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::mvlgamma_", "")
        .typed<Tensor & (Tensor &, int64_t)>();
    return op.call(const_cast<Tensor&>(*this), p);
#endif
}

// aten::narrow_copy(Tensor self, int dim, int start, int length) -> Tensor
Tensor Tensor::narrow_copy(int64_t dim, int64_t start, int64_t length) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::narrow_copy(const_cast<Tensor&>(*this), dim, start, length);
            break;
        default:
            AT_ERROR("narrow_copy not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::narrow_copy", "")
        .typed<Tensor (const Tensor &, int64_t, int64_t, int64_t)>();
    return op.call(const_cast<Tensor&>(*this), dim, start, length);
#endif
}

// aten::narrow(Tensor(a) self, int dim, int start, int length) -> Tensor(a)
Tensor Tensor::narrow(int64_t dim, int64_t start, int64_t length) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::narrow(const_cast<Tensor&>(*this), dim, start, length);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::narrow", "")
        .typed<Tensor (const Tensor &, int64_t, int64_t, int64_t)>();
    return op.call(const_cast<Tensor&>(*this), dim, start, length);
#endif
}

// aten::narrow.Tensor(Tensor(a) self, int dim, Tensor start, int length) -> Tensor(a)
Tensor Tensor::narrow(int64_t dim, const Tensor & start, int64_t length) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::narrow_Tensor(const_cast<Tensor&>(*this), dim, start, length);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::narrow", "Tensor")
        .typed<Tensor (const Tensor &, int64_t, const Tensor &, int64_t)>();
    return op.call(const_cast<Tensor&>(*this), dim, start, length);
#endif
}

// aten::permute(Tensor(a) self, int[] dims) -> Tensor(a)
Tensor Tensor::permute(IntArrayRef dims) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::permute(const_cast<Tensor&>(*this), dims);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::permute", "")
        .typed<Tensor (const Tensor &, IntArrayRef)>();
    return op.call(const_cast<Tensor&>(*this), dims);
#endif
}

// aten::numpy_T(Tensor(a) self) -> Tensor(a)
Tensor Tensor::numpy_T() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::numpy_T(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::numpy_T", "")
        .typed<Tensor (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::is_pinned(Tensor self) -> bool
bool Tensor::is_pinned() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::is_pinned(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::is_pinned", "")
        .typed<bool (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::pin_memory(Tensor(a) self) -> Tensor(a)
Tensor Tensor::pin_memory() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::pin_memory(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::pin_memory", "")
        .typed<Tensor (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::pinverse(Tensor self, float rcond=1e-15) -> Tensor
Tensor Tensor::pinverse(double rcond) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::pinverse(const_cast<Tensor&>(*this), rcond);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::pinverse", "")
        .typed<Tensor (const Tensor &, double)>();
    return op.call(const_cast<Tensor&>(*this), rcond);
#endif
}

// aten::rad2deg(Tensor self) -> Tensor
Tensor Tensor::rad2deg() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::rad2deg(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::rad2deg", "")
        .typed<Tensor (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::rad2deg_(Tensor(a!) self) -> Tensor(a!)
Tensor & Tensor::rad2deg_() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::rad2deg_(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::rad2deg_", "")
        .typed<Tensor & (Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::deg2rad(Tensor self) -> Tensor
Tensor Tensor::deg2rad() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::deg2rad(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::deg2rad", "")
        .typed<Tensor (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::deg2rad_(Tensor(a!) self) -> Tensor(a!)
Tensor & Tensor::deg2rad_() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::deg2rad_(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::deg2rad_", "")
        .typed<Tensor & (Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::reciprocal(Tensor self) -> Tensor
Tensor Tensor::reciprocal() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::reciprocal(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::reciprocal", "")
        .typed<Tensor (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::reciprocal_(Tensor(a!) self) -> Tensor(a!)
Tensor & Tensor::reciprocal_() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::reciprocal_(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::reciprocal_", "")
        .typed<Tensor & (Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::neg(Tensor self) -> Tensor
Tensor Tensor::neg() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::neg(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::neg", "")
        .typed<Tensor (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::neg_(Tensor(a!) self) -> Tensor(a!)
Tensor & Tensor::neg_() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::neg_(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::neg_", "")
        .typed<Tensor & (Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::repeat(Tensor self, int[] repeats) -> Tensor
Tensor Tensor::repeat(IntArrayRef repeats) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::repeat(const_cast<Tensor&>(*this), repeats);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::repeat", "")
        .typed<Tensor (const Tensor &, IntArrayRef)>();
    return op.call(const_cast<Tensor&>(*this), repeats);
#endif
}

// aten::repeat_interleave.self_Tensor(Tensor self, Tensor repeats, int? dim=None) -> Tensor
Tensor Tensor::repeat_interleave(const Tensor & repeats, c10::optional<int64_t> dim) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::repeat_interleave_self_Tensor(const_cast<Tensor&>(*this), repeats, dim);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::repeat_interleave", "self_Tensor")
        .typed<Tensor (const Tensor &, const Tensor &, c10::optional<int64_t>)>();
    return op.call(const_cast<Tensor&>(*this), repeats, dim);
#endif
}

// aten::repeat_interleave.self_int(Tensor self, int repeats, int? dim=None) -> Tensor
Tensor Tensor::repeat_interleave(int64_t repeats, c10::optional<int64_t> dim) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::repeat_interleave_self_int(const_cast<Tensor&>(*this), repeats, dim);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::repeat_interleave", "self_int")
        .typed<Tensor (const Tensor &, int64_t, c10::optional<int64_t>)>();
    return op.call(const_cast<Tensor&>(*this), repeats, dim);
#endif
}

// aten::reshape(Tensor(a) self, int[] shape) -> Tensor(a)
Tensor Tensor::reshape(IntArrayRef shape) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::reshape(const_cast<Tensor&>(*this), shape);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::reshape", "")
        .typed<Tensor (const Tensor &, IntArrayRef)>();
    return op.call(const_cast<Tensor&>(*this), shape);
#endif
}

// aten::reshape_as(Tensor(a) self, Tensor other) -> Tensor(a)
Tensor Tensor::reshape_as(const Tensor & other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::reshape_as(const_cast<Tensor&>(*this), other);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::reshape_as", "")
        .typed<Tensor (const Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::round(Tensor self) -> Tensor
Tensor Tensor::round() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::round(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::round", "")
        .typed<Tensor (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::round_(Tensor(a!) self) -> Tensor(a!)
Tensor & Tensor::round_() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::round_(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::round_", "")
        .typed<Tensor & (Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::relu(Tensor self) -> Tensor
Tensor Tensor::relu() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::relu(const_cast<Tensor&>(*this));
            break;
        case Backend::QuantizedCPU:
            return QuantizedCPUType::relu(const_cast<Tensor&>(*this));
            break;
        default:
            AT_ERROR("relu not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::relu", "")
        .typed<Tensor (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::relu_(Tensor(a!) self) -> Tensor(a!)
Tensor & Tensor::relu_() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::relu_(const_cast<Tensor&>(*this));
            break;
        case Backend::QuantizedCPU:
            return QuantizedCPUType::relu_(const_cast<Tensor&>(*this));
            break;
        default:
            AT_ERROR("relu_ not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::relu_", "")
        .typed<Tensor & (Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::prelu(Tensor self, Tensor weight) -> Tensor
Tensor Tensor::prelu(const Tensor & weight) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this, weight);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::prelu(const_cast<Tensor&>(*this), weight);
            break;
        default:
            AT_ERROR("prelu not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::prelu", "")
        .typed<Tensor (const Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), weight);
#endif
}

// aten::prelu_backward(Tensor grad_output, Tensor self, Tensor weight) -> (Tensor, Tensor)
std::tuple<Tensor,Tensor> Tensor::prelu_backward(const Tensor & grad_output, const Tensor & weight) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(grad_output, *this, weight);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::prelu_backward(grad_output, const_cast<Tensor&>(*this), weight);
            break;
        default:
            AT_ERROR("prelu_backward not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::prelu_backward", "")
        .typed<std::tuple<Tensor,Tensor> (const Tensor &, const Tensor &, const Tensor &)>();
    return op.call(grad_output, const_cast<Tensor&>(*this), weight);
#endif
}

// aten::hardshrink(Tensor self, Scalar lambd=0.5) -> Tensor
Tensor Tensor::hardshrink(Scalar lambd) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::hardshrink(const_cast<Tensor&>(*this), lambd);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::hardshrink", "")
        .typed<Tensor (const Tensor &, Scalar)>();
    return op.call(const_cast<Tensor&>(*this), lambd);
#endif
}

// aten::hardshrink_backward(Tensor grad_out, Tensor self, Scalar lambd) -> Tensor
Tensor Tensor::hardshrink_backward(const Tensor & grad_out, Scalar lambd) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::hardshrink_backward(grad_out, const_cast<Tensor&>(*this), lambd);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::hardshrink_backward", "")
        .typed<Tensor (const Tensor &, const Tensor &, Scalar)>();
    return op.call(grad_out, const_cast<Tensor&>(*this), lambd);
#endif
}

// aten::rsqrt(Tensor self) -> Tensor
Tensor Tensor::rsqrt() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::rsqrt(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::rsqrt", "")
        .typed<Tensor (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::rsqrt_(Tensor(a!) self) -> Tensor(a!)
Tensor & Tensor::rsqrt_() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::rsqrt_(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::rsqrt_", "")
        .typed<Tensor & (Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::select.Dimname(Tensor(a) self, Dimname dim, int index) -> Tensor(a)
Tensor Tensor::select(Dimname dim, int64_t index) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::select_Dimname(const_cast<Tensor&>(*this), dim, index);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::select", "Dimname")
        .typed<Tensor (const Tensor &, Dimname, int64_t)>();
    return op.call(const_cast<Tensor&>(*this), dim, index);
#endif
}

// aten::select.int(Tensor(a) self, int dim, int index) -> Tensor(a)
Tensor Tensor::select(int64_t dim, int64_t index) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::select_int(const_cast<Tensor&>(*this), dim, index);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::select", "int")
        .typed<Tensor (const Tensor &, int64_t, int64_t)>();
    return op.call(const_cast<Tensor&>(*this), dim, index);
#endif
}

// aten::sigmoid(Tensor self) -> Tensor
Tensor Tensor::sigmoid() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::sigmoid(const_cast<Tensor&>(*this));
            break;
        case Backend::QuantizedCPU:
            return QuantizedCPUType::sigmoid(const_cast<Tensor&>(*this));
            break;
        default:
            AT_ERROR("sigmoid not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::sigmoid", "")
        .typed<Tensor (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::sigmoid_(Tensor(a!) self) -> Tensor(a!)
Tensor & Tensor::sigmoid_() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::sigmoid_(const_cast<Tensor&>(*this));
            break;
        default:
            AT_ERROR("sigmoid_ not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::sigmoid_", "")
        .typed<Tensor & (Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::sin(Tensor self) -> Tensor
Tensor Tensor::sin() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::sin(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::sin", "")
        .typed<Tensor (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::sin_(Tensor(a!) self) -> Tensor(a!)
Tensor & Tensor::sin_() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::sin_(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::sin_", "")
        .typed<Tensor & (Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::sinh(Tensor self) -> Tensor
Tensor Tensor::sinh() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::sinh(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::sinh", "")
        .typed<Tensor (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::sinh_(Tensor(a!) self) -> Tensor(a!)
Tensor & Tensor::sinh_() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::sinh_(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::sinh_", "")
        .typed<Tensor & (Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::detach(Tensor(a) self) -> Tensor(a)
Tensor Tensor::detach() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::detach(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::detach", "")
        .typed<Tensor (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::detach_(Tensor(a!) self) -> Tensor(a!)
Tensor & Tensor::detach_() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::detach_(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::detach_", "")
        .typed<Tensor & (Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::size.int(Tensor self, int dim) -> int
int64_t Tensor::size(int64_t dim) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::size_int(const_cast<Tensor&>(*this), dim);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::size", "int")
        .typed<int64_t (const Tensor &, int64_t)>();
    return op.call(const_cast<Tensor&>(*this), dim);
#endif
}

// aten::size.Dimname(Tensor self, Dimname dim) -> int
int64_t Tensor::size(Dimname dim) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::size_Dimname(const_cast<Tensor&>(*this), dim);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::size", "Dimname")
        .typed<int64_t (const Tensor &, Dimname)>();
    return op.call(const_cast<Tensor&>(*this), dim);
#endif
}

// aten::slice.Tensor(Tensor(a) self, int dim=0, int start=0, int end=9223372036854775807, int step=1) -> Tensor(a)
Tensor Tensor::slice(int64_t dim, int64_t start, int64_t end, int64_t step) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::slice_Tensor(const_cast<Tensor&>(*this), dim, start, end, step);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::slice", "Tensor")
        .typed<Tensor (const Tensor &, int64_t, int64_t, int64_t, int64_t)>();
    return op.call(const_cast<Tensor&>(*this), dim, start, end, step);
#endif
}

// aten::slogdet(Tensor self) -> (Tensor sign, Tensor logabsdet)
std::tuple<Tensor,Tensor> Tensor::slogdet() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::slogdet(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::slogdet", "")
        .typed<std::tuple<Tensor,Tensor> (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::smm(Tensor self, Tensor mat2) -> Tensor
Tensor Tensor::smm(const Tensor & mat2) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::smm(const_cast<Tensor&>(*this), mat2);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::smm", "")
        .typed<Tensor (const Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), mat2);
#endif
}

// aten::softmax.int(Tensor self, int dim, ScalarType? dtype=None) -> Tensor
Tensor Tensor::softmax(int64_t dim, c10::optional<ScalarType> dtype) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::softmax_int(const_cast<Tensor&>(*this), dim, dtype);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::softmax", "int")
        .typed<Tensor (const Tensor &, int64_t, c10::optional<ScalarType>)>();
    return op.call(const_cast<Tensor&>(*this), dim, dtype);
#endif
}

// aten::softmax.Dimname(Tensor self, Dimname dim, *, ScalarType? dtype=None) -> Tensor
Tensor Tensor::softmax(Dimname dim, c10::optional<ScalarType> dtype) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::softmax_Dimname(const_cast<Tensor&>(*this), dim, dtype);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::softmax", "Dimname")
        .typed<Tensor (const Tensor &, Dimname, c10::optional<ScalarType>)>();
    return op.call(const_cast<Tensor&>(*this), dim, dtype);
#endif
}

// aten::split.Tensor(Tensor(a) self, int split_size, int dim=0) -> Tensor(a)[]
std::vector<Tensor> Tensor::split(int64_t split_size, int64_t dim) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::split_Tensor(const_cast<Tensor&>(*this), split_size, dim);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::split", "Tensor")
        .typed<std::vector<Tensor> (const Tensor &, int64_t, int64_t)>();
    return op.call(const_cast<Tensor&>(*this), split_size, dim);
#endif
}

// aten::split_with_sizes(Tensor self, int[] split_sizes, int dim=0) -> Tensor[]
std::vector<Tensor> Tensor::split_with_sizes(IntArrayRef split_sizes, int64_t dim) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::split_with_sizes(const_cast<Tensor&>(*this), split_sizes, dim);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::split_with_sizes", "")
        .typed<std::vector<Tensor> (const Tensor &, IntArrayRef, int64_t)>();
    return op.call(const_cast<Tensor&>(*this), split_sizes, dim);
#endif
}

// aten::squeeze(Tensor(a) self) -> Tensor(a)
Tensor Tensor::squeeze() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::squeeze(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::squeeze", "")
        .typed<Tensor (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::squeeze.dim(Tensor(a) self, int dim) -> Tensor(a)
Tensor Tensor::squeeze(int64_t dim) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::squeeze_dim(const_cast<Tensor&>(*this), dim);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::squeeze", "dim")
        .typed<Tensor (const Tensor &, int64_t)>();
    return op.call(const_cast<Tensor&>(*this), dim);
#endif
}

// aten::squeeze.dimname(Tensor(a) self, Dimname dim) -> Tensor(a)
Tensor Tensor::squeeze(Dimname dim) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::squeeze_dimname(const_cast<Tensor&>(*this), dim);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::squeeze", "dimname")
        .typed<Tensor (const Tensor &, Dimname)>();
    return op.call(const_cast<Tensor&>(*this), dim);
#endif
}

// aten::squeeze_(Tensor(a!) self) -> Tensor(a!)
Tensor & Tensor::squeeze_() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::squeeze_(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::squeeze_", "")
        .typed<Tensor & (Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::squeeze_.dim(Tensor(a!) self, int dim) -> Tensor(a!)
Tensor & Tensor::squeeze_(int64_t dim) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::squeeze__dim(const_cast<Tensor&>(*this), dim);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::squeeze_", "dim")
        .typed<Tensor & (Tensor &, int64_t)>();
    return op.call(const_cast<Tensor&>(*this), dim);
#endif
}

// aten::squeeze_.dimname(Tensor(a!) self, Dimname dim) -> Tensor(a!)
Tensor & Tensor::squeeze_(Dimname dim) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::squeeze__dimname(const_cast<Tensor&>(*this), dim);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::squeeze_", "dimname")
        .typed<Tensor & (Tensor &, Dimname)>();
    return op.call(const_cast<Tensor&>(*this), dim);
#endif
}

// aten::sspaddmm(Tensor self, Tensor mat1, Tensor mat2, *, Scalar beta=1, Scalar alpha=1) -> Tensor
Tensor Tensor::sspaddmm(const Tensor & mat1, const Tensor & mat2, Scalar beta, Scalar alpha) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::sspaddmm(const_cast<Tensor&>(*this), mat1, mat2, beta, alpha);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::sspaddmm", "")
        .typed<Tensor (const Tensor &, const Tensor &, const Tensor &, Scalar, Scalar)>();
    return op.call(const_cast<Tensor&>(*this), mat1, mat2, beta, alpha);
#endif
}

// aten::stft(Tensor self, int n_fft, int? hop_length=None, int? win_length=None, Tensor? window=None, bool normalized=False, bool onesided=True) -> Tensor
Tensor Tensor::stft(int64_t n_fft, c10::optional<int64_t> hop_length, c10::optional<int64_t> win_length, const Tensor & window, bool normalized, bool onesided) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::stft(const_cast<Tensor&>(*this), n_fft, hop_length, win_length, window, normalized, onesided);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::stft", "")
        .typed<Tensor (const Tensor &, int64_t, c10::optional<int64_t>, c10::optional<int64_t>, const Tensor &, bool, bool)>();
    return op.call(const_cast<Tensor&>(*this), n_fft, hop_length, win_length, window, normalized, onesided);
#endif
}

// aten::istft(Tensor self, int n_fft, int? hop_length=None, int? win_length=None, Tensor? window=None, bool center=True, bool normalized=False, bool onesided=True, int? length=None) -> Tensor
Tensor Tensor::istft(int64_t n_fft, c10::optional<int64_t> hop_length, c10::optional<int64_t> win_length, const Tensor & window, bool center, bool normalized, bool onesided, c10::optional<int64_t> length) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::istft(const_cast<Tensor&>(*this), n_fft, hop_length, win_length, window, center, normalized, onesided, length);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::istft", "")
        .typed<Tensor (const Tensor &, int64_t, c10::optional<int64_t>, c10::optional<int64_t>, const Tensor &, bool, bool, bool, c10::optional<int64_t>)>();
    return op.call(const_cast<Tensor&>(*this), n_fft, hop_length, win_length, window, center, normalized, onesided, length);
#endif
}

// aten::stride.int(Tensor self, int dim) -> int
int64_t Tensor::stride(int64_t dim) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::stride_int(const_cast<Tensor&>(*this), dim);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::stride", "int")
        .typed<int64_t (const Tensor &, int64_t)>();
    return op.call(const_cast<Tensor&>(*this), dim);
#endif
}

// aten::stride.Dimname(Tensor self, Dimname dim) -> int
int64_t Tensor::stride(Dimname dim) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::stride_Dimname(const_cast<Tensor&>(*this), dim);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::stride", "Dimname")
        .typed<int64_t (const Tensor &, Dimname)>();
    return op.call(const_cast<Tensor&>(*this), dim);
#endif
}

// aten::sum(Tensor self, *, ScalarType? dtype=None) -> Tensor
Tensor Tensor::sum(c10::optional<ScalarType> dtype) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::sum(const_cast<Tensor&>(*this), dtype);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::sum", "")
        .typed<Tensor (const Tensor &, c10::optional<ScalarType>)>();
    return op.call(const_cast<Tensor&>(*this), dtype);
#endif
}

// aten::sum.dim_IntList(Tensor self, int[1] dim, bool keepdim=False, *, ScalarType? dtype=None) -> Tensor
Tensor Tensor::sum(IntArrayRef dim, bool keepdim, c10::optional<ScalarType> dtype) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::sum_dim_IntList(const_cast<Tensor&>(*this), dim, keepdim, dtype);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::sum", "dim_IntList")
        .typed<Tensor (const Tensor &, IntArrayRef, bool, c10::optional<ScalarType>)>();
    return op.call(const_cast<Tensor&>(*this), dim, keepdim, dtype);
#endif
}

// aten::sum.dim_DimnameList(Tensor self, Dimname[1] dim, bool keepdim=False, *, ScalarType? dtype=None) -> Tensor
Tensor Tensor::sum(DimnameList dim, bool keepdim, c10::optional<ScalarType> dtype) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::sum_dim_DimnameList(const_cast<Tensor&>(*this), dim, keepdim, dtype);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::sum", "dim_DimnameList")
        .typed<Tensor (const Tensor &, DimnameList, bool, c10::optional<ScalarType>)>();
    return op.call(const_cast<Tensor&>(*this), dim, keepdim, dtype);
#endif
}

// aten::sum_to_size(Tensor self, int[] size) -> Tensor
Tensor Tensor::sum_to_size(IntArrayRef size) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::sum_to_size(const_cast<Tensor&>(*this), size);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::sum_to_size", "")
        .typed<Tensor (const Tensor &, IntArrayRef)>();
    return op.call(const_cast<Tensor&>(*this), size);
#endif
}

// aten::sqrt(Tensor self) -> Tensor
Tensor Tensor::sqrt() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::sqrt(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::sqrt", "")
        .typed<Tensor (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::sqrt_(Tensor(a!) self) -> Tensor(a!)
Tensor & Tensor::sqrt_() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::sqrt_(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::sqrt_", "")
        .typed<Tensor & (Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::square(Tensor self) -> Tensor
Tensor Tensor::square() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::square(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::square", "")
        .typed<Tensor (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::square_(Tensor(a!) self) -> Tensor(a!)
Tensor & Tensor::square_() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::square_(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::square_", "")
        .typed<Tensor & (Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::std(Tensor self, bool unbiased=True) -> Tensor
Tensor Tensor::std(bool unbiased) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::std(const_cast<Tensor&>(*this), unbiased);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::std", "")
        .typed<Tensor (const Tensor &, bool)>();
    return op.call(const_cast<Tensor&>(*this), unbiased);
#endif
}

// aten::std.dim(Tensor self, int[1] dim, bool unbiased=True, bool keepdim=False) -> Tensor
Tensor Tensor::std(IntArrayRef dim, bool unbiased, bool keepdim) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::std_dim(const_cast<Tensor&>(*this), dim, unbiased, keepdim);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::std", "dim")
        .typed<Tensor (const Tensor &, IntArrayRef, bool, bool)>();
    return op.call(const_cast<Tensor&>(*this), dim, unbiased, keepdim);
#endif
}

// aten::std.names_dim(Tensor self, Dimname[1] dim, bool unbiased=True, bool keepdim=False) -> Tensor
Tensor Tensor::std(DimnameList dim, bool unbiased, bool keepdim) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::std_names_dim(const_cast<Tensor&>(*this), dim, unbiased, keepdim);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::std", "names_dim")
        .typed<Tensor (const Tensor &, DimnameList, bool, bool)>();
    return op.call(const_cast<Tensor&>(*this), dim, unbiased, keepdim);
#endif
}

// aten::prod(Tensor self, *, ScalarType? dtype=None) -> Tensor
Tensor Tensor::prod(c10::optional<ScalarType> dtype) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::prod(const_cast<Tensor&>(*this), dtype);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::prod", "")
        .typed<Tensor (const Tensor &, c10::optional<ScalarType>)>();
    return op.call(const_cast<Tensor&>(*this), dtype);
#endif
}

// aten::prod.dim_int(Tensor self, int dim, bool keepdim=False, *, ScalarType? dtype=None) -> Tensor
Tensor Tensor::prod(int64_t dim, bool keepdim, c10::optional<ScalarType> dtype) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::prod_dim_int(const_cast<Tensor&>(*this), dim, keepdim, dtype);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::prod", "dim_int")
        .typed<Tensor (const Tensor &, int64_t, bool, c10::optional<ScalarType>)>();
    return op.call(const_cast<Tensor&>(*this), dim, keepdim, dtype);
#endif
}

// aten::prod.dim_Dimname(Tensor self, Dimname dim, bool keepdim=False, *, ScalarType? dtype=None) -> Tensor
Tensor Tensor::prod(Dimname dim, bool keepdim, c10::optional<ScalarType> dtype) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::prod_dim_Dimname(const_cast<Tensor&>(*this), dim, keepdim, dtype);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::prod", "dim_Dimname")
        .typed<Tensor (const Tensor &, Dimname, bool, c10::optional<ScalarType>)>();
    return op.call(const_cast<Tensor&>(*this), dim, keepdim, dtype);
#endif
}

// aten::t(Tensor(a) self) -> Tensor(a)
Tensor Tensor::t() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::t(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::t", "")
        .typed<Tensor (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::t_(Tensor(a!) self) -> Tensor(a!)
Tensor & Tensor::t_() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::t_(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::t_", "")
        .typed<Tensor & (Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::tan(Tensor self) -> Tensor
Tensor Tensor::tan() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::tan(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::tan", "")
        .typed<Tensor (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::tan_(Tensor(a!) self) -> Tensor(a!)
Tensor & Tensor::tan_() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::tan_(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::tan_", "")
        .typed<Tensor & (Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::tanh(Tensor self) -> Tensor
Tensor Tensor::tanh() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::tanh(const_cast<Tensor&>(*this));
            break;
        case Backend::QuantizedCPU:
            return QuantizedCPUType::tanh(const_cast<Tensor&>(*this));
            break;
        default:
            AT_ERROR("tanh not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::tanh", "")
        .typed<Tensor (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::tanh_(Tensor(a!) self) -> Tensor(a!)
Tensor & Tensor::tanh_() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::tanh_(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::tanh_", "")
        .typed<Tensor & (Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::transpose.int(Tensor(a) self, int dim0, int dim1) -> Tensor(a)
Tensor Tensor::transpose(int64_t dim0, int64_t dim1) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::transpose_int(const_cast<Tensor&>(*this), dim0, dim1);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::transpose", "int")
        .typed<Tensor (const Tensor &, int64_t, int64_t)>();
    return op.call(const_cast<Tensor&>(*this), dim0, dim1);
#endif
}

// aten::transpose.Dimname(Tensor(a) self, Dimname dim0, Dimname dim1) -> Tensor(a)
Tensor Tensor::transpose(Dimname dim0, Dimname dim1) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::transpose_Dimname(const_cast<Tensor&>(*this), dim0, dim1);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::transpose", "Dimname")
        .typed<Tensor (const Tensor &, Dimname, Dimname)>();
    return op.call(const_cast<Tensor&>(*this), dim0, dim1);
#endif
}

// aten::transpose_(Tensor(a!) self, int dim0, int dim1) -> Tensor(a!)
Tensor & Tensor::transpose_(int64_t dim0, int64_t dim1) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::transpose_(const_cast<Tensor&>(*this), dim0, dim1);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::transpose_", "")
        .typed<Tensor & (Tensor &, int64_t, int64_t)>();
    return op.call(const_cast<Tensor&>(*this), dim0, dim1);
#endif
}

// aten::flip(Tensor self, int[] dims) -> Tensor
Tensor Tensor::flip(IntArrayRef dims) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::flip(const_cast<Tensor&>(*this), dims);
            break;
        default:
            AT_ERROR("flip not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::flip", "")
        .typed<Tensor (const Tensor &, IntArrayRef)>();
    return op.call(const_cast<Tensor&>(*this), dims);
#endif
}

// aten::fliplr(Tensor self) -> Tensor
Tensor Tensor::fliplr() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::fliplr(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::fliplr", "")
        .typed<Tensor (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::flipud(Tensor self) -> Tensor
Tensor Tensor::flipud() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::flipud(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::flipud", "")
        .typed<Tensor (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::roll(Tensor self, int[1] shifts, int[1] dims=[]) -> Tensor
Tensor Tensor::roll(IntArrayRef shifts, IntArrayRef dims) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::roll(const_cast<Tensor&>(*this), shifts, dims);
            break;
        default:
            AT_ERROR("roll not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::roll", "")
        .typed<Tensor (const Tensor &, IntArrayRef, IntArrayRef)>();
    return op.call(const_cast<Tensor&>(*this), shifts, dims);
#endif
}

// aten::rot90(Tensor self, int k=1, int[] dims=[0,1]) -> Tensor
Tensor Tensor::rot90(int64_t k, IntArrayRef dims) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::rot90(const_cast<Tensor&>(*this), k, dims);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::rot90", "")
        .typed<Tensor (const Tensor &, int64_t, IntArrayRef)>();
    return op.call(const_cast<Tensor&>(*this), k, dims);
#endif
}

// aten::true_divide.Tensor(Tensor self, Tensor other) -> Tensor
Tensor Tensor::true_divide(const Tensor & other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this, other);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::true_divide_Tensor(const_cast<Tensor&>(*this), other);
            break;
        default:
            AT_ERROR("true_divide not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::true_divide", "Tensor")
        .typed<Tensor (const Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::true_divide_.Tensor(Tensor(a!) self, Tensor other) -> Tensor(a!)
Tensor & Tensor::true_divide_(const Tensor & other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this, other);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::true_divide__Tensor(const_cast<Tensor&>(*this), other);
            break;
        default:
            AT_ERROR("true_divide_ not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::true_divide_", "Tensor")
        .typed<Tensor & (Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::true_divide.Scalar(Tensor self, Scalar other) -> Tensor
Tensor Tensor::true_divide(Scalar other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::true_divide_Scalar(const_cast<Tensor&>(*this), other);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::true_divide", "Scalar")
        .typed<Tensor (const Tensor &, Scalar)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::true_divide_.Scalar(Tensor(a!) self, Scalar other) -> Tensor(a!)
Tensor & Tensor::true_divide_(Scalar other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::true_divide__Scalar(const_cast<Tensor&>(*this), other);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::true_divide_", "Scalar")
        .typed<Tensor & (Tensor &, Scalar)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::trunc(Tensor self) -> Tensor
Tensor Tensor::trunc() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::trunc(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::trunc", "")
        .typed<Tensor (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::trunc_(Tensor(a!) self) -> Tensor(a!)
Tensor & Tensor::trunc_() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::trunc_(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::trunc_", "")
        .typed<Tensor & (Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::type_as(Tensor self, Tensor other) -> Tensor
Tensor Tensor::type_as(const Tensor & other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::type_as(const_cast<Tensor&>(*this), other);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::type_as", "")
        .typed<Tensor (const Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::unsqueeze(Tensor(a) self, int dim) -> Tensor(a)
Tensor Tensor::unsqueeze(int64_t dim) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::unsqueeze(const_cast<Tensor&>(*this), dim);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::unsqueeze", "")
        .typed<Tensor (const Tensor &, int64_t)>();
    return op.call(const_cast<Tensor&>(*this), dim);
#endif
}

// aten::unsqueeze_(Tensor(a!) self, int dim) -> Tensor(a!)
Tensor & Tensor::unsqueeze_(int64_t dim) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::unsqueeze_(const_cast<Tensor&>(*this), dim);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::unsqueeze_", "")
        .typed<Tensor & (Tensor &, int64_t)>();
    return op.call(const_cast<Tensor&>(*this), dim);
#endif
}

// aten::var(Tensor self, bool unbiased=True) -> Tensor
Tensor Tensor::var(bool unbiased) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::var(const_cast<Tensor&>(*this), unbiased);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::var", "")
        .typed<Tensor (const Tensor &, bool)>();
    return op.call(const_cast<Tensor&>(*this), unbiased);
#endif
}

// aten::var.dim(Tensor self, int[1] dim, bool unbiased=True, bool keepdim=False) -> Tensor
Tensor Tensor::var(IntArrayRef dim, bool unbiased, bool keepdim) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::var_dim(const_cast<Tensor&>(*this), dim, unbiased, keepdim);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::var", "dim")
        .typed<Tensor (const Tensor &, IntArrayRef, bool, bool)>();
    return op.call(const_cast<Tensor&>(*this), dim, unbiased, keepdim);
#endif
}

// aten::var.names_dim(Tensor self, Dimname[1] dim, bool unbiased=True, bool keepdim=False) -> Tensor
Tensor Tensor::var(DimnameList dim, bool unbiased, bool keepdim) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::var_names_dim(const_cast<Tensor&>(*this), dim, unbiased, keepdim);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::var", "names_dim")
        .typed<Tensor (const Tensor &, DimnameList, bool, bool)>();
    return op.call(const_cast<Tensor&>(*this), dim, unbiased, keepdim);
#endif
}

// aten::view_as(Tensor(a) self, Tensor other) -> Tensor(a)
Tensor Tensor::view_as(const Tensor & other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::view_as(const_cast<Tensor&>(*this), other);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::view_as", "")
        .typed<Tensor (const Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::where.self(Tensor condition, Tensor self, Tensor other) -> Tensor
Tensor Tensor::where(const Tensor & condition, const Tensor & other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::where_self(condition, const_cast<Tensor&>(*this), other);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::where", "self")
        .typed<Tensor (const Tensor &, const Tensor &, const Tensor &)>();
    return op.call(condition, const_cast<Tensor&>(*this), other);
#endif
}

// aten::norm.ScalarOpt_dtype(Tensor self, Scalar? p, *, ScalarType dtype) -> Tensor
Tensor Tensor::norm(c10::optional<Scalar> p, ScalarType dtype) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::norm_ScalarOpt_dtype(const_cast<Tensor&>(*this), p, dtype);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::norm", "ScalarOpt_dtype")
        .typed<Tensor (const Tensor &, c10::optional<Scalar>, ScalarType)>();
    return op.call(const_cast<Tensor&>(*this), p, dtype);
#endif
}

// aten::norm.Scalar(Tensor self, Scalar p=2) -> Tensor
Tensor Tensor::norm(Scalar p) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::norm_Scalar(const_cast<Tensor&>(*this), p);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::norm", "Scalar")
        .typed<Tensor (const Tensor &, Scalar)>();
    return op.call(const_cast<Tensor&>(*this), p);
#endif
}

// aten::norm.ScalarOpt_dim_dtype(Tensor self, Scalar? p, int[1] dim, bool keepdim, *, ScalarType dtype) -> Tensor
Tensor Tensor::norm(c10::optional<Scalar> p, IntArrayRef dim, bool keepdim, ScalarType dtype) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::norm_ScalarOpt_dim_dtype(const_cast<Tensor&>(*this), p, dim, keepdim, dtype);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::norm", "ScalarOpt_dim_dtype")
        .typed<Tensor (const Tensor &, c10::optional<Scalar>, IntArrayRef, bool, ScalarType)>();
    return op.call(const_cast<Tensor&>(*this), p, dim, keepdim, dtype);
#endif
}

// aten::norm.ScalarOpt_dim(Tensor self, Scalar? p, int[1] dim, bool keepdim=False) -> Tensor
Tensor Tensor::norm(c10::optional<Scalar> p, IntArrayRef dim, bool keepdim) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::norm_ScalarOpt_dim(const_cast<Tensor&>(*this), p, dim, keepdim);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::norm", "ScalarOpt_dim")
        .typed<Tensor (const Tensor &, c10::optional<Scalar>, IntArrayRef, bool)>();
    return op.call(const_cast<Tensor&>(*this), p, dim, keepdim);
#endif
}

// aten::norm.names_ScalarOpt_dim_dtype(Tensor self, Scalar? p, Dimname[1] dim, bool keepdim, *, ScalarType dtype) -> Tensor
Tensor Tensor::norm(c10::optional<Scalar> p, DimnameList dim, bool keepdim, ScalarType dtype) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::norm_names_ScalarOpt_dim_dtype(const_cast<Tensor&>(*this), p, dim, keepdim, dtype);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::norm", "names_ScalarOpt_dim_dtype")
        .typed<Tensor (const Tensor &, c10::optional<Scalar>, DimnameList, bool, ScalarType)>();
    return op.call(const_cast<Tensor&>(*this), p, dim, keepdim, dtype);
#endif
}

// aten::norm.names_ScalarOpt_dim(Tensor self, Scalar? p, Dimname[1] dim, bool keepdim=False) -> Tensor
Tensor Tensor::norm(c10::optional<Scalar> p, DimnameList dim, bool keepdim) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::norm_names_ScalarOpt_dim(const_cast<Tensor&>(*this), p, dim, keepdim);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::norm", "names_ScalarOpt_dim")
        .typed<Tensor (const Tensor &, c10::optional<Scalar>, DimnameList, bool)>();
    return op.call(const_cast<Tensor&>(*this), p, dim, keepdim);
#endif
}

// aten::clone(Tensor self, *, MemoryFormat? memory_format=None) -> Tensor
Tensor Tensor::clone(c10::optional<MemoryFormat> memory_format) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::clone(const_cast<Tensor&>(*this), memory_format);
            break;
        case Backend::QuantizedCPU:
            return QuantizedCPUType::clone(const_cast<Tensor&>(*this), memory_format);
            break;
        default:
            AT_ERROR("clone not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::clone", "")
        .typed<Tensor (const Tensor &, c10::optional<MemoryFormat>)>();
    return op.call(const_cast<Tensor&>(*this), memory_format);
#endif
}

// aten::resize_as_(Tensor(a!) self, Tensor the_template, *, MemoryFormat? memory_format=None) -> Tensor(a!)
Tensor & Tensor::resize_as_(const Tensor & the_template, c10::optional<MemoryFormat> memory_format) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::resize_as_(const_cast<Tensor&>(*this), the_template, memory_format);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::resize_as_", "")
        .typed<Tensor & (Tensor &, const Tensor &, c10::optional<MemoryFormat>)>();
    return op.call(const_cast<Tensor&>(*this), the_template, memory_format);
#endif
}

// aten::pow.Tensor_Scalar(Tensor self, Scalar exponent) -> Tensor
Tensor Tensor::pow(Scalar exponent) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::pow_Tensor_Scalar(const_cast<Tensor&>(*this), exponent);
            break;
        default:
            AT_ERROR("pow not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::pow", "Tensor_Scalar")
        .typed<Tensor (const Tensor &, Scalar)>();
    return op.call(const_cast<Tensor&>(*this), exponent);
#endif
}

// aten::zero_(Tensor(a!) self) -> Tensor(a!)
Tensor & Tensor::zero_() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::zero_(const_cast<Tensor&>(*this));
            break;
        default:
            AT_ERROR("zero_ not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::zero_", "")
        .typed<Tensor & (Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::sub.Tensor(Tensor self, Tensor other, *, Scalar alpha=1) -> Tensor
Tensor Tensor::sub(const Tensor & other, Scalar alpha) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this, other);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::sub_Tensor(const_cast<Tensor&>(*this), other, alpha);
            break;
        default:
            AT_ERROR("sub not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::sub", "Tensor")
        .typed<Tensor (const Tensor &, const Tensor &, Scalar)>();
    return op.call(const_cast<Tensor&>(*this), other, alpha);
#endif
}

// aten::sub_.Tensor(Tensor(a!) self, Tensor other, *, Scalar alpha=1) -> Tensor(a!)
Tensor & Tensor::sub_(const Tensor & other, Scalar alpha) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this, other);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::sub__Tensor(const_cast<Tensor&>(*this), other, alpha);
            break;
        default:
            AT_ERROR("sub_ not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::sub_", "Tensor")
        .typed<Tensor & (Tensor &, const Tensor &, Scalar)>();
    return op.call(const_cast<Tensor&>(*this), other, alpha);
#endif
}

// aten::sub.Scalar(Tensor self, Scalar other, Scalar alpha=1) -> Tensor
Tensor Tensor::sub(Scalar other, Scalar alpha) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::sub_Scalar(const_cast<Tensor&>(*this), other, alpha);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::sub", "Scalar")
        .typed<Tensor (const Tensor &, Scalar, Scalar)>();
    return op.call(const_cast<Tensor&>(*this), other, alpha);
#endif
}

// aten::sub_.Scalar(Tensor(a!) self, Scalar other, Scalar alpha=1) -> Tensor(a!)
Tensor & Tensor::sub_(Scalar other, Scalar alpha) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::sub__Scalar(const_cast<Tensor&>(*this), other, alpha);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::sub_", "Scalar")
        .typed<Tensor & (Tensor &, Scalar, Scalar)>();
    return op.call(const_cast<Tensor&>(*this), other, alpha);
#endif
}

// aten::addmm(Tensor self, Tensor mat1, Tensor mat2, *, Scalar beta=1, Scalar alpha=1) -> Tensor
Tensor Tensor::addmm(const Tensor & mat1, const Tensor & mat2, Scalar beta, Scalar alpha) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this, mat1, mat2);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::addmm(const_cast<Tensor&>(*this), mat1, mat2, beta, alpha);
            break;
        #ifdef USE_VULKAN
        case Backend::Vulkan:
            return VulkanType::addmm(const_cast<Tensor&>(*this), mat1, mat2, beta, alpha);
            break;
        #endif
        default:
            AT_ERROR("addmm not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::addmm", "")
        .typed<Tensor (const Tensor &, const Tensor &, const Tensor &, Scalar, Scalar)>();
    return op.call(const_cast<Tensor&>(*this), mat1, mat2, beta, alpha);
#endif
}

// aten::addmm_(Tensor(a!) self, Tensor mat1, Tensor mat2, *, Scalar beta=1, Scalar alpha=1) -> Tensor(a!)
Tensor & Tensor::addmm_(const Tensor & mat1, const Tensor & mat2, Scalar beta, Scalar alpha) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this, mat1, mat2);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::addmm_(const_cast<Tensor&>(*this), mat1, mat2, beta, alpha);
            break;
        default:
            AT_ERROR("addmm_ not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::addmm_", "")
        .typed<Tensor & (Tensor &, const Tensor &, const Tensor &, Scalar, Scalar)>();
    return op.call(const_cast<Tensor&>(*this), mat1, mat2, beta, alpha);
#endif
}

// aten::sparse_resize_(Tensor(a!) self, int[] size, int sparse_dim, int dense_dim) -> Tensor(a!)
Tensor & Tensor::sparse_resize_(IntArrayRef size, int64_t sparse_dim, int64_t dense_dim) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
    
        default:
            AT_ERROR("sparse_resize_ not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::sparse_resize_", "")
        .typed<Tensor & (Tensor &, IntArrayRef, int64_t, int64_t)>();
    return op.call(const_cast<Tensor&>(*this), size, sparse_dim, dense_dim);
#endif
}

// aten::sparse_resize_and_clear_(Tensor(a!) self, int[] size, int sparse_dim, int dense_dim) -> Tensor(a!)
Tensor & Tensor::sparse_resize_and_clear_(IntArrayRef size, int64_t sparse_dim, int64_t dense_dim) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
    
        default:
            AT_ERROR("sparse_resize_and_clear_ not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::sparse_resize_and_clear_", "")
        .typed<Tensor & (Tensor &, IntArrayRef, int64_t, int64_t)>();
    return op.call(const_cast<Tensor&>(*this), size, sparse_dim, dense_dim);
#endif
}

// aten::sparse_mask(Tensor self, Tensor mask) -> Tensor
Tensor Tensor::sparse_mask(const Tensor & mask) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this, mask);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
    
        default:
            AT_ERROR("sparse_mask not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::sparse_mask", "")
        .typed<Tensor (const Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), mask);
#endif
}

// aten::to_dense(Tensor self) -> Tensor
Tensor Tensor::to_dense() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
    
        default:
            AT_ERROR("to_dense not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::to_dense", "")
        .typed<Tensor (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::sparse_dim(Tensor self) -> int
int64_t Tensor::sparse_dim() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
    
        default:
            AT_ERROR("sparse_dim not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::sparse_dim", "")
        .typed<int64_t (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::_dimI(Tensor self) -> int
int64_t Tensor::_dimI() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
    
        default:
            AT_ERROR("_dimI not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::_dimI", "")
        .typed<int64_t (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::dense_dim(Tensor self) -> int
int64_t Tensor::dense_dim() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
    
        default:
            AT_ERROR("dense_dim not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::dense_dim", "")
        .typed<int64_t (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::_dimV(Tensor self) -> int
int64_t Tensor::_dimV() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
    
        default:
            AT_ERROR("_dimV not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::_dimV", "")
        .typed<int64_t (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::_nnz(Tensor self) -> int
int64_t Tensor::_nnz() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
    
        default:
            AT_ERROR("_nnz not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::_nnz", "")
        .typed<int64_t (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::coalesce(Tensor self) -> Tensor
Tensor Tensor::coalesce() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
    
        default:
            AT_ERROR("coalesce not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::coalesce", "")
        .typed<Tensor (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::is_coalesced(Tensor self) -> bool
bool Tensor::is_coalesced() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
    
        default:
            AT_ERROR("is_coalesced not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::is_coalesced", "")
        .typed<bool (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::_indices(Tensor(a) self) -> Tensor(a)
Tensor Tensor::_indices() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
    
        default:
            AT_ERROR("_indices not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::_indices", "")
        .typed<Tensor (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::_values(Tensor(a) self) -> Tensor(a)
Tensor Tensor::_values() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
    
        default:
            AT_ERROR("_values not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::_values", "")
        .typed<Tensor (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::_coalesced_(Tensor(a!) self, bool coalesced) -> Tensor(a!)
Tensor & Tensor::_coalesced_(bool coalesced) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
    
        default:
            AT_ERROR("_coalesced_ not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::_coalesced_", "")
        .typed<Tensor & (Tensor &, bool)>();
    return op.call(const_cast<Tensor&>(*this), coalesced);
#endif
}

// aten::indices(Tensor(a) self) -> Tensor(a)
Tensor Tensor::indices() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
    
        default:
            AT_ERROR("indices not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::indices", "")
        .typed<Tensor (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::values(Tensor(a) self) -> Tensor(a)
Tensor Tensor::values() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
    
        default:
            AT_ERROR("values not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::values", "")
        .typed<Tensor (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::unbind.int(Tensor(a) self, int dim=0) -> Tensor(a)[]
std::vector<Tensor> Tensor::unbind(int64_t dim) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::unbind_int(const_cast<Tensor&>(*this), dim);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::unbind", "int")
        .typed<std::vector<Tensor> (const Tensor &, int64_t)>();
    return op.call(const_cast<Tensor&>(*this), dim);
#endif
}

// aten::unbind.Dimname(Tensor(a) self, Dimname dim) -> Tensor(a)[]
std::vector<Tensor> Tensor::unbind(Dimname dim) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::unbind_Dimname(const_cast<Tensor&>(*this), dim);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::unbind", "Dimname")
        .typed<std::vector<Tensor> (const Tensor &, Dimname)>();
    return op.call(const_cast<Tensor&>(*this), dim);
#endif
}

// aten::to_sparse.sparse_dim(Tensor self, int sparse_dim) -> Tensor
Tensor Tensor::to_sparse(int64_t sparse_dim) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::to_sparse_sparse_dim(const_cast<Tensor&>(*this), sparse_dim);
            break;
        default:
            AT_ERROR("to_sparse not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::to_sparse", "sparse_dim")
        .typed<Tensor (const Tensor &, int64_t)>();
    return op.call(const_cast<Tensor&>(*this), sparse_dim);
#endif
}

// aten::to_sparse(Tensor self) -> Tensor
Tensor Tensor::to_sparse() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::to_sparse(const_cast<Tensor&>(*this));
            break;
        default:
            AT_ERROR("to_sparse not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::to_sparse", "")
        .typed<Tensor (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::to_mkldnn(Tensor self) -> Tensor
Tensor Tensor::to_mkldnn() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::to_mkldnn(const_cast<Tensor&>(*this));
            break;
        default:
            AT_ERROR("to_mkldnn not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::to_mkldnn", "")
        .typed<Tensor (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::dequantize.self(Tensor self) -> Tensor
Tensor Tensor::dequantize() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::QuantizedCPU:
            return QuantizedCPUType::dequantize_self(const_cast<Tensor&>(*this));
            break;
        default:
            AT_ERROR("dequantize not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::dequantize", "self")
        .typed<Tensor (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::q_scale(Tensor self) -> float
double Tensor::q_scale() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::QuantizedCPU:
            return QuantizedCPUType::q_scale(const_cast<Tensor&>(*this));
            break;
        default:
            AT_ERROR("q_scale not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::q_scale", "")
        .typed<double (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::q_zero_point(Tensor self) -> int
int64_t Tensor::q_zero_point() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::QuantizedCPU:
            return QuantizedCPUType::q_zero_point(const_cast<Tensor&>(*this));
            break;
        default:
            AT_ERROR("q_zero_point not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::q_zero_point", "")
        .typed<int64_t (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::q_per_channel_scales(Tensor self) -> Tensor
Tensor Tensor::q_per_channel_scales() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::QuantizedCPU:
            return QuantizedCPUType::q_per_channel_scales(const_cast<Tensor&>(*this));
            break;
        default:
            AT_ERROR("q_per_channel_scales not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::q_per_channel_scales", "")
        .typed<Tensor (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::q_per_channel_zero_points(Tensor self) -> Tensor
Tensor Tensor::q_per_channel_zero_points() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::QuantizedCPU:
            return QuantizedCPUType::q_per_channel_zero_points(const_cast<Tensor&>(*this));
            break;
        default:
            AT_ERROR("q_per_channel_zero_points not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::q_per_channel_zero_points", "")
        .typed<Tensor (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::q_per_channel_axis(Tensor self) -> int
int64_t Tensor::q_per_channel_axis() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::QuantizedCPU:
            return QuantizedCPUType::q_per_channel_axis(const_cast<Tensor&>(*this));
            break;
        default:
            AT_ERROR("q_per_channel_axis not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::q_per_channel_axis", "")
        .typed<int64_t (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::int_repr(Tensor self) -> Tensor
Tensor Tensor::int_repr() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::QuantizedCPU:
            return QuantizedCPUType::int_repr(const_cast<Tensor&>(*this));
            break;
        default:
            AT_ERROR("int_repr not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::int_repr", "")
        .typed<Tensor (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::qscheme(Tensor self) -> QScheme
QScheme Tensor::qscheme() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::QuantizedCPU:
            return QuantizedCPUType::qscheme(const_cast<Tensor&>(*this));
            break;
        default:
            AT_ERROR("qscheme not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::qscheme", "")
        .typed<QScheme (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::to.dtype_layout(Tensor self, *, ScalarType dtype, Layout layout, Device device, bool pin_memory=False, bool non_blocking=False, bool copy=False, MemoryFormat? memory_format=None) -> Tensor
Tensor Tensor::to(const TensorOptions & options, bool non_blocking, bool copy, c10::optional<MemoryFormat> memory_format) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::to_dtype_layout(const_cast<Tensor&>(*this), options, non_blocking, copy, memory_format);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::to", "dtype_layout")
        .typed<Tensor (const Tensor &, const TensorOptions &, bool, bool, c10::optional<MemoryFormat>)>();
    return op.call(const_cast<Tensor&>(*this), options, non_blocking, copy, memory_format);
#endif
}

// aten::to.device(Tensor self, Device device, ScalarType dtype, bool non_blocking=False, bool copy=False, MemoryFormat? memory_format=None) -> Tensor
Tensor Tensor::to(Device device, ScalarType dtype, bool non_blocking, bool copy, c10::optional<MemoryFormat> memory_format) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::to_device(const_cast<Tensor&>(*this), device, dtype, non_blocking, copy, memory_format);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::to", "device")
        .typed<Tensor (const Tensor &, Device, ScalarType, bool, bool, c10::optional<MemoryFormat>)>();
    return op.call(const_cast<Tensor&>(*this), device, dtype, non_blocking, copy, memory_format);
#endif
}

// aten::to.dtype(Tensor self, ScalarType dtype, bool non_blocking=False, bool copy=False, MemoryFormat? memory_format=None) -> Tensor
Tensor Tensor::to(ScalarType dtype, bool non_blocking, bool copy, c10::optional<MemoryFormat> memory_format) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::to_dtype(const_cast<Tensor&>(*this), dtype, non_blocking, copy, memory_format);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::to", "dtype")
        .typed<Tensor (const Tensor &, ScalarType, bool, bool, c10::optional<MemoryFormat>)>();
    return op.call(const_cast<Tensor&>(*this), dtype, non_blocking, copy, memory_format);
#endif
}

// aten::to.other(Tensor self, Tensor other, bool non_blocking=False, bool copy=False, MemoryFormat? memory_format=None) -> Tensor
Tensor Tensor::to(const Tensor & other, bool non_blocking, bool copy, c10::optional<MemoryFormat> memory_format) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::to_other(const_cast<Tensor&>(*this), other, non_blocking, copy, memory_format);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::to", "other")
        .typed<Tensor (const Tensor &, const Tensor &, bool, bool, c10::optional<MemoryFormat>)>();
    return op.call(const_cast<Tensor&>(*this), other, non_blocking, copy, memory_format);
#endif
}

// aten::item(Tensor self) -> Scalar
Scalar Tensor::item() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::item(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::item", "")
        .typed<Scalar (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::set_.source_Storage(Tensor(a!) self, Storage source) -> Tensor(a!)
Tensor & Tensor::set_(Storage source) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::set__source_Storage(const_cast<Tensor&>(*this), source);
            break;
        default:
            AT_ERROR("set_ not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::set_", "source_Storage")
        .typed<Tensor & (Tensor &, Storage)>();
    return op.call(const_cast<Tensor&>(*this), source);
#endif
}

// aten::set_.source_Storage_storage_offset(Tensor(a!) self, Storage source, int storage_offset, int[] size, int[] stride=[]) -> Tensor(a!)
Tensor & Tensor::set_(Storage source, int64_t storage_offset, IntArrayRef size, IntArrayRef stride) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::set__source_Storage_storage_offset(const_cast<Tensor&>(*this), source, storage_offset, size, stride);
            break;
        case Backend::QuantizedCPU:
            return QuantizedCPUType::set__source_Storage_storage_offset(const_cast<Tensor&>(*this), source, storage_offset, size, stride);
            break;
        default:
            AT_ERROR("set_ not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::set_", "source_Storage_storage_offset")
        .typed<Tensor & (Tensor &, Storage, int64_t, IntArrayRef, IntArrayRef)>();
    return op.call(const_cast<Tensor&>(*this), source, storage_offset, size, stride);
#endif
}

// aten::set_.source_Tensor(Tensor(a!) self, Tensor source) -> Tensor(a!)
Tensor & Tensor::set_(const Tensor & source) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this, source);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::set__source_Tensor(const_cast<Tensor&>(*this), source);
            break;
        default:
            AT_ERROR("set_ not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::set_", "source_Tensor")
        .typed<Tensor & (Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), source);
#endif
}

// aten::set_(Tensor(a!) self) -> Tensor(a!)
Tensor & Tensor::set_() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::set_(const_cast<Tensor&>(*this));
            break;
        default:
            AT_ERROR("set_ not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::set_", "")
        .typed<Tensor & (Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::set_quantizer_(Tensor(a!) self, ConstQuantizerPtr quantizer) -> Tensor(a!)
Tensor & Tensor::set_quantizer_(ConstQuantizerPtr quantizer) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::QuantizedCPU:
            return QuantizedCPUType::set_quantizer_(const_cast<Tensor&>(*this), quantizer);
            break;
        default:
            AT_ERROR("set_quantizer_ not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::set_quantizer_", "")
        .typed<Tensor & (Tensor &, ConstQuantizerPtr)>();
    return op.call(const_cast<Tensor&>(*this), quantizer);
#endif
}

// aten::is_set_to(Tensor self, Tensor tensor) -> bool
bool Tensor::is_set_to(const Tensor & tensor) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this, tensor);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::is_set_to(const_cast<Tensor&>(*this), tensor);
            break;
        default:
            AT_ERROR("is_set_to not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::is_set_to", "")
        .typed<bool (const Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), tensor);
#endif
}

// aten::masked_fill_.Scalar(Tensor(a!) self, Tensor mask, Scalar value) -> Tensor(a!)
Tensor & Tensor::masked_fill_(const Tensor & mask, Scalar value) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this, mask);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::masked_fill__Scalar(const_cast<Tensor&>(*this), mask, value);
            break;
        default:
            AT_ERROR("masked_fill_ not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::masked_fill_", "Scalar")
        .typed<Tensor & (Tensor &, const Tensor &, Scalar)>();
    return op.call(const_cast<Tensor&>(*this), mask, value);
#endif
}

// aten::masked_fill.Scalar(Tensor self, Tensor mask, Scalar value) -> Tensor
Tensor Tensor::masked_fill(const Tensor & mask, Scalar value) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::masked_fill_Scalar(const_cast<Tensor&>(*this), mask, value);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::masked_fill", "Scalar")
        .typed<Tensor (const Tensor &, const Tensor &, Scalar)>();
    return op.call(const_cast<Tensor&>(*this), mask, value);
#endif
}

// aten::masked_fill_.Tensor(Tensor(a!) self, Tensor mask, Tensor value) -> Tensor(a!)
Tensor & Tensor::masked_fill_(const Tensor & mask, const Tensor & value) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this, mask, value);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::masked_fill__Tensor(const_cast<Tensor&>(*this), mask, value);
            break;
        default:
            AT_ERROR("masked_fill_ not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::masked_fill_", "Tensor")
        .typed<Tensor & (Tensor &, const Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), mask, value);
#endif
}

// aten::masked_fill.Tensor(Tensor self, Tensor mask, Tensor value) -> Tensor
Tensor Tensor::masked_fill(const Tensor & mask, const Tensor & value) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::masked_fill_Tensor(const_cast<Tensor&>(*this), mask, value);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::masked_fill", "Tensor")
        .typed<Tensor (const Tensor &, const Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), mask, value);
#endif
}

// aten::masked_scatter_(Tensor(a!) self, Tensor mask, Tensor source) -> Tensor(a!)
Tensor & Tensor::masked_scatter_(const Tensor & mask, const Tensor & source) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this, mask, source);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::masked_scatter_(const_cast<Tensor&>(*this), mask, source);
            break;
        default:
            AT_ERROR("masked_scatter_ not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::masked_scatter_", "")
        .typed<Tensor & (Tensor &, const Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), mask, source);
#endif
}

// aten::masked_scatter(Tensor self, Tensor mask, Tensor source) -> Tensor
Tensor Tensor::masked_scatter(const Tensor & mask, const Tensor & source) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::masked_scatter(const_cast<Tensor&>(*this), mask, source);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::masked_scatter", "")
        .typed<Tensor (const Tensor &, const Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), mask, source);
#endif
}

// aten::view(Tensor(a) self, int[] size) -> Tensor(a)
Tensor Tensor::view(IntArrayRef size) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::view(const_cast<Tensor&>(*this), size);
            break;
        case Backend::QuantizedCPU:
            return QuantizedCPUType::view(const_cast<Tensor&>(*this), size);
            break;
        default:
            AT_ERROR("view not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::view", "")
        .typed<Tensor (const Tensor &, IntArrayRef)>();
    return op.call(const_cast<Tensor&>(*this), size);
#endif
}

// aten::put_(Tensor(a!) self, Tensor index, Tensor source, bool accumulate=False) -> Tensor(a!)
Tensor & Tensor::put_(const Tensor & index, const Tensor & source, bool accumulate) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this, index, source);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::put_(const_cast<Tensor&>(*this), index, source, accumulate);
            break;
        default:
            AT_ERROR("put_ not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::put_", "")
        .typed<Tensor & (Tensor &, const Tensor &, const Tensor &, bool)>();
    return op.call(const_cast<Tensor&>(*this), index, source, accumulate);
#endif
}

// aten::index_add_(Tensor(a!) self, int dim, Tensor index, Tensor source) -> Tensor(a!)
Tensor & Tensor::index_add_(int64_t dim, const Tensor & index, const Tensor & source) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this, index, source);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::index_add_(const_cast<Tensor&>(*this), dim, index, source);
            break;
        default:
            AT_ERROR("index_add_ not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::index_add_", "")
        .typed<Tensor & (Tensor &, int64_t, const Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), dim, index, source);
#endif
}

// aten::index_add(Tensor self, int dim, Tensor index, Tensor source) -> Tensor
Tensor Tensor::index_add(int64_t dim, const Tensor & index, const Tensor & source) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::index_add(const_cast<Tensor&>(*this), dim, index, source);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::index_add", "")
        .typed<Tensor (const Tensor &, int64_t, const Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), dim, index, source);
#endif
}

// aten::index_add.dimname(Tensor self, Dimname dim, Tensor index, Tensor source) -> Tensor
Tensor Tensor::index_add(Dimname dim, const Tensor & index, const Tensor & source) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::index_add_dimname(const_cast<Tensor&>(*this), dim, index, source);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::index_add", "dimname")
        .typed<Tensor (const Tensor &, Dimname, const Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), dim, index, source);
#endif
}

// aten::index_fill_.int_Scalar(Tensor(a!) self, int dim, Tensor index, Scalar value) -> Tensor(a!)
Tensor & Tensor::index_fill_(int64_t dim, const Tensor & index, Scalar value) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this, index);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::index_fill__int_Scalar(const_cast<Tensor&>(*this), dim, index, value);
            break;
        default:
            AT_ERROR("index_fill_ not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::index_fill_", "int_Scalar")
        .typed<Tensor & (Tensor &, int64_t, const Tensor &, Scalar)>();
    return op.call(const_cast<Tensor&>(*this), dim, index, value);
#endif
}

// aten::index_fill.int_Scalar(Tensor self, int dim, Tensor index, Scalar value) -> Tensor
Tensor Tensor::index_fill(int64_t dim, const Tensor & index, Scalar value) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::index_fill_int_Scalar(const_cast<Tensor&>(*this), dim, index, value);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::index_fill", "int_Scalar")
        .typed<Tensor (const Tensor &, int64_t, const Tensor &, Scalar)>();
    return op.call(const_cast<Tensor&>(*this), dim, index, value);
#endif
}

// aten::index_fill_.int_Tensor(Tensor(a!) self, int dim, Tensor index, Tensor value) -> Tensor(a!)
Tensor & Tensor::index_fill_(int64_t dim, const Tensor & index, const Tensor & value) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this, index, value);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::index_fill__int_Tensor(const_cast<Tensor&>(*this), dim, index, value);
            break;
        default:
            AT_ERROR("index_fill_ not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::index_fill_", "int_Tensor")
        .typed<Tensor & (Tensor &, int64_t, const Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), dim, index, value);
#endif
}

// aten::index_fill.int_Tensor(Tensor self, int dim, Tensor index, Tensor value) -> Tensor
Tensor Tensor::index_fill(int64_t dim, const Tensor & index, const Tensor & value) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::index_fill_int_Tensor(const_cast<Tensor&>(*this), dim, index, value);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::index_fill", "int_Tensor")
        .typed<Tensor (const Tensor &, int64_t, const Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), dim, index, value);
#endif
}

// aten::index_fill_.Dimname_Scalar(Tensor(a!) self, Dimname dim, Tensor index, Scalar value) -> Tensor(a!)
Tensor & Tensor::index_fill_(Dimname dim, const Tensor & index, Scalar value) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::index_fill__Dimname_Scalar(const_cast<Tensor&>(*this), dim, index, value);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::index_fill_", "Dimname_Scalar")
        .typed<Tensor & (Tensor &, Dimname, const Tensor &, Scalar)>();
    return op.call(const_cast<Tensor&>(*this), dim, index, value);
#endif
}

// aten::index_fill_.Dimname_Tensor(Tensor(a!) self, Dimname dim, Tensor index, Tensor value) -> Tensor(a!)
Tensor & Tensor::index_fill_(Dimname dim, const Tensor & index, const Tensor & value) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::index_fill__Dimname_Tensor(const_cast<Tensor&>(*this), dim, index, value);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::index_fill_", "Dimname_Tensor")
        .typed<Tensor & (Tensor &, Dimname, const Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), dim, index, value);
#endif
}

// aten::index_fill.Dimname_Scalar(Tensor self, Dimname dim, Tensor index, Scalar value) -> Tensor
Tensor Tensor::index_fill(Dimname dim, const Tensor & index, Scalar value) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::index_fill_Dimname_Scalar(const_cast<Tensor&>(*this), dim, index, value);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::index_fill", "Dimname_Scalar")
        .typed<Tensor (const Tensor &, Dimname, const Tensor &, Scalar)>();
    return op.call(const_cast<Tensor&>(*this), dim, index, value);
#endif
}

// aten::index_fill.Dimname_Tensor(Tensor self, Dimname dim, Tensor index, Tensor value) -> Tensor
Tensor Tensor::index_fill(Dimname dim, const Tensor & index, const Tensor & value) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::index_fill_Dimname_Tensor(const_cast<Tensor&>(*this), dim, index, value);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::index_fill", "Dimname_Tensor")
        .typed<Tensor (const Tensor &, Dimname, const Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), dim, index, value);
#endif
}

// aten::scatter_.src(Tensor(a!) self, int dim, Tensor index, Tensor src) -> Tensor(a!)
Tensor & Tensor::scatter_(int64_t dim, const Tensor & index, const Tensor & src) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this, index, src);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::scatter__src(const_cast<Tensor&>(*this), dim, index, src);
            break;
        default:
            AT_ERROR("scatter_ not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::scatter_", "src")
        .typed<Tensor & (Tensor &, int64_t, const Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), dim, index, src);
#endif
}

// aten::scatter.src(Tensor self, int dim, Tensor index, Tensor src) -> Tensor
Tensor Tensor::scatter(int64_t dim, const Tensor & index, const Tensor & src) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::scatter_src(const_cast<Tensor&>(*this), dim, index, src);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::scatter", "src")
        .typed<Tensor (const Tensor &, int64_t, const Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), dim, index, src);
#endif
}

// aten::scatter_.value(Tensor(a!) self, int dim, Tensor index, Scalar value) -> Tensor(a!)
Tensor & Tensor::scatter_(int64_t dim, const Tensor & index, Scalar value) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this, index);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::scatter__value(const_cast<Tensor&>(*this), dim, index, value);
            break;
        default:
            AT_ERROR("scatter_ not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::scatter_", "value")
        .typed<Tensor & (Tensor &, int64_t, const Tensor &, Scalar)>();
    return op.call(const_cast<Tensor&>(*this), dim, index, value);
#endif
}

// aten::scatter.value(Tensor self, int dim, Tensor index, Scalar value) -> Tensor
Tensor Tensor::scatter(int64_t dim, const Tensor & index, Scalar value) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::scatter_value(const_cast<Tensor&>(*this), dim, index, value);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::scatter", "value")
        .typed<Tensor (const Tensor &, int64_t, const Tensor &, Scalar)>();
    return op.call(const_cast<Tensor&>(*this), dim, index, value);
#endif
}

// aten::scatter.dimname_src(Tensor self, Dimname dim, Tensor index, Tensor src) -> Tensor
Tensor Tensor::scatter(Dimname dim, const Tensor & index, const Tensor & src) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::scatter_dimname_src(const_cast<Tensor&>(*this), dim, index, src);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::scatter", "dimname_src")
        .typed<Tensor (const Tensor &, Dimname, const Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), dim, index, src);
#endif
}

// aten::scatter.dimname_value(Tensor self, Dimname dim, Tensor index, Scalar value) -> Tensor
Tensor Tensor::scatter(Dimname dim, const Tensor & index, Scalar value) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::scatter_dimname_value(const_cast<Tensor&>(*this), dim, index, value);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::scatter", "dimname_value")
        .typed<Tensor (const Tensor &, Dimname, const Tensor &, Scalar)>();
    return op.call(const_cast<Tensor&>(*this), dim, index, value);
#endif
}

// aten::scatter_.reduce(Tensor(a!) self, int dim, Tensor index, Tensor src, *, str reduce) -> Tensor(a!)
Tensor & Tensor::scatter_(int64_t dim, const Tensor & index, const Tensor & src, std::string reduce) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this, index, src);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::scatter__reduce(const_cast<Tensor&>(*this), dim, index, src, reduce);
            break;
        default:
            AT_ERROR("scatter_ not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::scatter_", "reduce")
        .typed<Tensor & (Tensor &, int64_t, const Tensor &, const Tensor &, std::string)>();
    return op.call(const_cast<Tensor&>(*this), dim, index, src, reduce);
#endif
}

// aten::scatter_.value_reduce(Tensor(a!) self, int dim, Tensor index, Scalar value, *, str reduce) -> Tensor(a!)
Tensor & Tensor::scatter_(int64_t dim, const Tensor & index, Scalar value, std::string reduce) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this, index);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::scatter__value_reduce(const_cast<Tensor&>(*this), dim, index, value, reduce);
            break;
        default:
            AT_ERROR("scatter_ not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::scatter_", "value_reduce")
        .typed<Tensor & (Tensor &, int64_t, const Tensor &, Scalar, std::string)>();
    return op.call(const_cast<Tensor&>(*this), dim, index, value, reduce);
#endif
}

// aten::scatter_add_(Tensor(a!) self, int dim, Tensor index, Tensor src) -> Tensor(a!)
Tensor & Tensor::scatter_add_(int64_t dim, const Tensor & index, const Tensor & src) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this, index, src);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::scatter_add_(const_cast<Tensor&>(*this), dim, index, src);
            break;
        default:
            AT_ERROR("scatter_add_ not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::scatter_add_", "")
        .typed<Tensor & (Tensor &, int64_t, const Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), dim, index, src);
#endif
}

// aten::scatter_add(Tensor self, int dim, Tensor index, Tensor src) -> Tensor
Tensor Tensor::scatter_add(int64_t dim, const Tensor & index, const Tensor & src) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::scatter_add(const_cast<Tensor&>(*this), dim, index, src);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::scatter_add", "")
        .typed<Tensor (const Tensor &, int64_t, const Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), dim, index, src);
#endif
}

// aten::scatter_add.dimname(Tensor self, Dimname dim, Tensor index, Tensor src) -> Tensor
Tensor Tensor::scatter_add(Dimname dim, const Tensor & index, const Tensor & src) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::scatter_add_dimname(const_cast<Tensor&>(*this), dim, index, src);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::scatter_add", "dimname")
        .typed<Tensor (const Tensor &, Dimname, const Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), dim, index, src);
#endif
}

// aten::lt_.Scalar(Tensor(a!) self, Scalar other) -> Tensor(a!)
Tensor & Tensor::lt_(Scalar other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::lt__Scalar(const_cast<Tensor&>(*this), other);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::lt_", "Scalar")
        .typed<Tensor & (Tensor &, Scalar)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::lt_.Tensor(Tensor(a!) self, Tensor other) -> Tensor(a!)
Tensor & Tensor::lt_(const Tensor & other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::lt__Tensor(const_cast<Tensor&>(*this), other);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::lt_", "Tensor")
        .typed<Tensor & (Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::gt_.Scalar(Tensor(a!) self, Scalar other) -> Tensor(a!)
Tensor & Tensor::gt_(Scalar other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::gt__Scalar(const_cast<Tensor&>(*this), other);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::gt_", "Scalar")
        .typed<Tensor & (Tensor &, Scalar)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::gt_.Tensor(Tensor(a!) self, Tensor other) -> Tensor(a!)
Tensor & Tensor::gt_(const Tensor & other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::gt__Tensor(const_cast<Tensor&>(*this), other);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::gt_", "Tensor")
        .typed<Tensor & (Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::le_.Scalar(Tensor(a!) self, Scalar other) -> Tensor(a!)
Tensor & Tensor::le_(Scalar other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::le__Scalar(const_cast<Tensor&>(*this), other);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::le_", "Scalar")
        .typed<Tensor & (Tensor &, Scalar)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::le_.Tensor(Tensor(a!) self, Tensor other) -> Tensor(a!)
Tensor & Tensor::le_(const Tensor & other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::le__Tensor(const_cast<Tensor&>(*this), other);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::le_", "Tensor")
        .typed<Tensor & (Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::ge_.Scalar(Tensor(a!) self, Scalar other) -> Tensor(a!)
Tensor & Tensor::ge_(Scalar other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::ge__Scalar(const_cast<Tensor&>(*this), other);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::ge_", "Scalar")
        .typed<Tensor & (Tensor &, Scalar)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::ge_.Tensor(Tensor(a!) self, Tensor other) -> Tensor(a!)
Tensor & Tensor::ge_(const Tensor & other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::ge__Tensor(const_cast<Tensor&>(*this), other);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::ge_", "Tensor")
        .typed<Tensor & (Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::eq_.Scalar(Tensor(a!) self, Scalar other) -> Tensor(a!)
Tensor & Tensor::eq_(Scalar other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::eq__Scalar(const_cast<Tensor&>(*this), other);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::eq_", "Scalar")
        .typed<Tensor & (Tensor &, Scalar)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::eq_.Tensor(Tensor(a!) self, Tensor other) -> Tensor(a!)
Tensor & Tensor::eq_(const Tensor & other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::eq__Tensor(const_cast<Tensor&>(*this), other);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::eq_", "Tensor")
        .typed<Tensor & (Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::ne_.Scalar(Tensor(a!) self, Scalar other) -> Tensor(a!)
Tensor & Tensor::ne_(Scalar other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::ne__Scalar(const_cast<Tensor&>(*this), other);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::ne_", "Scalar")
        .typed<Tensor & (Tensor &, Scalar)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::ne_.Tensor(Tensor(a!) self, Tensor other) -> Tensor(a!)
Tensor & Tensor::ne_(const Tensor & other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::ne__Tensor(const_cast<Tensor&>(*this), other);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::ne_", "Tensor")
        .typed<Tensor & (Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::bitwise_and.Scalar(Tensor self, Scalar other) -> Tensor
Tensor Tensor::bitwise_and(Scalar other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::bitwise_and_Scalar(const_cast<Tensor&>(*this), other);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::bitwise_and", "Scalar")
        .typed<Tensor (const Tensor &, Scalar)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::bitwise_and.Tensor(Tensor self, Tensor other) -> Tensor
Tensor Tensor::bitwise_and(const Tensor & other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::bitwise_and_Tensor(const_cast<Tensor&>(*this), other);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::bitwise_and", "Tensor")
        .typed<Tensor (const Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::bitwise_and_.Scalar(Tensor(a!) self, Scalar other) -> Tensor(a!)
Tensor & Tensor::bitwise_and_(Scalar other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::bitwise_and__Scalar(const_cast<Tensor&>(*this), other);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::bitwise_and_", "Scalar")
        .typed<Tensor & (Tensor &, Scalar)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::bitwise_and_.Tensor(Tensor(a!) self, Tensor other) -> Tensor(a!)
Tensor & Tensor::bitwise_and_(const Tensor & other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::bitwise_and__Tensor(const_cast<Tensor&>(*this), other);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::bitwise_and_", "Tensor")
        .typed<Tensor & (Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::__and__.Scalar(Tensor self, Scalar other) -> Tensor
Tensor Tensor::__and__(Scalar other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::__and___Scalar(const_cast<Tensor&>(*this), other);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::__and__", "Scalar")
        .typed<Tensor (const Tensor &, Scalar)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::__and__.Tensor(Tensor self, Tensor other) -> Tensor
Tensor Tensor::__and__(const Tensor & other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::__and___Tensor(const_cast<Tensor&>(*this), other);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::__and__", "Tensor")
        .typed<Tensor (const Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::__iand__.Scalar(Tensor(a!) self, Scalar other) -> Tensor(a!)
Tensor & Tensor::__iand__(Scalar other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::__iand___Scalar(const_cast<Tensor&>(*this), other);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::__iand__", "Scalar")
        .typed<Tensor & (Tensor &, Scalar)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::__iand__.Tensor(Tensor(a!) self, Tensor other) -> Tensor(a!)
Tensor & Tensor::__iand__(const Tensor & other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::__iand___Tensor(const_cast<Tensor&>(*this), other);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::__iand__", "Tensor")
        .typed<Tensor & (Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::bitwise_or.Scalar(Tensor self, Scalar other) -> Tensor
Tensor Tensor::bitwise_or(Scalar other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::bitwise_or_Scalar(const_cast<Tensor&>(*this), other);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::bitwise_or", "Scalar")
        .typed<Tensor (const Tensor &, Scalar)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::bitwise_or.Tensor(Tensor self, Tensor other) -> Tensor
Tensor Tensor::bitwise_or(const Tensor & other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::bitwise_or_Tensor(const_cast<Tensor&>(*this), other);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::bitwise_or", "Tensor")
        .typed<Tensor (const Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::bitwise_or_.Scalar(Tensor(a!) self, Scalar other) -> Tensor(a!)
Tensor & Tensor::bitwise_or_(Scalar other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::bitwise_or__Scalar(const_cast<Tensor&>(*this), other);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::bitwise_or_", "Scalar")
        .typed<Tensor & (Tensor &, Scalar)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::bitwise_or_.Tensor(Tensor(a!) self, Tensor other) -> Tensor(a!)
Tensor & Tensor::bitwise_or_(const Tensor & other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::bitwise_or__Tensor(const_cast<Tensor&>(*this), other);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::bitwise_or_", "Tensor")
        .typed<Tensor & (Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::__or__.Scalar(Tensor self, Scalar other) -> Tensor
Tensor Tensor::__or__(Scalar other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::__or___Scalar(const_cast<Tensor&>(*this), other);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::__or__", "Scalar")
        .typed<Tensor (const Tensor &, Scalar)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::__or__.Tensor(Tensor self, Tensor other) -> Tensor
Tensor Tensor::__or__(const Tensor & other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::__or___Tensor(const_cast<Tensor&>(*this), other);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::__or__", "Tensor")
        .typed<Tensor (const Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::__ior__.Scalar(Tensor(a!) self, Scalar other) -> Tensor(a!)
Tensor & Tensor::__ior__(Scalar other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::__ior___Scalar(const_cast<Tensor&>(*this), other);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::__ior__", "Scalar")
        .typed<Tensor & (Tensor &, Scalar)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::__ior__.Tensor(Tensor(a!) self, Tensor other) -> Tensor(a!)
Tensor & Tensor::__ior__(const Tensor & other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::__ior___Tensor(const_cast<Tensor&>(*this), other);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::__ior__", "Tensor")
        .typed<Tensor & (Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::bitwise_xor.Scalar(Tensor self, Scalar other) -> Tensor
Tensor Tensor::bitwise_xor(Scalar other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::bitwise_xor_Scalar(const_cast<Tensor&>(*this), other);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::bitwise_xor", "Scalar")
        .typed<Tensor (const Tensor &, Scalar)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::bitwise_xor.Tensor(Tensor self, Tensor other) -> Tensor
Tensor Tensor::bitwise_xor(const Tensor & other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::bitwise_xor_Tensor(const_cast<Tensor&>(*this), other);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::bitwise_xor", "Tensor")
        .typed<Tensor (const Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::bitwise_xor_.Scalar(Tensor(a!) self, Scalar other) -> Tensor(a!)
Tensor & Tensor::bitwise_xor_(Scalar other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::bitwise_xor__Scalar(const_cast<Tensor&>(*this), other);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::bitwise_xor_", "Scalar")
        .typed<Tensor & (Tensor &, Scalar)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::bitwise_xor_.Tensor(Tensor(a!) self, Tensor other) -> Tensor(a!)
Tensor & Tensor::bitwise_xor_(const Tensor & other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::bitwise_xor__Tensor(const_cast<Tensor&>(*this), other);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::bitwise_xor_", "Tensor")
        .typed<Tensor & (Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::__xor__.Scalar(Tensor self, Scalar other) -> Tensor
Tensor Tensor::__xor__(Scalar other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::__xor___Scalar(const_cast<Tensor&>(*this), other);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::__xor__", "Scalar")
        .typed<Tensor (const Tensor &, Scalar)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::__xor__.Tensor(Tensor self, Tensor other) -> Tensor
Tensor Tensor::__xor__(const Tensor & other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::__xor___Tensor(const_cast<Tensor&>(*this), other);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::__xor__", "Tensor")
        .typed<Tensor (const Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::__ixor__.Scalar(Tensor(a!) self, Scalar other) -> Tensor(a!)
Tensor & Tensor::__ixor__(Scalar other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::__ixor___Scalar(const_cast<Tensor&>(*this), other);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::__ixor__", "Scalar")
        .typed<Tensor & (Tensor &, Scalar)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::__ixor__.Tensor(Tensor(a!) self, Tensor other) -> Tensor(a!)
Tensor & Tensor::__ixor__(const Tensor & other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::__ixor___Tensor(const_cast<Tensor&>(*this), other);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::__ixor__", "Tensor")
        .typed<Tensor & (Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::__lshift__.Scalar(Tensor self, Scalar other) -> Tensor
Tensor Tensor::__lshift__(Scalar other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::__lshift___Scalar(const_cast<Tensor&>(*this), other);
            break;
        default:
            AT_ERROR("__lshift__ not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::__lshift__", "Scalar")
        .typed<Tensor (const Tensor &, Scalar)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::__lshift__.Tensor(Tensor self, Tensor other) -> Tensor
Tensor Tensor::__lshift__(const Tensor & other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this, other);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::__lshift___Tensor(const_cast<Tensor&>(*this), other);
            break;
        default:
            AT_ERROR("__lshift__ not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::__lshift__", "Tensor")
        .typed<Tensor (const Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::__ilshift__.Scalar(Tensor(a!) self, Scalar other) -> Tensor(a!)
Tensor & Tensor::__ilshift__(Scalar other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::__ilshift___Scalar(const_cast<Tensor&>(*this), other);
            break;
        default:
            AT_ERROR("__ilshift__ not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::__ilshift__", "Scalar")
        .typed<Tensor & (Tensor &, Scalar)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::__ilshift__.Tensor(Tensor(a!) self, Tensor other) -> Tensor(a!)
Tensor & Tensor::__ilshift__(const Tensor & other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this, other);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::__ilshift___Tensor(const_cast<Tensor&>(*this), other);
            break;
        default:
            AT_ERROR("__ilshift__ not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::__ilshift__", "Tensor")
        .typed<Tensor & (Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::__rshift__.Scalar(Tensor self, Scalar other) -> Tensor
Tensor Tensor::__rshift__(Scalar other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::__rshift___Scalar(const_cast<Tensor&>(*this), other);
            break;
        default:
            AT_ERROR("__rshift__ not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::__rshift__", "Scalar")
        .typed<Tensor (const Tensor &, Scalar)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::__rshift__.Tensor(Tensor self, Tensor other) -> Tensor
Tensor Tensor::__rshift__(const Tensor & other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this, other);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::__rshift___Tensor(const_cast<Tensor&>(*this), other);
            break;
        default:
            AT_ERROR("__rshift__ not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::__rshift__", "Tensor")
        .typed<Tensor (const Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::__irshift__.Scalar(Tensor(a!) self, Scalar other) -> Tensor(a!)
Tensor & Tensor::__irshift__(Scalar other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::__irshift___Scalar(const_cast<Tensor&>(*this), other);
            break;
        default:
            AT_ERROR("__irshift__ not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::__irshift__", "Scalar")
        .typed<Tensor & (Tensor &, Scalar)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::__irshift__.Tensor(Tensor(a!) self, Tensor other) -> Tensor(a!)
Tensor & Tensor::__irshift__(const Tensor & other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this, other);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::__irshift___Tensor(const_cast<Tensor&>(*this), other);
            break;
        default:
            AT_ERROR("__irshift__ not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::__irshift__", "Tensor")
        .typed<Tensor & (Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::lgamma_(Tensor(a!) self) -> Tensor(a!)
Tensor & Tensor::lgamma_() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::lgamma_(const_cast<Tensor&>(*this));
            break;
        default:
            AT_ERROR("lgamma_ not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::lgamma_", "")
        .typed<Tensor & (Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::atan2_(Tensor(a!) self, Tensor other) -> Tensor(a!)
Tensor & Tensor::atan2_(const Tensor & other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::atan2_(const_cast<Tensor&>(*this), other);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::atan2_", "")
        .typed<Tensor & (Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::tril_(Tensor(a!) self, int diagonal=0) -> Tensor(a!)
Tensor & Tensor::tril_(int64_t diagonal) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::tril_(const_cast<Tensor&>(*this), diagonal);
            break;
        default:
            AT_ERROR("tril_ not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::tril_", "")
        .typed<Tensor & (Tensor &, int64_t)>();
    return op.call(const_cast<Tensor&>(*this), diagonal);
#endif
}

// aten::triu_(Tensor(a!) self, int diagonal=0) -> Tensor(a!)
Tensor & Tensor::triu_(int64_t diagonal) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::triu_(const_cast<Tensor&>(*this), diagonal);
            break;
        default:
            AT_ERROR("triu_ not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::triu_", "")
        .typed<Tensor & (Tensor &, int64_t)>();
    return op.call(const_cast<Tensor&>(*this), diagonal);
#endif
}

// aten::digamma_(Tensor(a!) self) -> Tensor(a!)
Tensor & Tensor::digamma_() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::digamma_(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::digamma_", "")
        .typed<Tensor & (Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::polygamma_(Tensor(a!) self, int n) -> Tensor(a!)
Tensor & Tensor::polygamma_(int64_t n) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::polygamma_(const_cast<Tensor&>(*this), n);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::polygamma_", "")
        .typed<Tensor & (Tensor &, int64_t)>();
    return op.call(const_cast<Tensor&>(*this), n);
#endif
}

// aten::renorm_(Tensor(a!) self, Scalar p, int dim, Scalar maxnorm) -> Tensor(a!)
Tensor & Tensor::renorm_(Scalar p, int64_t dim, Scalar maxnorm) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::renorm_(const_cast<Tensor&>(*this), p, dim, maxnorm);
            break;
        default:
            AT_ERROR("renorm_ not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::renorm_", "")
        .typed<Tensor & (Tensor &, Scalar, int64_t, Scalar)>();
    return op.call(const_cast<Tensor&>(*this), p, dim, maxnorm);
#endif
}

// aten::pow_.Scalar(Tensor(a!) self, Scalar exponent) -> Tensor(a!)
Tensor & Tensor::pow_(Scalar exponent) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::pow__Scalar(const_cast<Tensor&>(*this), exponent);
            break;
        default:
            AT_ERROR("pow_ not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::pow_", "Scalar")
        .typed<Tensor & (Tensor &, Scalar)>();
    return op.call(const_cast<Tensor&>(*this), exponent);
#endif
}

// aten::pow_.Tensor(Tensor(a!) self, Tensor exponent) -> Tensor(a!)
Tensor & Tensor::pow_(const Tensor & exponent) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this, exponent);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::pow__Tensor(const_cast<Tensor&>(*this), exponent);
            break;
        default:
            AT_ERROR("pow_ not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::pow_", "Tensor")
        .typed<Tensor & (Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), exponent);
#endif
}

// aten::lerp_.Scalar(Tensor(a!) self, Tensor end, Scalar weight) -> Tensor(a!)
Tensor & Tensor::lerp_(const Tensor & end, Scalar weight) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this, end);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::lerp__Scalar(const_cast<Tensor&>(*this), end, weight);
            break;
        default:
            AT_ERROR("lerp_ not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::lerp_", "Scalar")
        .typed<Tensor & (Tensor &, const Tensor &, Scalar)>();
    return op.call(const_cast<Tensor&>(*this), end, weight);
#endif
}

// aten::lerp_.Tensor(Tensor(a!) self, Tensor end, Tensor weight) -> Tensor(a!)
Tensor & Tensor::lerp_(const Tensor & end, const Tensor & weight) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this, end, weight);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::lerp__Tensor(const_cast<Tensor&>(*this), end, weight);
            break;
        default:
            AT_ERROR("lerp_ not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::lerp_", "Tensor")
        .typed<Tensor & (Tensor &, const Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), end, weight);
#endif
}

// aten::fmod_.Scalar(Tensor(a!) self, Scalar other) -> Tensor(a!)
Tensor & Tensor::fmod_(Scalar other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::fmod__Scalar(const_cast<Tensor&>(*this), other);
            break;
        default:
            AT_ERROR("fmod_ not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::fmod_", "Scalar")
        .typed<Tensor & (Tensor &, Scalar)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::fmod_.Tensor(Tensor(a!) self, Tensor other) -> Tensor(a!)
Tensor & Tensor::fmod_(const Tensor & other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this, other);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::fmod__Tensor(const_cast<Tensor&>(*this), other);
            break;
        default:
            AT_ERROR("fmod_ not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::fmod_", "Tensor")
        .typed<Tensor & (Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::remainder_.Scalar(Tensor(a!) self, Scalar other) -> Tensor(a!)
Tensor & Tensor::remainder_(Scalar other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::remainder__Scalar(const_cast<Tensor&>(*this), other);
            break;
        default:
            AT_ERROR("remainder_ not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::remainder_", "Scalar")
        .typed<Tensor & (Tensor &, Scalar)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::remainder_.Tensor(Tensor(a!) self, Tensor other) -> Tensor(a!)
Tensor & Tensor::remainder_(const Tensor & other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this, other);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::remainder__Tensor(const_cast<Tensor&>(*this), other);
            break;
        default:
            AT_ERROR("remainder_ not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::remainder_", "Tensor")
        .typed<Tensor & (Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::addbmm_(Tensor(a!) self, Tensor batch1, Tensor batch2, *, Scalar beta=1, Scalar alpha=1) -> Tensor(a!)
Tensor & Tensor::addbmm_(const Tensor & batch1, const Tensor & batch2, Scalar beta, Scalar alpha) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this, batch1, batch2);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::addbmm_(const_cast<Tensor&>(*this), batch1, batch2, beta, alpha);
            break;
        default:
            AT_ERROR("addbmm_ not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::addbmm_", "")
        .typed<Tensor & (Tensor &, const Tensor &, const Tensor &, Scalar, Scalar)>();
    return op.call(const_cast<Tensor&>(*this), batch1, batch2, beta, alpha);
#endif
}

// aten::addbmm(Tensor self, Tensor batch1, Tensor batch2, *, Scalar beta=1, Scalar alpha=1) -> Tensor
Tensor Tensor::addbmm(const Tensor & batch1, const Tensor & batch2, Scalar beta, Scalar alpha) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this, batch1, batch2);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::addbmm(const_cast<Tensor&>(*this), batch1, batch2, beta, alpha);
            break;
        default:
            AT_ERROR("addbmm not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::addbmm", "")
        .typed<Tensor (const Tensor &, const Tensor &, const Tensor &, Scalar, Scalar)>();
    return op.call(const_cast<Tensor&>(*this), batch1, batch2, beta, alpha);
#endif
}

// aten::addcdiv_(Tensor(a!) self, Tensor tensor1, Tensor tensor2, *, Scalar value=1) -> Tensor(a!)
Tensor & Tensor::addcdiv_(const Tensor & tensor1, const Tensor & tensor2, Scalar value) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::addcdiv_(const_cast<Tensor&>(*this), tensor1, tensor2, value);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::addcdiv_", "")
        .typed<Tensor & (Tensor &, const Tensor &, const Tensor &, Scalar)>();
    return op.call(const_cast<Tensor&>(*this), tensor1, tensor2, value);
#endif
}

// aten::random_.from(Tensor(a!) self, int from, int? to, *, Generator? generator=None) -> Tensor(a!)
Tensor & Tensor::random_(int64_t from, c10::optional<int64_t> to, c10::optional<Generator> generator) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::random__from(const_cast<Tensor&>(*this), from, to, generator);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::random_", "from")
        .typed<Tensor & (Tensor &, int64_t, c10::optional<int64_t>, c10::optional<Generator>)>();
    return op.call(const_cast<Tensor&>(*this), from, to, generator);
#endif
}

// aten::random_.to(Tensor(a!) self, int to, *, Generator? generator=None) -> Tensor(a!)
Tensor & Tensor::random_(int64_t to, c10::optional<Generator> generator) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::random__to(const_cast<Tensor&>(*this), to, generator);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::random_", "to")
        .typed<Tensor & (Tensor &, int64_t, c10::optional<Generator>)>();
    return op.call(const_cast<Tensor&>(*this), to, generator);
#endif
}

// aten::random_(Tensor(a!) self, *, Generator? generator=None) -> Tensor(a!)
Tensor & Tensor::random_(c10::optional<Generator> generator) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::random_(const_cast<Tensor&>(*this), generator);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::random_", "")
        .typed<Tensor & (Tensor &, c10::optional<Generator>)>();
    return op.call(const_cast<Tensor&>(*this), generator);
#endif
}

// aten::uniform_(Tensor(a!) self, float from=0, float to=1, *, Generator? generator=None) -> Tensor(a!)
Tensor & Tensor::uniform_(double from, double to, c10::optional<Generator> generator) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::uniform_(const_cast<Tensor&>(*this), from, to, generator);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::uniform_", "")
        .typed<Tensor & (Tensor &, double, double, c10::optional<Generator>)>();
    return op.call(const_cast<Tensor&>(*this), from, to, generator);
#endif
}

// aten::cauchy_(Tensor(a!) self, float median=0, float sigma=1, *, Generator? generator=None) -> Tensor(a!)
Tensor & Tensor::cauchy_(double median, double sigma, c10::optional<Generator> generator) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::cauchy_(const_cast<Tensor&>(*this), median, sigma, generator);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::cauchy_", "")
        .typed<Tensor & (Tensor &, double, double, c10::optional<Generator>)>();
    return op.call(const_cast<Tensor&>(*this), median, sigma, generator);
#endif
}

// aten::log_normal_(Tensor(a!) self, float mean=1, float std=2, *, Generator? generator=None) -> Tensor(a!)
Tensor & Tensor::log_normal_(double mean, double std, c10::optional<Generator> generator) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::log_normal_(const_cast<Tensor&>(*this), mean, std, generator);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::log_normal_", "")
        .typed<Tensor & (Tensor &, double, double, c10::optional<Generator>)>();
    return op.call(const_cast<Tensor&>(*this), mean, std, generator);
#endif
}

// aten::exponential_(Tensor(a!) self, float lambd=1, *, Generator? generator=None) -> Tensor(a!)
Tensor & Tensor::exponential_(double lambd, c10::optional<Generator> generator) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::exponential_(const_cast<Tensor&>(*this), lambd, generator);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::exponential_", "")
        .typed<Tensor & (Tensor &, double, c10::optional<Generator>)>();
    return op.call(const_cast<Tensor&>(*this), lambd, generator);
#endif
}

// aten::geometric_(Tensor(a!) self, float p, *, Generator? generator=None) -> Tensor(a!)
Tensor & Tensor::geometric_(double p, c10::optional<Generator> generator) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::geometric_(const_cast<Tensor&>(*this), p, generator);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::geometric_", "")
        .typed<Tensor & (Tensor &, double, c10::optional<Generator>)>();
    return op.call(const_cast<Tensor&>(*this), p, generator);
#endif
}

// aten::diag(Tensor self, int diagonal=0) -> Tensor
Tensor Tensor::diag(int64_t diagonal) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::diag(const_cast<Tensor&>(*this), diagonal);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::diag", "")
        .typed<Tensor (const Tensor &, int64_t)>();
    return op.call(const_cast<Tensor&>(*this), diagonal);
#endif
}

// aten::cross(Tensor self, Tensor other, int? dim=None) -> Tensor
Tensor Tensor::cross(const Tensor & other, c10::optional<int64_t> dim) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::cross(const_cast<Tensor&>(*this), other, dim);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::cross", "")
        .typed<Tensor (const Tensor &, const Tensor &, c10::optional<int64_t>)>();
    return op.call(const_cast<Tensor&>(*this), other, dim);
#endif
}

// aten::triu(Tensor self, int diagonal=0) -> Tensor
Tensor Tensor::triu(int64_t diagonal) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::triu(const_cast<Tensor&>(*this), diagonal);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::triu", "")
        .typed<Tensor (const Tensor &, int64_t)>();
    return op.call(const_cast<Tensor&>(*this), diagonal);
#endif
}

// aten::tril(Tensor self, int diagonal=0) -> Tensor
Tensor Tensor::tril(int64_t diagonal) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::tril(const_cast<Tensor&>(*this), diagonal);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::tril", "")
        .typed<Tensor (const Tensor &, int64_t)>();
    return op.call(const_cast<Tensor&>(*this), diagonal);
#endif
}

// aten::trace(Tensor self) -> Tensor
Tensor Tensor::trace() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::trace(const_cast<Tensor&>(*this));
            break;
        default:
            AT_ERROR("trace not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::trace", "")
        .typed<Tensor (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::ne.Scalar(Tensor self, Scalar other) -> Tensor
Tensor Tensor::ne(Scalar other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::ne_Scalar(const_cast<Tensor&>(*this), other);
            break;
        case Backend::QuantizedCPU:
            return QuantizedCPUType::ne_Scalar(const_cast<Tensor&>(*this), other);
            break;
        default:
            AT_ERROR("ne not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::ne", "Scalar")
        .typed<Tensor (const Tensor &, Scalar)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::ne.Tensor(Tensor self, Tensor other) -> Tensor
Tensor Tensor::ne(const Tensor & other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this, other);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::ne_Tensor(const_cast<Tensor&>(*this), other);
            break;
        case Backend::QuantizedCPU:
            return QuantizedCPUType::ne_Tensor(const_cast<Tensor&>(*this), other);
            break;
        default:
            AT_ERROR("ne not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::ne", "Tensor")
        .typed<Tensor (const Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::eq.Scalar(Tensor self, Scalar other) -> Tensor
Tensor Tensor::eq(Scalar other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::eq_Scalar(const_cast<Tensor&>(*this), other);
            break;
        case Backend::QuantizedCPU:
            return QuantizedCPUType::eq_Scalar(const_cast<Tensor&>(*this), other);
            break;
        default:
            AT_ERROR("eq not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::eq", "Scalar")
        .typed<Tensor (const Tensor &, Scalar)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::eq.Tensor(Tensor self, Tensor other) -> Tensor
Tensor Tensor::eq(const Tensor & other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this, other);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::eq_Tensor(const_cast<Tensor&>(*this), other);
            break;
        case Backend::QuantizedCPU:
            return QuantizedCPUType::eq_Tensor(const_cast<Tensor&>(*this), other);
            break;
        default:
            AT_ERROR("eq not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::eq", "Tensor")
        .typed<Tensor (const Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::ge.Scalar(Tensor self, Scalar other) -> Tensor
Tensor Tensor::ge(Scalar other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::ge_Scalar(const_cast<Tensor&>(*this), other);
            break;
        case Backend::QuantizedCPU:
            return QuantizedCPUType::ge_Scalar(const_cast<Tensor&>(*this), other);
            break;
        default:
            AT_ERROR("ge not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::ge", "Scalar")
        .typed<Tensor (const Tensor &, Scalar)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::ge.Tensor(Tensor self, Tensor other) -> Tensor
Tensor Tensor::ge(const Tensor & other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this, other);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::ge_Tensor(const_cast<Tensor&>(*this), other);
            break;
        case Backend::QuantizedCPU:
            return QuantizedCPUType::ge_Tensor(const_cast<Tensor&>(*this), other);
            break;
        default:
            AT_ERROR("ge not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::ge", "Tensor")
        .typed<Tensor (const Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::le.Scalar(Tensor self, Scalar other) -> Tensor
Tensor Tensor::le(Scalar other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::le_Scalar(const_cast<Tensor&>(*this), other);
            break;
        case Backend::QuantizedCPU:
            return QuantizedCPUType::le_Scalar(const_cast<Tensor&>(*this), other);
            break;
        default:
            AT_ERROR("le not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::le", "Scalar")
        .typed<Tensor (const Tensor &, Scalar)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::le.Tensor(Tensor self, Tensor other) -> Tensor
Tensor Tensor::le(const Tensor & other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this, other);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::le_Tensor(const_cast<Tensor&>(*this), other);
            break;
        case Backend::QuantizedCPU:
            return QuantizedCPUType::le_Tensor(const_cast<Tensor&>(*this), other);
            break;
        default:
            AT_ERROR("le not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::le", "Tensor")
        .typed<Tensor (const Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::gt.Scalar(Tensor self, Scalar other) -> Tensor
Tensor Tensor::gt(Scalar other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::gt_Scalar(const_cast<Tensor&>(*this), other);
            break;
        case Backend::QuantizedCPU:
            return QuantizedCPUType::gt_Scalar(const_cast<Tensor&>(*this), other);
            break;
        default:
            AT_ERROR("gt not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::gt", "Scalar")
        .typed<Tensor (const Tensor &, Scalar)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::gt.Tensor(Tensor self, Tensor other) -> Tensor
Tensor Tensor::gt(const Tensor & other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this, other);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::gt_Tensor(const_cast<Tensor&>(*this), other);
            break;
        case Backend::QuantizedCPU:
            return QuantizedCPUType::gt_Tensor(const_cast<Tensor&>(*this), other);
            break;
        default:
            AT_ERROR("gt not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::gt", "Tensor")
        .typed<Tensor (const Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::lt.Scalar(Tensor self, Scalar other) -> Tensor
Tensor Tensor::lt(Scalar other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::lt_Scalar(const_cast<Tensor&>(*this), other);
            break;
        case Backend::QuantizedCPU:
            return QuantizedCPUType::lt_Scalar(const_cast<Tensor&>(*this), other);
            break;
        default:
            AT_ERROR("lt not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::lt", "Scalar")
        .typed<Tensor (const Tensor &, Scalar)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::lt.Tensor(Tensor self, Tensor other) -> Tensor
Tensor Tensor::lt(const Tensor & other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this, other);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::lt_Tensor(const_cast<Tensor&>(*this), other);
            break;
        case Backend::QuantizedCPU:
            return QuantizedCPUType::lt_Tensor(const_cast<Tensor&>(*this), other);
            break;
        default:
            AT_ERROR("lt not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::lt", "Tensor")
        .typed<Tensor (const Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::take(Tensor self, Tensor index) -> Tensor
Tensor Tensor::take(const Tensor & index) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this, index);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::take(const_cast<Tensor&>(*this), index);
            break;
        default:
            AT_ERROR("take not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::take", "")
        .typed<Tensor (const Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), index);
#endif
}

// aten::index_select(Tensor self, int dim, Tensor index) -> Tensor
Tensor Tensor::index_select(int64_t dim, const Tensor & index) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this, index);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::index_select(const_cast<Tensor&>(*this), dim, index);
            break;
        default:
            AT_ERROR("index_select not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::index_select", "")
        .typed<Tensor (const Tensor &, int64_t, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), dim, index);
#endif
}

// aten::index_select.dimname(Tensor self, Dimname dim, Tensor index) -> Tensor
Tensor Tensor::index_select(Dimname dim, const Tensor & index) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::index_select_dimname(const_cast<Tensor&>(*this), dim, index);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::index_select", "dimname")
        .typed<Tensor (const Tensor &, Dimname, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), dim, index);
#endif
}

// aten::masked_select(Tensor self, Tensor mask) -> Tensor
Tensor Tensor::masked_select(const Tensor & mask) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this, mask);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::masked_select(const_cast<Tensor&>(*this), mask);
            break;
        default:
            AT_ERROR("masked_select not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::masked_select", "")
        .typed<Tensor (const Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), mask);
#endif
}

// aten::nonzero(Tensor self) -> Tensor
Tensor Tensor::nonzero() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::nonzero(const_cast<Tensor&>(*this));
            break;
        default:
            AT_ERROR("nonzero not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::nonzero", "")
        .typed<Tensor (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::nonzero_numpy(Tensor self) -> Tensor[]
std::vector<Tensor> Tensor::nonzero_numpy() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::nonzero_numpy(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::nonzero_numpy", "")
        .typed<std::vector<Tensor> (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::gather(Tensor self, int dim, Tensor index, *, bool sparse_grad=False) -> Tensor
Tensor Tensor::gather(int64_t dim, const Tensor & index, bool sparse_grad) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this, index);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::gather(const_cast<Tensor&>(*this), dim, index, sparse_grad);
            break;
        default:
            AT_ERROR("gather not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::gather", "")
        .typed<Tensor (const Tensor &, int64_t, const Tensor &, bool)>();
    return op.call(const_cast<Tensor&>(*this), dim, index, sparse_grad);
#endif
}

// aten::gather.dimname(Tensor self, Dimname dim, Tensor index, *, bool sparse_grad=False) -> Tensor
Tensor Tensor::gather(Dimname dim, const Tensor & index, bool sparse_grad) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::gather_dimname(const_cast<Tensor&>(*this), dim, index, sparse_grad);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::gather", "dimname")
        .typed<Tensor (const Tensor &, Dimname, const Tensor &, bool)>();
    return op.call(const_cast<Tensor&>(*this), dim, index, sparse_grad);
#endif
}

// aten::addcmul(Tensor self, Tensor tensor1, Tensor tensor2, *, Scalar value=1) -> Tensor
Tensor Tensor::addcmul(const Tensor & tensor1, const Tensor & tensor2, Scalar value) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::addcmul(const_cast<Tensor&>(*this), tensor1, tensor2, value);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::addcmul", "")
        .typed<Tensor (const Tensor &, const Tensor &, const Tensor &, Scalar)>();
    return op.call(const_cast<Tensor&>(*this), tensor1, tensor2, value);
#endif
}

// aten::addcmul_(Tensor(a!) self, Tensor tensor1, Tensor tensor2, *, Scalar value=1) -> Tensor(a!)
Tensor & Tensor::addcmul_(const Tensor & tensor1, const Tensor & tensor2, Scalar value) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::addcmul_(const_cast<Tensor&>(*this), tensor1, tensor2, value);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::addcmul_", "")
        .typed<Tensor & (Tensor &, const Tensor &, const Tensor &, Scalar)>();
    return op.call(const_cast<Tensor&>(*this), tensor1, tensor2, value);
#endif
}

// aten::addcdiv(Tensor self, Tensor tensor1, Tensor tensor2, *, Scalar value=1) -> Tensor
Tensor Tensor::addcdiv(const Tensor & tensor1, const Tensor & tensor2, Scalar value) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::addcdiv(const_cast<Tensor&>(*this), tensor1, tensor2, value);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::addcdiv", "")
        .typed<Tensor (const Tensor &, const Tensor &, const Tensor &, Scalar)>();
    return op.call(const_cast<Tensor&>(*this), tensor1, tensor2, value);
#endif
}

// aten::lstsq(Tensor self, Tensor A) -> (Tensor solution, Tensor QR)
std::tuple<Tensor,Tensor> Tensor::lstsq(const Tensor & A) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this, A);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::lstsq(const_cast<Tensor&>(*this), A);
            break;
        default:
            AT_ERROR("lstsq not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::lstsq", "")
        .typed<std::tuple<Tensor,Tensor> (const Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), A);
#endif
}

// aten::triangular_solve(Tensor self, Tensor A, bool upper=True, bool transpose=False, bool unitriangular=False) -> (Tensor solution, Tensor cloned_coefficient)
std::tuple<Tensor,Tensor> Tensor::triangular_solve(const Tensor & A, bool upper, bool transpose, bool unitriangular) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::triangular_solve(const_cast<Tensor&>(*this), A, upper, transpose, unitriangular);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::triangular_solve", "")
        .typed<std::tuple<Tensor,Tensor> (const Tensor &, const Tensor &, bool, bool, bool)>();
    return op.call(const_cast<Tensor&>(*this), A, upper, transpose, unitriangular);
#endif
}

// aten::symeig(Tensor self, bool eigenvectors=False, bool upper=True) -> (Tensor eigenvalues, Tensor eigenvectors)
std::tuple<Tensor,Tensor> Tensor::symeig(bool eigenvectors, bool upper) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::symeig(const_cast<Tensor&>(*this), eigenvectors, upper);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::symeig", "")
        .typed<std::tuple<Tensor,Tensor> (const Tensor &, bool, bool)>();
    return op.call(const_cast<Tensor&>(*this), eigenvectors, upper);
#endif
}

// aten::eig(Tensor self, bool eigenvectors=False) -> (Tensor eigenvalues, Tensor eigenvectors)
std::tuple<Tensor,Tensor> Tensor::eig(bool eigenvectors) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::eig(const_cast<Tensor&>(*this), eigenvectors);
            break;
        default:
            AT_ERROR("eig not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::eig", "")
        .typed<std::tuple<Tensor,Tensor> (const Tensor &, bool)>();
    return op.call(const_cast<Tensor&>(*this), eigenvectors);
#endif
}

// aten::svd(Tensor self, bool some=True, bool compute_uv=True) -> (Tensor U, Tensor S, Tensor V)
std::tuple<Tensor,Tensor,Tensor> Tensor::svd(bool some, bool compute_uv) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::svd(const_cast<Tensor&>(*this), some, compute_uv);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::svd", "")
        .typed<std::tuple<Tensor,Tensor,Tensor> (const Tensor &, bool, bool)>();
    return op.call(const_cast<Tensor&>(*this), some, compute_uv);
#endif
}

// aten::cholesky(Tensor self, bool upper=False) -> Tensor
Tensor Tensor::cholesky(bool upper) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::cholesky(const_cast<Tensor&>(*this), upper);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::cholesky", "")
        .typed<Tensor (const Tensor &, bool)>();
    return op.call(const_cast<Tensor&>(*this), upper);
#endif
}

// aten::cholesky_solve(Tensor self, Tensor input2, bool upper=False) -> Tensor
Tensor Tensor::cholesky_solve(const Tensor & input2, bool upper) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::cholesky_solve(const_cast<Tensor&>(*this), input2, upper);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::cholesky_solve", "")
        .typed<Tensor (const Tensor &, const Tensor &, bool)>();
    return op.call(const_cast<Tensor&>(*this), input2, upper);
#endif
}

// aten::solve(Tensor self, Tensor A) -> (Tensor solution, Tensor LU)
std::tuple<Tensor,Tensor> Tensor::solve(const Tensor & A) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::solve(const_cast<Tensor&>(*this), A);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::solve", "")
        .typed<std::tuple<Tensor,Tensor> (const Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), A);
#endif
}

// aten::cholesky_inverse(Tensor self, bool upper=False) -> Tensor
Tensor Tensor::cholesky_inverse(bool upper) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::cholesky_inverse(const_cast<Tensor&>(*this), upper);
            break;
        default:
            AT_ERROR("cholesky_inverse not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::cholesky_inverse", "")
        .typed<Tensor (const Tensor &, bool)>();
    return op.call(const_cast<Tensor&>(*this), upper);
#endif
}

// aten::qr(Tensor self, bool some=True) -> (Tensor Q, Tensor R)
std::tuple<Tensor,Tensor> Tensor::qr(bool some) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::qr(const_cast<Tensor&>(*this), some);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::qr", "")
        .typed<std::tuple<Tensor,Tensor> (const Tensor &, bool)>();
    return op.call(const_cast<Tensor&>(*this), some);
#endif
}

// aten::geqrf(Tensor self) -> (Tensor a, Tensor tau)
std::tuple<Tensor,Tensor> Tensor::geqrf() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::geqrf(const_cast<Tensor&>(*this));
            break;
        default:
            AT_ERROR("geqrf not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::geqrf", "")
        .typed<std::tuple<Tensor,Tensor> (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::orgqr(Tensor self, Tensor input2) -> Tensor
Tensor Tensor::orgqr(const Tensor & input2) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this, input2);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::orgqr(const_cast<Tensor&>(*this), input2);
            break;
        default:
            AT_ERROR("orgqr not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::orgqr", "")
        .typed<Tensor (const Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), input2);
#endif
}

// aten::ormqr(Tensor self, Tensor input2, Tensor input3, bool left=True, bool transpose=False) -> Tensor
Tensor Tensor::ormqr(const Tensor & input2, const Tensor & input3, bool left, bool transpose) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this, input2, input3);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::ormqr(const_cast<Tensor&>(*this), input2, input3, left, transpose);
            break;
        default:
            AT_ERROR("ormqr not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::ormqr", "")
        .typed<Tensor (const Tensor &, const Tensor &, const Tensor &, bool, bool)>();
    return op.call(const_cast<Tensor&>(*this), input2, input3, left, transpose);
#endif
}

// aten::lu_solve(Tensor self, Tensor LU_data, Tensor LU_pivots) -> Tensor
Tensor Tensor::lu_solve(const Tensor & LU_data, const Tensor & LU_pivots) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::lu_solve(const_cast<Tensor&>(*this), LU_data, LU_pivots);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::lu_solve", "")
        .typed<Tensor (const Tensor &, const Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), LU_data, LU_pivots);
#endif
}

// aten::multinomial(Tensor self, int num_samples, bool replacement=False, *, Generator? generator=None) -> Tensor
Tensor Tensor::multinomial(int64_t num_samples, bool replacement, c10::optional<Generator> generator) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::multinomial(const_cast<Tensor&>(*this), num_samples, replacement, generator);
            break;
        default:
            AT_ERROR("multinomial not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::multinomial", "")
        .typed<Tensor (const Tensor &, int64_t, bool, c10::optional<Generator>)>();
    return op.call(const_cast<Tensor&>(*this), num_samples, replacement, generator);
#endif
}

// aten::lgamma(Tensor self) -> Tensor
Tensor Tensor::lgamma() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::lgamma(const_cast<Tensor&>(*this));
            break;
        default:
            AT_ERROR("lgamma not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::lgamma", "")
        .typed<Tensor (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::digamma(Tensor self) -> Tensor
Tensor Tensor::digamma() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::digamma(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::digamma", "")
        .typed<Tensor (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::polygamma(int n, Tensor self) -> Tensor
Tensor Tensor::polygamma(int64_t n) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::polygamma(n, const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::polygamma", "")
        .typed<Tensor (int64_t, const Tensor &)>();
    return op.call(n, const_cast<Tensor&>(*this));
#endif
}

// aten::erfinv(Tensor self) -> Tensor
Tensor Tensor::erfinv() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::erfinv(const_cast<Tensor&>(*this));
            break;
        default:
            AT_ERROR("erfinv not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::erfinv", "")
        .typed<Tensor (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::erfinv_(Tensor(a!) self) -> Tensor(a!)
Tensor & Tensor::erfinv_() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::erfinv_(const_cast<Tensor&>(*this));
            break;
        default:
            AT_ERROR("erfinv_ not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::erfinv_", "")
        .typed<Tensor & (Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::sign(Tensor self) -> Tensor
Tensor Tensor::sign() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::sign(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::sign", "")
        .typed<Tensor (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::sign_(Tensor(a!) self) -> Tensor(a!)
Tensor & Tensor::sign_() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::sign_(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::sign_", "")
        .typed<Tensor & (Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::dist(Tensor self, Tensor other, Scalar p=2) -> Tensor
Tensor Tensor::dist(const Tensor & other, Scalar p) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::dist(const_cast<Tensor&>(*this), other, p);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::dist", "")
        .typed<Tensor (const Tensor &, const Tensor &, Scalar)>();
    return op.call(const_cast<Tensor&>(*this), other, p);
#endif
}

// aten::atan2(Tensor self, Tensor other) -> Tensor
Tensor Tensor::atan2(const Tensor & other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::atan2(const_cast<Tensor&>(*this), other);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::atan2", "")
        .typed<Tensor (const Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::lerp.Scalar(Tensor self, Tensor end, Scalar weight) -> Tensor
Tensor Tensor::lerp(const Tensor & end, Scalar weight) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this, end);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::lerp_Scalar(const_cast<Tensor&>(*this), end, weight);
            break;
        default:
            AT_ERROR("lerp not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::lerp", "Scalar")
        .typed<Tensor (const Tensor &, const Tensor &, Scalar)>();
    return op.call(const_cast<Tensor&>(*this), end, weight);
#endif
}

// aten::lerp.Tensor(Tensor self, Tensor end, Tensor weight) -> Tensor
Tensor Tensor::lerp(const Tensor & end, const Tensor & weight) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this, end, weight);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::lerp_Tensor(const_cast<Tensor&>(*this), end, weight);
            break;
        default:
            AT_ERROR("lerp not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::lerp", "Tensor")
        .typed<Tensor (const Tensor &, const Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), end, weight);
#endif
}

// aten::histc(Tensor self, int bins=100, Scalar min=0, Scalar max=0) -> Tensor
Tensor Tensor::histc(int64_t bins, Scalar min, Scalar max) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::histc(const_cast<Tensor&>(*this), bins, min, max);
            break;
        default:
            AT_ERROR("histc not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::histc", "")
        .typed<Tensor (const Tensor &, int64_t, Scalar, Scalar)>();
    return op.call(const_cast<Tensor&>(*this), bins, min, max);
#endif
}

// aten::fmod.Scalar(Tensor self, Scalar other) -> Tensor
Tensor Tensor::fmod(Scalar other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::fmod_Scalar(const_cast<Tensor&>(*this), other);
            break;
        default:
            AT_ERROR("fmod not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::fmod", "Scalar")
        .typed<Tensor (const Tensor &, Scalar)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::fmod.Tensor(Tensor self, Tensor other) -> Tensor
Tensor Tensor::fmod(const Tensor & other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this, other);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::fmod_Tensor(const_cast<Tensor&>(*this), other);
            break;
        default:
            AT_ERROR("fmod not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::fmod", "Tensor")
        .typed<Tensor (const Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::remainder.Scalar(Tensor self, Scalar other) -> Tensor
Tensor Tensor::remainder(Scalar other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::remainder_Scalar(const_cast<Tensor&>(*this), other);
            break;
        default:
            AT_ERROR("remainder not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::remainder", "Scalar")
        .typed<Tensor (const Tensor &, Scalar)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::remainder.Tensor(Tensor self, Tensor other) -> Tensor
Tensor Tensor::remainder(const Tensor & other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this, other);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::remainder_Tensor(const_cast<Tensor&>(*this), other);
            break;
        default:
            AT_ERROR("remainder not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::remainder", "Tensor")
        .typed<Tensor (const Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::min.other(Tensor self, Tensor other) -> Tensor
Tensor Tensor::min(const Tensor & other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::min_other(const_cast<Tensor&>(*this), other);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::min", "other")
        .typed<Tensor (const Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::min(Tensor self) -> Tensor
Tensor Tensor::min() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::min(const_cast<Tensor&>(*this));
            break;
        case Backend::QuantizedCPU:
            return QuantizedCPUType::min(const_cast<Tensor&>(*this));
            break;
        default:
            AT_ERROR("min not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::min", "")
        .typed<Tensor (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::max.other(Tensor self, Tensor other) -> Tensor
Tensor Tensor::max(const Tensor & other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::max_other(const_cast<Tensor&>(*this), other);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::max", "other")
        .typed<Tensor (const Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::max(Tensor self) -> Tensor
Tensor Tensor::max() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::max(const_cast<Tensor&>(*this));
            break;
        case Backend::QuantizedCPU:
            return QuantizedCPUType::max(const_cast<Tensor&>(*this));
            break;
        default:
            AT_ERROR("max not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::max", "")
        .typed<Tensor (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::median(Tensor self) -> Tensor
Tensor Tensor::median() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::median(const_cast<Tensor&>(*this));
            break;
        default:
            AT_ERROR("median not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::median", "")
        .typed<Tensor (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::sort(Tensor self, int dim=-1, bool descending=False) -> (Tensor values, Tensor indices)
std::tuple<Tensor,Tensor> Tensor::sort(int64_t dim, bool descending) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::sort(const_cast<Tensor&>(*this), dim, descending);
            break;
        case Backend::QuantizedCPU:
            return QuantizedCPUType::sort(const_cast<Tensor&>(*this), dim, descending);
            break;
        default:
            AT_ERROR("sort not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::sort", "")
        .typed<std::tuple<Tensor,Tensor> (const Tensor &, int64_t, bool)>();
    return op.call(const_cast<Tensor&>(*this), dim, descending);
#endif
}

// aten::sort.dimname(Tensor self, Dimname dim, bool descending=False) -> (Tensor values, Tensor indices)
std::tuple<Tensor,Tensor> Tensor::sort(Dimname dim, bool descending) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::sort_dimname(const_cast<Tensor&>(*this), dim, descending);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::sort", "dimname")
        .typed<std::tuple<Tensor,Tensor> (const Tensor &, Dimname, bool)>();
    return op.call(const_cast<Tensor&>(*this), dim, descending);
#endif
}

// aten::argsort(Tensor self, int dim=-1, bool descending=False) -> Tensor
Tensor Tensor::argsort(int64_t dim, bool descending) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::argsort(const_cast<Tensor&>(*this), dim, descending);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::argsort", "")
        .typed<Tensor (const Tensor &, int64_t, bool)>();
    return op.call(const_cast<Tensor&>(*this), dim, descending);
#endif
}

// aten::argsort.dimname(Tensor self, Dimname dim, bool descending=False) -> Tensor
Tensor Tensor::argsort(Dimname dim, bool descending) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::argsort_dimname(const_cast<Tensor&>(*this), dim, descending);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::argsort", "dimname")
        .typed<Tensor (const Tensor &, Dimname, bool)>();
    return op.call(const_cast<Tensor&>(*this), dim, descending);
#endif
}

// aten::topk(Tensor self, int k, int dim=-1, bool largest=True, bool sorted=True) -> (Tensor values, Tensor indices)
std::tuple<Tensor,Tensor> Tensor::topk(int64_t k, int64_t dim, bool largest, bool sorted) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::topk(const_cast<Tensor&>(*this), k, dim, largest, sorted);
            break;
        case Backend::QuantizedCPU:
            return QuantizedCPUType::topk(const_cast<Tensor&>(*this), k, dim, largest, sorted);
            break;
        default:
            AT_ERROR("topk not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::topk", "")
        .typed<std::tuple<Tensor,Tensor> (const Tensor &, int64_t, int64_t, bool, bool)>();
    return op.call(const_cast<Tensor&>(*this), k, dim, largest, sorted);
#endif
}

// aten::all(Tensor self) -> Tensor
Tensor Tensor::all() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::all(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::all", "")
        .typed<Tensor (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::any(Tensor self) -> Tensor
Tensor Tensor::any() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::any(const_cast<Tensor&>(*this));
            break;
        default:
            AT_ERROR("any not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::any", "")
        .typed<Tensor (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::renorm(Tensor self, Scalar p, int dim, Scalar maxnorm) -> Tensor
Tensor Tensor::renorm(Scalar p, int64_t dim, Scalar maxnorm) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::renorm(const_cast<Tensor&>(*this), p, dim, maxnorm);
            break;
        default:
            AT_ERROR("renorm not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::renorm", "")
        .typed<Tensor (const Tensor &, Scalar, int64_t, Scalar)>();
    return op.call(const_cast<Tensor&>(*this), p, dim, maxnorm);
#endif
}

// aten::unfold(Tensor(a) self, int dimension, int size, int step) -> Tensor(a)
Tensor Tensor::unfold(int64_t dimension, int64_t size, int64_t step) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::unfold(const_cast<Tensor&>(*this), dimension, size, step);
            break;
        case Backend::QuantizedCPU:
            return QuantizedCPUType::unfold(const_cast<Tensor&>(*this), dimension, size, step);
            break;
        default:
            AT_ERROR("unfold not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::unfold", "")
        .typed<Tensor (const Tensor &, int64_t, int64_t, int64_t)>();
    return op.call(const_cast<Tensor&>(*this), dimension, size, step);
#endif
}

// aten::equal(Tensor self, Tensor other) -> bool
bool Tensor::equal(const Tensor & other) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this, other);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::equal(const_cast<Tensor&>(*this), other);
            break;
        case Backend::QuantizedCPU:
            return QuantizedCPUType::equal(const_cast<Tensor&>(*this), other);
            break;
        default:
            AT_ERROR("equal not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::equal", "")
        .typed<bool (const Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), other);
#endif
}

// aten::pow.Tensor_Tensor(Tensor self, Tensor exponent) -> Tensor
Tensor Tensor::pow(const Tensor & exponent) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    DispatchKeySet _dk_set = c10::detail::multi_dispatch_key_set(*this, exponent);
    DispatchKeySet _dk_mask = c10::DispatchKeySet(DispatchKeySet::FULL_AFTER, DispatchKey::BackendSelect);
    DispatchKey _dk = c10::impl::dispatchTypeId(_dk_set, _dk_mask);
    switch (dispatchKeyToBackend(_dk)) {
        case Backend::CPU:
            return CPUType::pow_Tensor_Tensor(const_cast<Tensor&>(*this), exponent);
            break;
        default:
            AT_ERROR("pow not implemented for ", at::toString(_dk));
    }
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::pow", "Tensor_Tensor")
        .typed<Tensor (const Tensor &, const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this), exponent);
#endif
}

// aten::normal_(Tensor(a!) self, float mean=0, float std=1, *, Generator? generator=None) -> Tensor(a!)
Tensor & Tensor::normal_(double mean, double std, c10::optional<Generator> generator) const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::normal_(const_cast<Tensor&>(*this), mean, std, generator);
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::normal_", "")
        .typed<Tensor & (Tensor &, double, double, c10::optional<Generator>)>();
    return op.call(const_cast<Tensor&>(*this), mean, std, generator);
#endif
}

// aten::alias(Tensor(a) self) -> Tensor(a)
Tensor Tensor::alias() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::alias(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::alias", "")
        .typed<Tensor (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::isfinite(Tensor self) -> Tensor
Tensor Tensor::isfinite() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::isfinite(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::isfinite", "")
        .typed<Tensor (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

// aten::isinf(Tensor self) -> Tensor
Tensor Tensor::isinf() const {
#ifdef USE_STATIC_DISPATCH
    at::AutoNonVariableTypeMode _var_guard(true);
    return TypeDefault::isinf(const_cast<Tensor&>(*this));
#else
    static auto op = c10::Dispatcher::singleton()
        .findSchemaOrThrow("aten::isinf", "")
        .typed<Tensor (const Tensor &)>();
    return op.call(const_cast<Tensor&>(*this));
#endif
}

caffe2::TypeMeta Tensor::dtype() const noexcept {
  return impl_->dtype();
}

Layout Tensor::layout() const noexcept {
  return impl_->layout();
}

Device Tensor::device() const {
  return impl_->device();
}

int64_t Tensor::get_device() const {
  // NB: this is not a native function to avoid dispatching overhead.
  return impl_->get_device();
}

int64_t get_device(Tensor self) {
  return self.get_device();
}

bool Tensor::is_cuda() const {
  // NB: this is not a native function to avoid dispatching overhead.
  return impl_->is_cuda();
}

NamedTensorMeta* Tensor::get_named_tensor_meta() {
  return static_cast<NamedTensorMeta*>(impl_->named_tensor_meta());
}

const NamedTensorMeta* Tensor::get_named_tensor_meta() const {
  return static_cast<NamedTensorMeta*>(impl_->named_tensor_meta());
}

bool Tensor::has_names() const {
  // If a user is using unnamed tensors, then we can short-circuit right here.
  // Otherwise, impl::has_names attempts to retrieve names.
  if (!impl_->has_named_tensor_meta()) {
    return false;
  }
  return impl::has_names(unsafeGetTensorImpl());
}

bool is_cuda(Tensor self) {
  return self.is_cuda();
}

bool Tensor::is_hip() const {
  // NB: this is not a native function to avoid dispatching overhead.
  return impl_->is_hip();
}

bool is_hip(Tensor self) {
  return self.is_hip();
}

bool Tensor::is_sparse() const {
  // NB: this is not a native function to avoid dispatching overhead.
  return impl_->is_sparse();
}

bool is_sparse(Tensor self) {
  return self.is_sparse();
}

bool Tensor::is_mkldnn() const {
  // NB: this is not a native function to avoid dispatching overhead.
  return impl_->is_mkldnn();
}

bool is_mkldnn(Tensor self) {
  return self.is_mkldnn();
}

bool Tensor::is_vulkan() const {
  // NB: this is not a native function to avoid dispatching overhead.
  return impl_->is_vulkan();
}

bool is_vulkan(Tensor self) {
  return self.is_vulkan();
}

bool Tensor::is_quantized() const {
  // NB: this is not a native function to avoid dispatching overhead.
  return impl_->is_quantized();
}

bool Tensor::is_meta() const {
  return impl_->is_meta();
}

bool is_quantized(Tensor self) {
  return self.is_quantized();
}

#define DEFINE_CAST(T, name)                     \
  template <>                                    \
  TORCH_API T* Tensor::data_ptr() const {           \
    TORCH_CHECK(                                 \
        scalar_type() == ScalarType::name,       \
        "expected scalar type ",                 \
        #name,                                   \
        " but found ",                           \
        c10::toString(scalar_type()));           \
    return static_cast<T*>(this->unsafeGetTensorImpl()->data());    \
  }

AT_FORALL_SCALAR_TYPES_WITH_COMPLEX_EXCEPT_COMPLEX_HALF(DEFINE_CAST)
AT_FORALL_QINT_TYPES(DEFINE_CAST)
#undef DEFINE_CAST

#define DEFINE_ITEM(T, name)      \
  template <>                     \
  TORCH_API T Tensor::item() const { \
    return item().to##name();     \
  }

AT_FORALL_SCALAR_TYPES_WITH_COMPLEX_EXCEPT_COMPLEX_HALF(DEFINE_ITEM)
#undef DEFINE_ITEM

} //namespace at
