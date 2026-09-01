# ⚖️ Day 3 — 2-Bit Comparator

> **30-Day FPGA Challenge | Digital Logic Design with Verilog HDL**

![FPGA](https://img.shields.io/badge/FPGA-PYNQ--Z2-blue)
![HDL](https://img.shields.io/badge/HDL-Verilog-orange)
![Tool](https://img.shields.io/badge/Tool-Vivado%202026.1-red)
![Day](https://img.shields.io/badge/Challenge-Day%203-success)

---

## 📌 Overview

Day 3 focuses on designing and verifying a **2-bit magnitude comparator** using Verilog HDL.

The comparator accepts two 2-bit inputs, **A** and **B**, and determines whether **A is greater than, equal to, or less than B**.

The design was simulated, synthesized, implemented, converted into a bitstream, and tested on the **PYNQ-Z2 FPGA development board**.

---

## 🎯 Objectives

- Design a 2-bit comparator using Verilog HDL.
- Understand multi-bit comparison.
- Create a Verilog testbench for functional verification.
- Simulate and analyze the design.
- Perform synthesis and implementation in Vivado.
- Generate the FPGA bitstream.
- Apply XDC pin constraints.
- Test the design on the PYNQ-Z2 board.

---

## 🧩 Design Specification

### Inputs

```text
A = A[1:0]
B = B[1:0]

### Outputs
A_gt_B → A > B
A_eq_B → A = B
A_lt_B → A < B


|  A  |  B  | A > B | A = B | A < B |
| :-: | :-: | :---: | :---: | :---: |
|  00 |  00 |   0   |   1   |   0   |
|  00 |  01 |   0   |   0   |   1   |
|  00 |  10 |   0   |   0   |   1   |
|  00 |  11 |   0   |   0   |   1   |
|  01 |  00 |   1   |   0   |   0   |
|  01 |  01 |   0   |   1   |   0   |
|  01 |  10 |   0   |   0   |   1   |
|  01 |  11 |   0   |   0   |   1   |
|  10 |  00 |   1   |   0   |   0   |
|  10 |  01 |   1   |   0   |   0   |
|  10 |  10 |   0   |   1   |   0   |
|  10 |  11 |   0   |   0   |   1   |
|  11 |  00 |   1   |   0   |   0   |
|  11 |  01 |   1   |   0   |   0   |
|  11 |  10 |   1   |   0   |   0   |
|  11 |  11 |   0   |   1   |   0   |


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
        │   Verilog RTL        │
        └────────┬────────┘
                    ↓
        ┌─────────────────┐
        │    Testbench         │
        └────────┬────────┘
                    ↓
        ┌─────────────────┐
        │    Simulation        │
        └────────┬────────┘
                    ↓
        ┌─────────────────┐
        │   RTL Analysis       │
        └────────┬────────┘
                    ↓
        ┌─────────────────┐
        │    Synthesis         │
        └────────┬────────┘
                    ↓
        ┌─────────────────┐
        │  Implementation      │
        └────────┬────────┘
                    ↓
        ┌─────────────────┐
        │ Bitstream (.bit)     │
        └────────┬────────┘
                    ↓
        ┌─────────────────┐
        │   PYNQ-Z2 FPGA       │
        └────────┬────────┘
                    ↓
        ┌─────────────────┐
        │ Hardware Verify      │
        └─────────────────┘
