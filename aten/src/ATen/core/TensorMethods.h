#pragma once

#include <ATen/core/Tensor.h>
#include <c10/core/Scalar.h>
#include <c10/macros/Macros.h>
#include <ATen/core/SparseTensorRef.h>
#include <ATen/core/Type.h>
#include <c10/core/TensorOptions.h>

namespace at {

inline Tensor Tensor::toType(const Type & t, bool non_blocking) const {
  if(type() == t)
    return *this;
  return t.copy(*this, non_blocking);
}

inline Tensor Tensor::cpu() const {
  return toType(type().cpu());
}

inline Tensor Tensor::cuda() const {
  return toType(type().cuda());
}

inline Tensor Tensor::hip() const {
  return toType(type().hip());
}

inline Tensor & Tensor::copy_(const Tensor & src, bool non_blocking) {
  return type().copy_(*this, src, non_blocking);
}

inline Tensor Tensor::toType(ScalarType t) const {
  return toType(type().toScalarType(t));
}

inline Tensor Tensor::toBackend(Backend b) const {
  return toType(type().toBackend(b));
}

inline TensorOptions Tensor::options() const {
  return TensorOptions().dtype(dtype())
                        .device(device())
                        .layout(layout())
                        .is_variable(is_variable());
}

inline void Tensor::backward(
    c10::optional<Tensor> gradient,
    bool keep_graph,
    bool create_graph) {
  type().backward(*this, std::move(gradient), keep_graph, create_graph);
}

inline void Tensor::set_data(Tensor new_data) {
  type().set_data(*this, new_data);
}

// all static inline to allow for inlining of the non-dynamic part of dispatch
inline Tensor Tensor::add(const Tensor & other, Scalar alpha) const {
    return type().add(*this, other, alpha);
}
inline Tensor & Tensor::add_(const Tensor & other, Scalar alpha) {
    return type().add_(*this, other, alpha);
}
inline Tensor Tensor::add(Scalar other, Scalar alpha) const {
    return type().add(*this, other, alpha);
}
inline Tensor & Tensor::add_(Scalar other, Scalar alpha) {
    return type().add_(*this, other, alpha);
}
inline Tensor Tensor::all(int64_t dim, bool keepdim) const {
    return type().all(*this, dim, keepdim);
}
inline Tensor Tensor::as_strided(IntArrayRef size, IntArrayRef stride, c10::optional<int64_t> storage_offset) const {
    return type().as_strided(*this, size, stride, storage_offset);
}
inline Tensor & Tensor::as_strided_(IntArrayRef size, IntArrayRef stride, c10::optional<int64_t> storage_offset) {
    return type().as_strided_(*this, size, stride, storage_offset);
}
inline Tensor Tensor::contiguous() const {
    return type().contiguous(*this);
}
inline Tensor Tensor::div(const Tensor & other) const {
    return type().div(*this, other);
}
inline Tensor & Tensor::div_(const Tensor & other) {
    return type().div_(*this, other);
}
inline Tensor Tensor::div(Scalar other) const {
    return type().div(*this, other);
}
inline Tensor & Tensor::div_(Scalar other) {
    return type().div_(*this, other);
}
inline Tensor & Tensor::resize_(IntArrayRef size) {
    return type().resize_(*this, size);
}
inline Tensor Tensor::expand(IntArrayRef size, bool implicit) const {
    return type().expand(*this, size, implicit);
}
inline Tensor & Tensor::fill_(Scalar value) {
    return type().fill_(*this, value);
}
inline Tensor & Tensor::fill_(const Tensor & value) {
    return type().fill_(*this, value);
}
inline bool Tensor::is_nonzero() const {
    return type().is_nonzero(*this);
}
inline Tensor & Tensor::log_() {
    return type().log_(*this);
}
inline std::tuple<Tensor,Tensor> Tensor::max(int64_t dim, bool keepdim) const {
    return type().max(*this, dim, keepdim);
}
inline Tensor Tensor::mean(ScalarType dtype) const {
    return type().mean(*this, dtype);
}
inline Tensor Tensor::mean() const {
    return type().mean(*this);
}
inline Tensor Tensor::mean(IntArrayRef dim, bool keepdim, ScalarType dtype) const {
    return type().mean(*this, dim, keepdim, dtype);
}
inline Tensor Tensor::mean(IntArrayRef dim, bool keepdim) const {
    return type().mean(*this, dim, keepdim);
}
inline Tensor Tensor::mean(IntArrayRef dim, ScalarType dtype) const {
    return type().mean(*this, dim, dtype);
}
inline std::tuple<Tensor,Tensor> Tensor::min(int64_t dim, bool keepdim) const {
    return type().min(*this, dim, keepdim);
}
inline Tensor Tensor::mul(const Tensor & other) const {
    return type().mul(*this, other);
}
inline Tensor & Tensor::mul_(const Tensor & other) {
    return type().mul_(*this, other);
}
inline Tensor Tensor::mul(Scalar other) const {
    return type().mul(*this, other);
}
inline Tensor & Tensor::mul_(Scalar other) {
    return type().mul_(*this, other);
}
inline Tensor Tensor::narrow(int64_t dim, int64_t start, int64_t length) const {
    return type().narrow(*this, dim, start, length);
}
inline Tensor Tensor::permute(IntArrayRef dims) const {
    return type().permute(*this, dims);
}
inline Tensor Tensor::select(int64_t dim, int64_t index) const {
    return type().select(*this, dim, index);
}
inline int64_t Tensor::size(int64_t dim) const {
    return type().size(*this, dim);
}
inline Tensor Tensor::slice(int64_t dim, int64_t start, int64_t end, int64_t step) const {
    return type().slice(*this, dim, start, end, step);
}
inline Tensor Tensor::squeeze() const {
    return type().squeeze(*this);
}
inline Tensor Tensor::squeeze(int64_t dim) const {
    return type().squeeze(*this, dim);
}
inline Tensor & Tensor::squeeze_() {
    return type().squeeze_(*this);
}
inline Tensor & Tensor::squeeze_(int64_t dim) {
    return type().squeeze_(*this, dim);
}
inline int64_t Tensor::stride(int64_t dim) const {
    return type().stride(*this, dim);
}
inline Tensor Tensor::sum(ScalarType dtype) const {
    return type().sum(*this, dtype);
}
inline Tensor Tensor::sum() const {
    return type().sum(*this);
}
inline Tensor Tensor::sum(IntArrayRef dim, bool keepdim, ScalarType dtype) const {
    return type().sum(*this, dim, keepdim, dtype);
}
inline Tensor Tensor::sum(IntArrayRef dim, bool keepdim) const {
    return type().sum(*this, dim, keepdim);
}
inline Tensor Tensor::sum(IntArrayRef dim, ScalarType dtype) const {
    return type().sum(*this, dim, dtype);
}
inline Tensor Tensor::t() const {
    return type().t(*this);
}
inline Tensor Tensor::transpose(int64_t dim0, int64_t dim1) const {
    return type().transpose(*this, dim0, dim1);
}
inline Tensor Tensor::unsqueeze(int64_t dim) const {
    return type().unsqueeze(*this, dim);
}
inline Tensor Tensor::clone() const {
    return type().clone(*this);
}
inline Tensor & Tensor::zero_() {
    return type().zero_(*this);
}
inline Tensor Tensor::sub(const Tensor & other, Scalar alpha) const {
    return type().sub(*this, other, alpha);
}
inline Tensor & Tensor::sub_(const Tensor & other, Scalar alpha) {
    return type().sub_(*this, other, alpha);
}
inline Tensor Tensor::sub(Scalar other, Scalar alpha) const {
    return type().sub(*this, other, alpha);
}
inline Tensor & Tensor::sub_(Scalar other, Scalar alpha) {
    return type().sub_(*this, other, alpha);
}
inline Tensor Tensor::addmm(const Tensor & mat1, const Tensor & mat2, Scalar beta, Scalar alpha) const {
    return type().addmm(*this, mat1, mat2, beta, alpha);
}
inline int64_t Tensor::sparse_dim() const {
    return type().sparse_dim(*this);
}
inline int64_t Tensor::dense_dim() const {
    return type().dense_dim(*this);
}
inline Tensor Tensor::_indices() const {
    return type()._indices(*this);
}
inline Tensor Tensor::_values() const {
    return type()._values(*this);
}
inline int64_t Tensor::numel() const {
    return type().numel(*this);
}
inline Tensor Tensor::to(const TensorOptions & options, bool non_blocking, bool copy) const {
    return type().to(*this, options, non_blocking, copy);
}
inline Tensor Tensor::to(Device device, ScalarType dtype, bool non_blocking, bool copy) const {
    return type().to(*this, device, dtype, non_blocking, copy);
}
inline Tensor Tensor::to(ScalarType dtype, bool non_blocking, bool copy) const {
    return type().to(*this, dtype, non_blocking, copy);
}
inline Tensor Tensor::to(const Tensor & other, bool non_blocking, bool copy) const {
    return type().to(*this, other, non_blocking, copy);
}
inline Scalar Tensor::item() const {
    return type().item(*this);
}
inline void* Tensor::data_ptr() const {
    return type().data_ptr(*this);
}
inline Tensor & Tensor::set_(Storage source) {
    return type().set_(*this, source);
}
inline Tensor & Tensor::set_(Storage source, int64_t storage_offset, IntArrayRef size, IntArrayRef stride) {
    return type().set_(*this, source, storage_offset, size, stride);
}
inline Tensor & Tensor::set_(const Tensor & source) {
    return type().set_(*this, source);
}
inline Tensor & Tensor::set_() {
    return type().set_(*this);
}
inline Tensor Tensor::view(IntArrayRef size) const {
    return type().view(*this, size);
}
inline Tensor & Tensor::remainder_(Scalar other) {
    return type().remainder_(*this, other);
}
inline Tensor & Tensor::remainder_(const Tensor & other) {
    return type().remainder_(*this, other);
}
inline Tensor Tensor::ne(Scalar other) const {
    return type().ne(*this, other);
}
inline Tensor Tensor::ne(const Tensor & other) const {
    return type().ne(*this, other);
}
inline Tensor Tensor::eq(Scalar other) const {
    return type().eq(*this, other);
}
inline Tensor Tensor::eq(const Tensor & other) const {
    return type().eq(*this, other);
}
inline Tensor Tensor::ge(Scalar other) const {
    return type().ge(*this, other);
}
inline Tensor Tensor::ge(const Tensor & other) const {
    return type().ge(*this, other);
}
inline Tensor Tensor::le(Scalar other) const {
    return type().le(*this, other);
}
inline Tensor Tensor::le(const Tensor & other) const {
    return type().le(*this, other);
}
inline Tensor Tensor::gt(Scalar other) const {
    return type().gt(*this, other);
}
inline Tensor Tensor::gt(const Tensor & other) const {
    return type().gt(*this, other);
}
inline Tensor Tensor::lt(Scalar other) const {
    return type().lt(*this, other);
}
inline Tensor Tensor::lt(const Tensor & other) const {
    return type().lt(*this, other);
}
inline Tensor Tensor::neg() const {
    return type().neg(*this);
}
inline Tensor Tensor::remainder(Scalar other) const {
    return type().remainder(*this, other);
}
inline Tensor Tensor::remainder(const Tensor & other) const {
    return type().remainder(*this, other);
}
inline Tensor Tensor::min(const Tensor & other) const {
    return type().min(*this, other);
}
inline Tensor Tensor::min() const {
    return type().min(*this);
}
inline Tensor Tensor::max(const Tensor & other) const {
    return type().max(*this, other);
}
inline Tensor Tensor::max() const {
    return type().max(*this);
}
inline Tensor Tensor::all() const {
    return type().all(*this);
}
inline bool Tensor::equal(const Tensor & other) const {
    return type().equal(*this, other);
}

inline bool Tensor::is_variable() const noexcept {
  return impl_->is_variable();
}

inline caffe2::TypeMeta Tensor::dtype() const noexcept {
  return impl_->dtype();
}

inline Layout Tensor::layout() const noexcept {
  return impl_->layout();
}

inline Device Tensor::device() const {
  return impl_->device();
}

inline int64_t Tensor::get_device() const {
  // NB: this is not a native function to avoid dispatching overhead.
  return impl_->get_device();
}

inline int64_t get_device(Tensor self) {
  return self.get_device();
}

inline bool Tensor::is_cuda() const {
  // NB: this is not a native function to avoid dispatching overhead.
  return impl_->is_cuda();
}

inline bool is_cuda(Tensor self) {
  return self.is_cuda();
}

inline bool Tensor::is_hip() const {
  // NB: this is not a native function to avoid dispatching overhead.
  return impl_->is_hip();
}

inline bool is_hip(Tensor self) {
  return self.is_hip();
}

inline bool Tensor::is_sparse() const {
  // NB: this is not a native function to avoid dispatching overhead.
  return impl_->is_sparse();
}

inline bool is_sparse(Tensor self) {
  return self.is_sparse();
}

#define DEFINE_CAST(T, name, _)                  \
  template <>                                    \
  inline T* Tensor::data() const {               \
    AT_CHECK(                                    \
        type().scalarType() == ScalarType::name, \
        "expected scalar type ",                 \
        #name,                                   \
        " but found ",                           \
        c10::toString(type().scalarType()));     \
    return static_cast<T*>(this->data_ptr());    \
  }

AT_FORALL_SCALAR_TYPES_WITH_COMPLEX_EXCEPT_COMPLEX_HALF(DEFINE_CAST)
#undef DEFINE_CAST

#define DEFINE_ITEM(T, name, _)   \
  template <>                     \
  inline T Tensor::item() const { \
    return item().to##name();     \
  }

AT_FORALL_SCALAR_TYPES_WITH_COMPLEX_EXCEPT_COMPLEX_HALF(DEFINE_ITEM)
#undef DEFINE_ITEM

} //namespace at
