enable_language(ASM)

set(NNC_ASM_SOURCES
  ${TORCH_ROOT}/test/cpp/lite_interpreter_runtime/linear_armv7.s
  ${TORCH_ROOT}/test/cpp/lite_interpreter_runtime/mobilenetv3_armv7.s)
set_source_files_properties(
  ${NNC_ASM_SOURCES} PROPERTIES COMPILE_FLAGS "-march=armv7-a -mfpu=neon")

add_executable(
  test_mobile_nnc
  ${NNC_ASM_SOURCES}
  ${TORCH_ROOT}/test/cpp/lite_interpreter_runtime/test_mobile_nnc.cpp)

target_include_directories(
  test_mobile_nnc PRIVATE
  ${ATen_CPU_INCLUDE}
  ${TORCH_SRC_DIR}/csrc/api
  ${TORCH_SRC_DIR}/csrc/api/include)
target_link_libraries(test_mobile_nnc PRIVATE torch)

if(NOT BUILD_TEST)
  return()
endif()

set(
  LITE_INTERPRETER_RUNTIME_TEST_DIR
  "${TORCH_ROOT}/test/cpp/lite_interpreter_runtime")
set(LITE_INTERPRETER_RUNTIME_TEST_DIR
  ${TORCH_ROOT}/test/cpp/lite_interpreter_runtime/main.cpp
  ${TORCH_ROOT}/test/cpp/lite_interpreter_runtime/test_lite_interpreter_runtime.cpp
)

add_executable(
  test_lite_interpreter_runtime
  ${LITE_INTERPRETER_RUNTIME_TEST_DIR})
target_include_directories(
  test_lite_interpreter_runtime PRIVATE
  ${ATen_CPU_INCLUDE})
target_link_libraries(test_lite_interpreter_runtime PRIVATE torch gtest)

if(INSTALL_TEST)
  install(TARGETS test_lite_interpreter_runtime DESTINATION bin)
  # Install PDB files for MSVC builds
  if(MSVC AND BUILD_SHARED_LIBS)
    install(
      FILES $<TARGET_PDB_FILE:test_lite_interpreter_runtime>
      DESTINATION bin OPTIONAL)
  endif()
endif()
