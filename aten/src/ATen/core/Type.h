#pragma once

#include <ATen/core/ATenGeneral.h>
#include <c10/core/Allocator.h>
#include <c10/util/Deprecated.h>
#include <ATen/core/Generator.h>
#include <c10/core/Layout.h>
#include <c10/core/Scalar.h>
#include <c10/core/ScalarType.h>
#include <ATen/core/SparseTensorRef.h>
#include <c10/util/ArrayRef.h>
#include <c10/util/Half.h>
#include <c10/core/TensorTypeIdRegistration.h>
#include <ATen/core/Reduction.h>
#include <c10/core/TensorOptions.h>

#include <c10/util/Optional.h>

#include <array>
#include <cstddef>
#include <functional>
#include <limits>
#include <memory>

// To solve the conflict of s_addr in inaddr.h
#ifdef _MSC_VER
#ifdef s_addr
#undef s_addr
#endif
#endif

namespace c10 {
struct Storage;
}

namespace at {

class Tensor;
using TensorList = ArrayRef<Tensor>;

class Context;
struct Generator;

static inline void noop_deleter(void*) {}

enum class TypeID {
  CPUBool,
  CPUByte,
  CPUChar,
  CPUDouble,
  CPUFloat,
  CPUInt,
  CPULong,
  CPUShort,
  CPUHalf,
  CPUComplexFloat,
  CPUComplexDouble,
  CUDAComplexFloat,
  CUDAComplexDouble,
  Undefined,
  NumOptions
};

struct CAFFE2_API Type {
  explicit Type(TensorTypeId type_id, bool is_variable, bool is_undefined)
      : type_id_(type_id), is_variable_(is_variable), is_undefined_(is_undefined) {}

  virtual ~Type() {}
  virtual ScalarType scalarType() const = 0;
  virtual caffe2::TypeMeta typeMeta() const = 0;
  virtual Backend backend() const = 0;
  Layout layout() const noexcept { return layout_from_backend(backend()); }
  virtual bool is_cuda() const = 0;
  virtual bool is_hip() const = 0;
  virtual bool is_sparse() const = 0;
  virtual bool is_distributed() const = 0;
  bool is_variable() const noexcept { return is_variable_; }
  bool is_undefined() const noexcept { return is_undefined_; }
  virtual Allocator * allocator() const = 0;
  virtual Device getDeviceFromPtr(void * data) const = 0;
  virtual Storage storageFromBlob(void * data, int64_t size, const std::function<void(void*)> & deleter=noop_deleter) const = 0;
  virtual Storage storageWithAllocator(int64_t size, Allocator* allocator) const = 0;
  virtual std::unique_ptr<Generator> generator() const = 0;
  virtual Tensor unsafeTensorFromTH(void * th_pointer, bool retain) const = 0;
  virtual Storage unsafeStorageFromTH(void * th_pointer, bool retain) const = 0;
  virtual const char * toString() const = 0;
  virtual size_t elementSizeInBytes() const = 0;
  virtual Type & toBackend(Backend b) const = 0;
  virtual Type & toScalarType(ScalarType s) const = 0;
  Type & toSparse() const {
    return this->toBackend(at::toSparse(this->backend()));
  }
  Type & toDense() const {
    return this->toBackend(at::toDense(this->backend()));
  }
  Type & cpu() const {
    return this->toBackend(at::backendToCPU(this->backend()));
  }
  Type & cuda() const {
    return this->toBackend(at::backendToCUDA(this->backend()));
  }
  Type & hip() const {
    return this->toBackend(at::backendToHIP(this->backend()));
  }
  // contiguous IDs for all types in the system
  // for external dispatch
  virtual TypeID ID() const = 0;

  // New-style TensorTypeId that supports open registration.
  TensorTypeId type_id() const { return type_id_; }

  // NB: This will return DeviceType::CPU for Backend::SparseCPU
  DeviceType device_type() const {
    return backendToDeviceType(backend());
  }

  virtual Tensor copy(
      const Tensor& src,
      bool non_blocking = false,
      c10::optional<Device> to_device = {}) const = 0;
  virtual Tensor & copy_(Tensor & self, const Tensor & src, bool non_blocking=false) const = 0;

  virtual void backward(
      Tensor& self,
      c10::optional<Tensor> gradient,
      bool keep_graph,
      bool create_graph) const = 0;
  virtual void set_data(Tensor & self, Tensor new_data) const = 0;

  virtual Tensor tensorFromBlob(void * data, IntArrayRef sizes, const std::function<void(void*)> & deleter=noop_deleter) const = 0;
  virtual Tensor tensorFromBlob(void * data, IntArrayRef sizes, IntArrayRef strides, const std::function<void(void*)> & deleter=noop_deleter) const = 0;
  virtual Tensor tensorWithAllocator(IntArrayRef sizes, Allocator* allocator) const = 0;
  virtual Tensor tensorWithAllocator(IntArrayRef sizes, IntArrayRef strides, Allocator* allocator) const = 0;

  bool operator==(const Type& other) const {
    return this == &other;
  }
  bool operator!=(const Type& other) const {
    return this != &other;
  }

  /// Constructs the `TensorOptions` from a type and a `device_index`.
  TensorOptions options(int16_t device_index = -1) const {
    return TensorOptions().dtype(typeMeta())
                          .device(device_type(), device_index)
                          .layout(layout())
                          .is_variable(is_variable());
  }

  /// Constructs the `TensorOptions` from a type and a Device.  Asserts that
  /// the device type matches the device type of the type.
  TensorOptions options(c10::optional<Device> device_opt) const {
    if (!device_opt.has_value()) {
      return options(-1);
    } else {
      Device device = device_opt.value();
      AT_ASSERT(device.type() == device_type());
      return options(device.index());
    }
  }

  operator TensorOptions() const {
    return options();
  }

  // example
  // virtual Tensor * add(Tensor & a, Tensor & b) = 0;
  virtual Tensor add(const Tensor & self, const Tensor & other, Scalar alpha) const = 0;
  virtual Tensor & add_(Tensor & self, const Tensor & other, Scalar alpha) const = 0;
  virtual Tensor add(const Tensor & self, Scalar other, Scalar alpha) const = 0;
  virtual Tensor & add_(Tensor & self, Scalar other, Scalar alpha) const = 0;
  virtual Tensor all(const Tensor & self, int64_t dim, bool keepdim) const = 0;
  virtual Tensor as_strided(const Tensor & self, IntArrayRef size, IntArrayRef stride, c10::optional<int64_t> storage_offset) const = 0;
  virtual Tensor & as_strided_(Tensor & self, IntArrayRef size, IntArrayRef stride, c10::optional<int64_t> storage_offset) const = 0;
  virtual Tensor contiguous(const Tensor & self) const = 0;
  virtual Tensor div(const Tensor & self, const Tensor & other) const = 0;
  virtual Tensor & div_(Tensor & self, const Tensor & other) const = 0;
  virtual Tensor div(const Tensor & self, Scalar other) const = 0;
  virtual Tensor & div_(Tensor & self, Scalar other) const = 0;
  virtual Tensor & resize_(Tensor & self, IntArrayRef size) const = 0;
  virtual Tensor expand(const Tensor & self, IntArrayRef size, bool implicit) const = 0;
  virtual Tensor & fill_(Tensor & self, Scalar value) const = 0;
  virtual Tensor & fill_(Tensor & self, const Tensor & value) const = 0;
  virtual bool is_nonzero(const Tensor & self) const = 0;
  virtual Tensor & log_(Tensor & self) const = 0;
  virtual std::tuple<Tensor,Tensor> max(const Tensor & self, int64_t dim, bool keepdim) const = 0;
  virtual Tensor mean(const Tensor & self, ScalarType dtype) const = 0;
  virtual Tensor mean(const Tensor & self) const = 0;
  virtual Tensor mean(const Tensor & self, IntArrayRef dim, bool keepdim, ScalarType dtype) const = 0;
  virtual Tensor mean(const Tensor & self, IntArrayRef dim, bool keepdim) const = 0;
  virtual Tensor mean(const Tensor & self, IntArrayRef dim, ScalarType dtype) const = 0;
  virtual std::tuple<Tensor,Tensor> min(const Tensor & self, int64_t dim, bool keepdim) const = 0;
  virtual Tensor mul(const Tensor & self, const Tensor & other) const = 0;
  virtual Tensor & mul_(Tensor & self, const Tensor & other) const = 0;
  virtual Tensor mul(const Tensor & self, Scalar other) const = 0;
  virtual Tensor & mul_(Tensor & self, Scalar other) const = 0;
  virtual Tensor narrow(const Tensor & self, int64_t dim, int64_t start, int64_t length) const = 0;
  virtual Tensor permute(const Tensor & self, IntArrayRef dims) const = 0;
  virtual Tensor select(const Tensor & self, int64_t dim, int64_t index) const = 0;
  virtual int64_t size(const Tensor & self, int64_t dim) const = 0;
  virtual Tensor slice(const Tensor & self, int64_t dim, int64_t start, int64_t end, int64_t step) const = 0;
  virtual Tensor squeeze(const Tensor & self) const = 0;
  virtual Tensor squeeze(const Tensor & self, int64_t dim) const = 0;
  virtual Tensor & squeeze_(Tensor & self) const = 0;
  virtual Tensor & squeeze_(Tensor & self, int64_t dim) const = 0;
  virtual int64_t stride(const Tensor & self, int64_t dim) const = 0;
  virtual Tensor sum(const Tensor & self, ScalarType dtype) const = 0;
  virtual Tensor sum(const Tensor & self) const = 0;
  virtual Tensor sum(const Tensor & self, IntArrayRef dim, bool keepdim, ScalarType dtype) const = 0;
  virtual Tensor sum(const Tensor & self, IntArrayRef dim, bool keepdim) const = 0;
  virtual Tensor sum(const Tensor & self, IntArrayRef dim, ScalarType dtype) const = 0;
  virtual Tensor t(const Tensor & self) const = 0;
  virtual Tensor transpose(const Tensor & self, int64_t dim0, int64_t dim1) const = 0;
  virtual Tensor unsqueeze(const Tensor & self, int64_t dim) const = 0;
  virtual Tensor clone(const Tensor & self) const = 0;
  virtual Tensor & zero_(Tensor & self) const = 0;
  virtual Tensor sub(const Tensor & self, const Tensor & other, Scalar alpha) const = 0;
  virtual Tensor & sub_(Tensor & self, const Tensor & other, Scalar alpha) const = 0;
  virtual Tensor sub(const Tensor & self, Scalar other, Scalar alpha) const = 0;
  virtual Tensor & sub_(Tensor & self, Scalar other, Scalar alpha) const = 0;
  virtual Tensor addmm(const Tensor & self, const Tensor & mat1, const Tensor & mat2, Scalar beta, Scalar alpha) const = 0;
  virtual int64_t sparse_dim(const Tensor & self) const = 0;
  virtual int64_t dense_dim(const Tensor & self) const = 0;
  virtual Tensor _indices(const Tensor & self) const = 0;
  virtual Tensor _values(const Tensor & self) const = 0;
  virtual int64_t numel(const Tensor & self) const = 0;
  virtual Tensor to(const Tensor & self, const TensorOptions & options, bool non_blocking, bool copy) const = 0;
  virtual Tensor to(const Tensor & self, Device device, ScalarType dtype, bool non_blocking, bool copy) const = 0;
  virtual Tensor to(const Tensor & self, ScalarType dtype, bool non_blocking, bool copy) const = 0;
  virtual Tensor to(const Tensor & self, const Tensor & other, bool non_blocking, bool copy) const = 0;
  virtual Scalar item(const Tensor & self) const = 0;
  virtual void* data_ptr(const Tensor & self) const = 0;
  virtual Tensor & set_(Tensor & self, Storage source) const = 0;
  virtual Tensor & set_(Tensor & self, Storage source, int64_t storage_offset, IntArrayRef size, IntArrayRef stride) const = 0;
  virtual Tensor & set_(Tensor & self, const Tensor & source) const = 0;
  virtual Tensor & set_(Tensor & self) const = 0;
  virtual Tensor view(const Tensor & self, IntArrayRef size) const = 0;
  virtual Tensor & remainder_(Tensor & self, Scalar other) const = 0;
  virtual Tensor & remainder_(Tensor & self, const Tensor & other) const = 0;
  virtual Tensor ne(const Tensor & self, Scalar other) const = 0;
  virtual Tensor ne(const Tensor & self, const Tensor & other) const = 0;
  virtual Tensor eq(const Tensor & self, Scalar other) const = 0;
  virtual Tensor eq(const Tensor & self, const Tensor & other) const = 0;
  virtual Tensor ge(const Tensor & self, Scalar other) const = 0;
  virtual Tensor ge(const Tensor & self, const Tensor & other) const = 0;
  virtual Tensor le(const Tensor & self, Scalar other) const = 0;
  virtual Tensor le(const Tensor & self, const Tensor & other) const = 0;
  virtual Tensor gt(const Tensor & self, Scalar other) const = 0;
  virtual Tensor gt(const Tensor & self, const Tensor & other) const = 0;
  virtual Tensor lt(const Tensor & self, Scalar other) const = 0;
  virtual Tensor lt(const Tensor & self, const Tensor & other) const = 0;
  virtual Tensor neg(const Tensor & self) const = 0;
  virtual Tensor remainder(const Tensor & self, Scalar other) const = 0;
  virtual Tensor remainder(const Tensor & self, const Tensor & other) const = 0;
  virtual Tensor min(const Tensor & self, const Tensor & other) const = 0;
  virtual Tensor min(const Tensor & self) const = 0;
  virtual Tensor max(const Tensor & self, const Tensor & other) const = 0;
  virtual Tensor max(const Tensor & self) const = 0;
  virtual Tensor all(const Tensor & self) const = 0;
  virtual bool equal(const Tensor & self, const Tensor & other) const = 0;
protected:
  TensorTypeId type_id_;
  bool is_variable_;
  bool is_undefined_;
};

} // namespace at

#include <ATen/core/Tensor.h>
