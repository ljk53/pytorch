#!/bin/bash
##############################################################################
# Build LLVM code analyzer and analyze torch code dependency.
##############################################################################
#
# Example usage:
# LLVM_DIR=${HOME}/src/llvm8/build/install ANALYZE_TORCH=1 scripts/build_code_analyzer.sh
#
# Analyze test project:
# LLVM_DIR=${HOME}/src/llvm8/build/install ANALYZE_TEST=1 scripts/build_code_analyzer.sh

set -ex

SRC_HOME="$( cd "$(dirname "$0")"/.. ; pwd -P)"

# Clang/LLVM path
export LLVM_DIR=${LLVM_DIR:-"/usr/lib/llvm-8"}
export CC=${LLVM_DIR}/bin/clang
export CXX=${LLVM_DIR}/bin/clang++

# Build code analyzer
BUILD_ROOT=${BUILD_ROOT:-"${SRC_HOME}/build_code_analyzer"}
WORK_DIR=${BUILD_ROOT}/work

mkdir -p ${BUILD_ROOT}
cd ${BUILD_ROOT}
cmake ${SRC_HOME}/tools/code_analyzer -DCMAKE_BUILD_TYPE=Release

if [ -z "${MAX_JOBS}" ]; then
  if [ "$(uname)" == 'Darwin' ]; then
    MAX_JOBS=$(sysctl -n hw.ncpu)
  else
    MAX_JOBS=$(nproc)
  fi
fi

make "-j${MAX_JOBS}"

# Build mobile libtorch into llvm assembly (only process c++ files for now).
TORCH_BUILD_ROOT=${BUILD_ROOT}/build_mobile
TORCH_INSTALL_PREFIX=${TORCH_BUILD_ROOT}/install

if [ ! -d "${TORCH_INSTALL_PREFIX}" ]; then
  BUILD_ROOT=${TORCH_BUILD_ROOT} CXXFLAGS='-S -emit-llvm' ${SRC_HOME}/scripts/build_mobile.sh
fi

if [ -n "${ANALYZE_TORCH}" ]; then
  # Extract libtorch archive
  OBJECT_DIR=${WORK_DIR}/torch_objs
  rm -rf ${OBJECT_DIR} && mkdir -p ${OBJECT_DIR} && pushd ${OBJECT_DIR}
  ar x ${TORCH_INSTALL_PREFIX}/lib/libc10.a
  ar x ${TORCH_INSTALL_PREFIX}/lib/libtorch.a
  popd

  # Link libtorch into a single module
  ${LLVM_DIR}/bin/llvm-link -S ${OBJECT_DIR}/*.cpp.o -o ${WORK_DIR}/torch.ll

  # Analyze dependency
  ${LLVM_DIR}/bin/opt \
    -load=${BUILD_ROOT}/libOpDependencyPass.so \
    -op_dependency \
    -disable-output \
    -closure \
    ${WORK_DIR}/torch.ll > ${WORK_DIR}/torch_result.txt
fi

if [ -n "${ANALYZE_TEST}" ]; then
  # Build test project
  TEST_BUILD_ROOT=${BUILD_ROOT}/build_test
  mkdir -p ${TEST_BUILD_ROOT}
  pushd ${TEST_BUILD_ROOT}
  cmake ${SRC_HOME}/tools/code_analyzer/test -DCMAKE_PREFIX_PATH=${TORCH_INSTALL_PREFIX}
  make "-j${MAX_JOBS}"
  popd

  # Extract archive
  OBJECT_DIR=${WORK_DIR}/test_objs
  rm -rf ${OBJECT_DIR} && mkdir -p ${OBJECT_DIR} && pushd ${OBJECT_DIR}
  ar x ${TORCH_INSTALL_PREFIX}/lib/libc10.a
  ar x ${TEST_BUILD_ROOT}/libSimpleOps.a
  popd

  # Link into a single module
  ${LLVM_DIR}/bin/llvm-link -S ${OBJECT_DIR}/*.cpp.o -o ${WORK_DIR}/test.ll

  # Analyze dependency
  ${LLVM_DIR}/bin/opt \
    -load=${BUILD_ROOT}/libOpDependencyPass.so \
    -op_dependency \
    -disable-output \
    -dn ${DEBUG_NODES:-"at::,TypeDefault,CPUType"} \
    ${WORK_DIR}/test.ll | tee ${WORK_DIR}/test_result.txt
fi
