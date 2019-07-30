#!/bin/sh

mkdir build_lite
cd build_lite

cmake .. \
-GNinja \
-DCMAKE_PREFIX_PATH=$(python -c 'from distutils.sysconfig import get_python_lib; print(get_python_lib())') \
-DPYTHON_EXECUTABLE=$(python -c 'import sys; print(sys.executable)') \
-DCMAKE_INSTALL_PREFIX=$(pwd)/install \
-DCMAKE_BUILD_TYPE=Release \
-DBUILD_TEST=OFF \
-DBUILD_BINARY=OFF \
-DBUILD_PYTHON=OFF \
-DBUILD_SHARED_LIBS=OFF \
-DBUILD_CAFFE2_OPS=OFF \
-DUSE_CUDA=OFF \
-DUSE_GFLAGS=OFF \
-DUSE_OPENCV=OFF \
-DUSE_LMDB=OFF \
-DUSE_LEVELDB=OFF \
-DUSE_MPI=OFF \
-DUSE_OPENMP=OFF \
-DUSE_NNPACK=ON \
-DCAFFE2_CUSTOM_PROTOC_EXECUTABLE=${HOME}/src/pytorch/build_host_protoc/bin/protoc \
-DCAFFE2_LINK_LOCAL_PROTOBUF=OFF \
-DBUILD_CUSTOM_PROTOBUF=OFF \
-DTORCH_STATIC=ON \
-DBUILD_CAFFE2_MOBILE=OFF \
-DCMAKE_TOOLCHAIN_FILE=${ANDROID_NDK}/build/cmake/android.toolchain.cmake \
-DANDROID_NDK=${ANDROID_NDK} \
-DANDROID_ABI='armeabi-v7a with NEON' \
-DANDROID_NATIVE_API_LEVEL=21 \
-DANDROID_CPP_FEATURES='rtti exceptions' \
-DANDROID_TOOLCHAIN=clang \


#-DANDROID_STL=c++_shared


ninja -j48 install
