#  Day 3 — 2-Bit Comparator

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

    A = A[1:0]
    B = B[1:0]

### Outputs

    A_gt_B → A > B
    A_eq_B → A = B
    A_lt_B → A < B

### Truth Table

| A | B | A > B | A = B | A < B |
|:-:|:-:|:-----:|:-----:|:-----:|
| 00 | 00 | 0 | 1 | 0 |
| 00 | 01 | 0 | 0 | 1 |
| 00 | 10 | 0 | 0 | 1 |
| 00 | 11 | 0 | 0 | 1 |
| 01 | 00 | 1 | 0 | 0 |
| 01 | 01 | 0 | 1 | 0 |
| 01 | 10 | 0 | 0 | 1 |
| 01 | 11 | 0 | 0 | 1 |
| 10 | 00 | 1 | 0 | 0 |
| 10 | 01 | 1 | 0 | 0 |
| 10 | 10 | 0 | 1 | 0 |
| 10 | 11 | 0 | 0 | 1 |
| 11 | 00 | 1 | 0 | 0 |
| 11 | 01 | 1 | 0 | 0 |
| 11 | 10 | 1 | 0 | 0 |
| 11 | 11 | 0 | 1 | 0 |

---

## 💻 Verilog Implementation

    module comparator_2bit(
        input [1:0] A,
        input [1:0] B,
        output A_gt_B,
        output A_eq_B,
        output A_lt_B
    );

        assign A_gt_B = (A > B);
        assign A_eq_B = (A == B);
        assign A_lt_B = (A < B);

    endmodule

The design is purely **combinational**, with no clock or sequential logic.

---

## 🧪 Verification

A simple Verilog testbench was created to verify the three comparison conditions.

| Test | A | B | Expected Result |
|:----:|:-:|:-:|:---------------:|
| 1 | `10` | `01` | A > B |
| 2 | `11` | `11` | A = B |
| 3 | `01` | `10` | A < B |
| 4 | `00` | `00` | A = B |

The simulation waveform was checked to confirm that the expected output was generated for each test case.

---

## 🔌 PYNQ-Z2 Hardware Mapping

### Inputs

    Button 0 → A[0]
    Button 1 → A[1]
    Button 2 → B[0]
    Button 3 → B[1]

### Outputs

    LED 0 → A_gt_B
    LED 1 → A_eq_B
    LED 2 → A_lt_B

The physical FPGA package pins are assigned through the **PYNQ-Z2 XDC constraints file**.

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
- **Constraints:** XDC
- **Implementation:** Vivado Synthesis & Implementation

---

## 🔄 FPGA Design Flow

The complete design flow followed for this project was:

    Verilog RTL
         ↓
    Testbench
         ↓
    Simulation
         ↓
    RTL Analysis
         ↓
    Synthesis
         ↓
    Implementation
         ↓
    Bitstream (.bit)
         ↓
    PYNQ-Z2 FPGA
         ↓
    Hardware Verification

---

## 🧠 Key Learnings

- Multi-bit signals in Verilog
- Magnitude comparison
- Combinational logic design
- Verilog testbench creation
- RTL simulation and verification
- FPGA pin constraints using XDC
- Hardware testing on the PYNQ-Z2

---

## 📈 Outcome

**Status: ✅ Completed**

The 2-bit comparator was successfully designed, simulated, synthesized, implemented, programmed onto the PYNQ-Z2, and verified using physical buttons and LEDs.

---

## 🚀 Next Step

**Day 4**