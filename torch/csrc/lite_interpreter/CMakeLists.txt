set(LITE_EXECUTOR_SRCS
    ${PROJECT_SOURCE_DIR}/torch/csrc/lite_interpreter/import_instructions.cpp
    ${PROJECT_SOURCE_DIR}/torch/csrc/lite_interpreter/instruction_executor.cpp
    ${PROJECT_SOURCE_DIR}/torch/csrc/lite_interpreter/gason.cpp
    ${PROJECT_SOURCE_DIR}/torch/csrc/lite_interpreter/register_ins_ops.cpp
    )

message("PROJECT_BINARY_DIR:" ${PROJECT_BINARY_DIR})

add_library(lite_executor STATIC ${LITE_EXECUTOR_SRCS})
target_compile_options(lite_executor PUBLIC
    -std=c++11)
target_include_directories(lite_executor
    PUBLIC
    ${PROJECT_SOURCE_DIR}/caffe2/serialize/
    ${PROJECT_BINARY_DIR}/aten/src/
    )
caffe2_interface_library(lite_executor lite_executor_interface)

add_executable(executor executor.cpp)
target_link_libraries(executor
    lite_executor_interface
    -Wl,--gc-sections -Wl,--print-gc-sections
    -Wl,--whole-archive
    caffe2
    -Wl,--no-whole-archive
)
set_property(TARGET executor PROPERTY CXX_STANDARD 11)

#add_executable(loader loader.cpp)
#target_link_libraries(loader torch caffe2_library)
#target_include_directories(loader
#    PUBLIC
#    ${PROJECT_BINARY_DIR}/aten/src/)
#set_property(TARGET loader PROPERTY CXX_STANDARD 11)
