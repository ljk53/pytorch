#pragma once

#include <torch/csrc/WindowsTorchApiMacro.h>
#include <cstdint>

#define FOR_ALL_EXTERN_FUN(_)         \
_(nnc_aten_conv2d)                    \
_(nnc_aten_matmul)                    \
_(nnc_aten_mv)                        \
_(nnc_aten_mm)                        \
_(nnc_aten_adaptive_avg_pool2d)       \
_(nnc_aten_mean)                      \
_(nnc_aten_addmm)                     \

#define DECLARE_EXTERN_FUN(NAME)      \
namespace torch {                     \
namespace jit {                       \
namespace tensorexpr {                \
TORCH_API void NAME(                  \
    int64_t bufs_num,                 \
    void** buf_data,                  \
    int64_t* buf_ranks,               \
    int64_t* buf_dims,                \
    int8_t* buf_dtypes,               \
    int64_t args_num,                 \
    int64_t* extra_args);             \
}                                     \
}                                     \
}                                     \

FOR_ALL_EXTERN_FUN(DECLARE_EXTERN_FUN)

#undef DECLARE_EXTERN_FUN
