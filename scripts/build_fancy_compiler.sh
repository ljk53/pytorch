#!/bin/bash

set -e

DEBUG=ON BUILD_CAFFE2=OFF BUILD_TEST=OFF BUILD_BINARY=ON USE_LLVM=/usr/local/opt/llvm@9 python setup.py develop
