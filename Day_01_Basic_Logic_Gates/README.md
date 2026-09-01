# 🔌 Day 1 — Basic Logic Gates

> **30-Day FPGA Challenge | Digital Logic Design with Verilog HDL**

![FPGA](https://img.shields.io/badge/FPGA-PYNQ--Z2-blue)
![HDL](https://img.shields.io/badge/HDL-Verilog-orange)
![Tool](https://img.shields.io/badge/Tool-Vivado%202026.1-red)
![Day](https://img.shields.io/badge/Challenge-Day%201-success)

---

## 📌 Overview

Welcome to **Day 1 of my 30-Day FPGA Challenge**.

Today I started with the fundamentals of digital hardware design by implementing and verifying **basic combinational logic gates using Verilog HDL**.

The designs were simulated, synthesized, implemented, converted into a bitstream, and finally tested on the **PYNQ-Z2 FPGA development board**.

This exercise establishes the foundation for understanding how simple Boolean logic is translated from **HDL code → FPGA hardware**.

---

## 🎯 Objectives

- Understand the fundamentals of combinational logic.
- Implement basic logic gates using **Verilog HDL**.
- Create a Verilog testbench for functional verification.
- Simulate and analyze the RTL design.
- Perform FPGA synthesis and implementation.
- Generate a programming bitstream.
- Deploy the design onto the **PYNQ-Z2**.
- Verify the physical hardware outputs using LEDs.

---

## 🧩 Logic Gates Implemented

| Gate | Function | Verilog Operator |
|------|----------|------------------|
| AND  | `Y = A · B` | `&` |
| NOT  | `Y = ~A` | `~` |
| NAND | `Y = ~(A · B)` | `~&` |
| XOR  | `Y = A ⊕ B` | `^` |

### Truth Table

| A | B | AND | NAND | XOR |
|:-:|:-:|:---:|:----:|:---:|
| 0 | 0 |  0  |  1   |  0  |
| 0 | 1 |  0  |  1   |  1  |
| 1 | 0 |  0  |  1   |  1  |
| 1 | 1 |  1  |  0   |  0  |

For the **NOT gate**, the output is:

| A | NOT |
|:-:|:---:|
| 0 |  1  |
| 1 |  0  |

---

## 🛠️ Tools & Hardware

### Hardware

- **FPGA Board:** PYNQ-Z2
- **Device:** Zynq-7000 SoC

### Software

- **HDL:** Verilog
- **FPGA Design Tool:** AMD Vivado 2026.1
- **Simulation:** Vivado Behavioral Simulation
- **Verification:** Verilog Testbench
- **Implementation:** Vivado Synthesis & Implementation

---

## 🔄 FPGA Design Flow

The complete design flow followed for this project was:

```text
        ┌─────────────────┐
        │   Verilog RTL   │
        └────────┬────────┘
                 ↓
        ┌─────────────────┐
        │    Testbench    │
        └────────┬────────┘
                 ↓
        ┌─────────────────┐
        │    Simulation   │
        └────────┬────────┘
                 ↓
        ┌─────────────────┐
        │   RTL Analysis  │
        └────────┬────────┘
                 ↓
        ┌─────────────────┐
        │    Synthesis    │
        └────────┬────────┘
                 ↓
        ┌─────────────────┐
        │  Implementation │
        └────────┬────────┘
                 ↓
        ┌─────────────────┐
        │ Bitstream (.bit)│
        └────────┬────────┘
                 ↓
        ┌─────────────────┐
        │   PYNQ-Z2 FPGA  │
        └────────┬────────┘
                 ↓
        ┌─────────────────┐
        │ Hardware Verify │
        └─────────────────┘
