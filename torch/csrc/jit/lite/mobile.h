#pragma once

#include <istream>

#define MOBILE_API __attribute__((__visibility__("default")))

MOBILE_API void allocate_input_buffer(int c, int h, int w);
MOBILE_API float* input_buffer();
MOBILE_API float* output_buffer();
MOBILE_API bool is_model_loaded();
MOBILE_API void load_model(std::istream& input);
MOBILE_API void run_model();
