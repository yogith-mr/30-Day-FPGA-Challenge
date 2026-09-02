# ➕ Day 4 — 1-Bit Full Adder

> **30-Day FPGA Challenge | Digital Logic Design with Verilog HDL**

![FPGA](https://img.shields.io/badge/FPGA-PYNQ--Z2-blue)
![HDL](https://img.shields.io/badge/HDL-Verilog-orange)
![Tool](https://img.shields.io/badge/Tool-Vivado%202026.1-red)
![Day](https://img.shields.io/badge/Challenge-Day%204-success)

---

## 📌 Overview

Day 4 focuses on designing and verifying a **1-bit Full Adder** using Verilog HDL.

A Full Adder is a combinational circuit that performs the addition of three 1-bit inputs: **A, B, and Cin (Carry-in)**.

The design produces two outputs:

- **Sum**
- **Carry**

The design was simulated, synthesized, implemented, converted into a bitstream, and tested on the **PYNQ-Z2 FPGA development board**.

---

## 🎯 Objectives

- Design a 1-bit Full Adder using Verilog HDL.
- Understand binary addition at the gate level.
- Understand the difference between Sum and Carry.
- Implement the Full Adder using XOR, AND, and OR gates.
- Create a Verilog testbench for functional verification.
- Test all possible input combinations.
- Analyze the simulation waveform.
- Perform synthesis and implementation in Vivado.
- Generate the FPGA bitstream.
- Apply XDC pin constraints.
- Test the design on the PYNQ-Z2 board.

---

## 🧩 Design Specification

### Inputs

```text
A   → First 1-bit input
B   → Second 1-bit input
Cin → Carry input
```

### Outputs

```text
Sum   → Addition result
Carry → Carry output
```

### Full Adder Truth Table

| A | B | Cin | Sum | Carry |
|:-:|:-:|:---:|:---:|:-----:|
| 0 | 0 |  0  |  0  |   0   |
| 0 | 0 |  1  |  1  |   0   |
| 0 | 1 |  0  |  1  |   0   |
| 0 | 1 |  1  |  0  |   1   |
| 1 | 0 |  0  |  1  |   0   |
| 1 | 0 |  1  |  0  |   1   |
| 1 | 1 |  0  |  0  |   1   |
| 1 | 1 |  1  |  1  |   1   |

---

## 💻 Verilog Implementation

The Full Adder was implemented using **structural gate-level modeling** with XOR, AND, and OR gates.

```verilog
module fulladder(sum, carry, a, b, cin);

input a, b, cin;
output sum, carry;

wire w1, w2, w3, w4;

xor(w1, a, b);
xor(sum, w1, cin);

and(w2, a, b);
and(w3, b, cin);
and(w4, cin, a);

or(carry, w2, w3, w4);

endmodule
```

### Logic Equations

```text
Sum = A ⊕ B ⊕ Cin

Carry = AB + BCin + ACin
```

The **Sum** output is generated using XOR gates, while the **Carry** output is generated using AND and OR gates.

The design is purely **combinational**, with no clock or sequential logic.

---

## 🧪 Verification

A Verilog testbench was created to verify the Full Adder functionality.

All **8 possible combinations** of the three 1-bit inputs were tested.

| Test | A | B | Cin | Expected Sum | Expected Carry |
|:----:|:-:|:-:|:---:|:------------:|:--------------:|
| 1 | 0 | 0 | 0 | 0 | 0 |
| 2 | 0 | 0 | 1 | 1 | 0 |
| 3 | 0 | 1 | 0 | 1 | 0 |
| 4 | 0 | 1 | 1 | 0 | 1 |
| 5 | 1 | 0 | 0 | 1 | 0 |
| 6 | 1 | 0 | 1 | 0 | 1 |
| 7 | 1 | 1 | 0 | 0 | 1 |
| 8 | 1 | 1 | 1 | 1 | 1 |

The simulation waveform was analyzed to confirm that the **Sum** and **Carry** outputs matched the expected truth table for all input combinations.

---

## 🔌 PYNQ-Z2 Hardware Mapping

The Full Adder was implemented on the **PYNQ-Z2 FPGA development board**.

### Inputs

```text
Button/Switch 0 → A
Button/Switch 1 → B
Button/Switch 2 → Cin
```

### Outputs

```text
LED 0 → Sum
LED 1 → Carry
```

The physical FPGA package pins are assigned through the **PYNQ-Z2 XDC constraints file**.

The input combinations were applied using the physical controls on the board, and the resulting **Sum** and **Carry** outputs were observed using the LEDs.

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

```text
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
```

---

## 🧠 Key Learnings

- Understanding 1-bit binary addition
- Difference between Sum and Carry
- Full Adder truth table
- Combinational logic design
- XOR, AND, and OR gate implementation
- Verilog structural gate-level modeling
- Verilog testbench creation
- Functional simulation and waveform analysis
- RTL and synthesized schematic analysis
- FPGA pin constraints using XDC
- Bitstream generation
- Hardware testing on the PYNQ-Z2

---

## 📐 Hardware Implementation

The Full Adder was successfully programmed onto the **PYNQ-Z2 FPGA** using the generated bitstream.

The physical inputs were varied across all possible combinations, and the corresponding **Sum** and **Carry** outputs were verified using the onboard LEDs.

This provided practical verification of the simulated Full Adder design on actual FPGA hardware.

---

## 📈 Outcome

**Status: ✅ Completed**

The 1-bit Full Adder was successfully designed using Verilog HDL, simulated for all possible input combinations, synthesized, implemented, converted into a bitstream, programmed onto the PYNQ-Z2, and verified using physical inputs and LEDs.

---

## 🚀 Next Step

**Day 5**