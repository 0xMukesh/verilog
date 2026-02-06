#include "Vadd16.h"
#include "verilated.h"
#include <cstdint>
#include <memory>
#include <print>

int main(int argc, char **argv) {
  auto contextp = std::make_unique<VerilatedContext>();
  contextp->commandArgs(argc, argv);

  auto dut = std::make_unique<Vadd16>(contextp.get());

  dut->a = 0x0000FFFF;
  dut->b = 0x00000001;
  dut->eval();

  std::print("a = {}, b = {}, sum = {}\n", dut->a, dut->b, dut->sum);
  return 0;
}
