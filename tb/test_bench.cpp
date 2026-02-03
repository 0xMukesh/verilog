#include "Vgates.h"
#include "verilated.h"
#include <cstdio>
#include <memory>
#include <string>
#include <vector>

struct TestCase {
  int input;
  int expected_output;
  std::string description;
};

int run_gates_test(const TestCase &t) {
  auto dut = std::make_unique<Vgates>();

  dut->in = t.input;
  dut->eval();

  const bool passed = (dut->out == t.expected_output);

  if (passed) {
    std::printf("PASS: %s\n", t.description.c_str());
  } else {
    std::fprintf(stderr, "FAIL: %s. in = %d, got=%d, expected = %d\n",
                 t.description.c_str(), t.input, dut->out, t.expected_output);
  }

  return passed;
}

int main(int argc, char **argv) {
  Verilated::commandArgs(argc, argv);

  const std::vector<TestCase> tests = {{0, 1, "input 0 should output 1"},
                                       {1, 0, "input 1 should output 0"}};

  size_t tests_passed = 0;

  for (const auto &test : tests) {
    if (run_gates_test(test)) {
      ++tests_passed;
    }
  }

  printf("\n%d/%d tests passed\n", static_cast<int>(tests_passed),
         static_cast<int>(tests.size()));
  return (tests_passed == tests.size()) ? EXIT_SUCCESS : EXIT_FAILURE;
}