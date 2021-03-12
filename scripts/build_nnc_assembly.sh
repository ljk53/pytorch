#!/bin/bash

set -eux -o pipefail

LLVM_BC=$1
INSTALL_DIR=test/cpp/lite_interpreter_runtime

llc ${LLVM_BC} -march=arm --mattr=+neon,+thumb2,+vfp3d16 -o ${INSTALL_DIR}/${LLVM_BC/.ll/_armv7.s}
llc ${LLVM_BC} -march=x86-64 -o ${INSTALL_DIR}/${LLVM_BC/.ll/_x86-64.s}
