#!/bin/sh

PYTORCH_HOME="$( cd "$(dirname "$0")"/.. ; pwd -P)"
BUILD_DIR=${PYTORCH_HOME}/build_android

mkdir -p ${BUILD_DIR}
cd ${BUILD_DIR}

cmake \
${PYTORCH_HOME} \
-DCMAKE_INSTALL_PREFIX=${BUILD_DIR}/install \
-DCMAKE_BUILD_TYPE=Release \
-GNinja \
-DBUILD_TEST=OFF \
-DBUILD_BINARY=OFF \
-DBUILD_PYTHON=OFF \
-DBUILD_SHARED_LIBS=OFF \
-DTORCH_STATIC=ON \
-DUSE_CUDA=OFF \
-DUSE_GFLAGS=OFF \
-DUSE_OPENCV=OFF \
-DUSE_LMDB=OFF \
-DUSE_LEVELDB=OFF \
-DUSE_MPI=OFF \
-DUSE_OPENMP=OFF \
-DCMAKE_PREFIX_PATH=$(python -c 'from distutils.sysconfig import get_python_lib; print(get_python_lib())') \
-DPYTHON_EXECUTABLE=$(python -c 'import sys; print(sys.executable)') \
-DBUILD_CAFFE2_MOBILE=OFF \
-DCAFFE2_CUSTOM_PROTOC_EXECUTABLE=${PYTORCH_HOME}/build_host_protoc/bin/protoc \
-DCMAKE_TOOLCHAIN_FILE=${ANDROID_NDK}/build/cmake/android.toolchain.cmake \
-DANDROID_NDK=${ANDROID_NDK} \
-DANDROID_ABI='armeabi-v7a with NEON' \
-DANDROID_NATIVE_API_LEVEL=21 \
-DANDROID_CPP_FEATURES='rtti exceptions' \
-DANDROID_TOOLCHAIN=clang \
-DBUILD_MOBILE_LIB=ON \

ninja -j48 install
