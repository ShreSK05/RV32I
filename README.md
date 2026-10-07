# RV32I 32-Bit RISC-V Processor

## Overview

This project presents the design and Verilog RTL implementation of a **32-Bit RISC-V Processor** based on the RV32I instruction set architecture.

The processor uses a **multi-cycle architecture** with a finite-state-machine based control unit. The design includes the datapath, ALU, register file, memory, program counter, instruction register, immediate extension, and control logic.

The complete design consists of:

- 32-bit RISC-V processor
- Multi-cycle datapath
- Control unit
- 32 × 32-bit register file
- 32-bit ALU
- Program counter
- Instruction register
- Memory
- Immediate extension unit
- Arithmetic units
- Multiplexers
- Simulation testbench

---

## ADC Architecture

For an RV32I processor, the main datapath consists of the Program Counter, Instruction Memory, Instruction Register, Register File, Immediate Generator, ALU, Data Memory, Write-Back path, and Control Unit.

### Block Diagram

                         +----------------+
                         |  Control Unit  |
                         +-------+--------+
                                 |
                                 v
+------+       +----------+   +-------------+
|  PC  | ----> |  Memory  |-->| Instruction |
+------+       +----------+   |   Register  |
   ^                           +------+------+
   |                                  |
   |                                  v
   |                          +---------------+
   |                          | Register File |
   |                          +-------+-------+
   |                                  |
   |                                  v
   |                           +-------------+
   +---------------------------|     ALU     |
                               +------+------+
                                      |
                         +------------+------------+
                         |                         |
                         v                         v
                    +----------+             +----------+
                    |  Memory  |             | Writeback|
                    +----------+             +----------+

---

## Main Modules

| Module | Description |
|---|---|
| `top.v` | Top-level processor |
| `control_unit.v` | Multi-cycle control FSM |
| `alu.v` | Arithmetic Logic Unit |
| `register_file.v` | 32 × 32-bit register file |
| `pc.v` | Program Counter |
| `mem.v` | Memory module |
| `instr.v` | Instruction Register |
| `immext.v` | Immediate Extension Unit |
| `adder.v` | Adder |
| `subtractor.v` | Subtractor |
| `multiplier.v` | Multiplier |
| `mux2x1.v` | 2-to-1 Multiplexer |
| `mux3x1.v` | 3-to-1 Multiplexer |
| `fpu.v` | Arithmetic/FPU module |
| `tb.v` | Testbench |

---

## Processor Features

- 32-bit RISC-V architecture
- RV32I-style instruction support
- Multi-cycle execution
- FSM-based control unit
- 32 general-purpose registers
- 32-bit ALU
- Arithmetic operations
- Logical operations
- Shift operations
- Comparison operations
- Multiplication
- Load and store support
- Branch support
- Immediate instruction support
- Verilog RTL implementation
- Simulation testbench
- Synthesis and timing analysis

---

## ALU Operations

The ALU supports the following operations:

| Operation | Description |
|---|---|
| ADD | Addition |
| SUB | Subtraction |
| AND | Bitwise AND |
| OR | Bitwise OR |
| XOR | Bitwise XOR |
| SLL | Logical Shift Left |
| SRL | Logical Shift Right |
| SRA | Arithmetic Shift Right |
| SLT | Set Less Than |
| MUL | Multiplication |

---

## Simulation Parameters

| Parameter | Value |
|---|---|
| Processor Width | 32-bit |
| Architecture | RV32I |
| Processor Type | Multi-cycle |
| HDL | Verilog |
| Clock Period | 10 ns |
| Clock Frequency | 100 MHz |
| Clock Toggle Time | 5 ns |

---

## Testbench

The processor is verified using the `tb.v` testbench.

The testbench provides:

- Clock generation
- Reset generation
- Processor execution
- Program Counter monitoring
- Instruction monitoring
- ALU result monitoring
- Memory monitoring

The clock period used in simulation is **10 ns**, corresponding to a **100 MHz** clock frequency.

---

## Timing Results

| Parameter | Result |
|---|---:|
| Worst Negative Slack (WNS) | -0.50 ns |
| Total Negative Slack (TNS) | -1.03 ns |
| Worst Setup Slack | -0.50 ns |
| Worst Hold Slack | 0.19 ns |

The negative setup slack indicates that further timing optimization is required to achieve complete timing closure.


## Conclusion

A **32-bit RV32I RISC-V processor** was designed and implemented using Verilog HDL.

The processor uses a multi-cycle architecture with a dedicated control unit, ALU, register file, memory, program counter, instruction register, and immediate extension unit.

The project also includes arithmetic modules, multiplexers, a simulation testbench, and synthesis/static timing analysis reports.

The design provides a foundation for further development toward a complete and optimized RISC-V processor.
