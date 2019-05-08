// required for old g++ to compile PRId64 macros, see
// https://github.com/pytorch/pytorch/issues/3571
// for context
#define __STDC_FORMAT_MACROS

#include <ATen/Type.h>

// ${generated_comment}

#include <TH/TH.h>
#include <TH/THTensor.hpp>
#include <THNN/THNN.h>
#undef THNN_
#include <c10/core/Allocator.h>
#include <ATen/DeviceGuard.h>
#include <ATen/NativeFunctions.h>
#include <ATen/Utils.h>
#include <ATen/ExpandUtils.h>
#include <ATen/CPUGenerator.h>
#include <ATen/Context.h>
#include <ATen/CheckGenerator.h>
#include <ATen/WrapDimUtils.h>
#include <ATen/Dispatch.h>
#include <c10/util/Half.h>
#include <c10/core/TensorImpl.h>
#include <c10/core/UndefinedTensorImpl.h>
#include <c10/util/Optional.h>

#include <cstddef>
#include <functional>
#include <memory>
#include <utility>

#include <ATen/Config.h>

namespace at {

static inline ScalarType infer_scalar_type(const Tensor & t) {
   return t.scalar_type();
 }

static inline ScalarType infer_scalar_type(const TensorList & tl) {
   AT_CHECK(tl.size() > 0, "expected a non-empty list of Tensors");
   return tl[0].scalar_type();
 }

${flatten_type_method_definitions}

}
