cmake_minimum_required(VERSION 3.1)

find_package(LLVM REQUIRED CONFIG)
add_definitions(${LLVM_DEFINITIONS})
include_directories(${LLVM_INCLUDE_DIRS})
link_directories(${LLVM_LIBRARY_DIRS})

add_library(OpDependencyPass MODULE
  op_dependency.cpp
)

target_compile_features(OpDependencyPass PRIVATE cxx_std_11)
set_target_properties(OpDependencyPass PROPERTIES COMPILE_FLAGS "-fno-rtti -O3")
