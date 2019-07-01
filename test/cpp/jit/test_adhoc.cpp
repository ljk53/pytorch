#include "test/cpp/jit/test_base.h"
#include "test/cpp/jit/test_utils.h"
#include <iostream>

using namespace torch::jit;
using namespace torch::jit::test;

int main(int argc, char* argv[]) {
  constexpr int batch_size = 4;
  constexpr int input_size = 256;
  constexpr int seq_len = 32;

  int hidden_size = 2 * input_size;

  auto input = at::randn({seq_len, batch_size, input_size}, at::kCPU);
  auto hx = at::randn({batch_size, hidden_size}, at::kCPU);
  auto cx = at::randn({batch_size, hidden_size}, at::kCPU);
  auto w_ih = t_def(at::randn({4 * hidden_size, input_size}, at::kCPU));
  auto w_hh = t_def(at::randn({4 * hidden_size, hidden_size}, at::kCPU));

  auto lstm_g = build_lstm();
  Code lstm_function(lstm_g);
  lstm_function.print(std::cout);
  InterpreterState lstm_interp(lstm_function);
  auto outputs = run(lstm_interp, {input[0], hx, cx, w_ih, w_hh});
  std::tie(hx, cx) = lstm(input[0], hx, cx, w_ih, w_hh);
}
