````markdown
# 🔌 Day 7 — 7-Segment Display (Common Cathode)

> **30-Day FPGA Challenge | Digital Logic Design with Verilog HDL**

![FPGA](https://img.shields.io/badge/FPGA-PYNQ--Z2-blue)
![HDL](https://img.shields.io/badge/HDL-Verilog-orange)
![Tool](https://img.shields.io/badge/Tool-Vivado%202026.1-red)
![Day](https://img.shields.io/badge/Challenge-Day%207-success)

---

## 📌 Overview

Welcome to **Day 7 of my 30-Day FPGA Challenge**.

Today I implemented a **BCD-to-7-Segment Display decoder using Verilog HDL** to display decimal digits from **0 to 9** on a **common-cathode 7-segment display**.

The design accepts a **4-bit BCD input** and generates a **7-bit segment output** corresponding to the required display pattern.

The design was simulated, synthesized, implemented, converted into a bitstream, and tested on the **PYNQ-Z2 FPGA development board**.

This project provides practical experience in **combinational decoding, 7-segment display control, Verilog case statements, and FPGA hardware interfacing**.

---

## 🎯 Objectives

- Understand the working principle of a **7-segment display**.
- Implement a **BCD-to-7-segment decoder** using Verilog HDL.
- Control a **common-cathode 7-segment display**.
- Create a Verilog testbench for functional verification.
- Simulate and analyze the RTL design.
- Perform FPGA synthesis and implementation.
- Generate a programming bitstream.
- Deploy the design onto the **PYNQ-Z2**.
- Verify the decimal digit display on hardware.

---

## 🧠 Concept

A **7-segment display** consists of seven individual LED segments named **A, B, C, D, E, F, and G**.

```text
          A
        ─────
     F │     │ B
       │     │
        ─────
          G
       │     │
     E │     │ C
       │     │
        ─────
          D
````

Different combinations of these segments are illuminated to represent decimal digits.

The design uses a **4-bit BCD input** to select the required 7-segment pattern.

Since the display used in this project is **common cathode**, the segment control logic is based on driving the required segment outputs HIGH.

---

## 🧩 Design / Logic

### Inputs

The design has a 4-bit BCD input:

```text
bcd[3:0]
```

The valid BCD inputs represent decimal digits from **0 to 9**.

### Outputs

The design generates a 7-bit segment output:

```text
seg[6:0]
```

Each output bit controls one segment of the display.

### BCD-to-7-Segment Mapping

| BCD Input | Decimal | Segment Output |
| :-------: | :-----: | :------------: |
|   `0000`  |    0    |    `0111111`   |
|   `0001`  |    1    |    `0000110`   |
|   `0010`  |    2    |    `1011011`   |
|   `0011`  |    3    |    `1001111`   |
|   `0100`  |    4    |    `1100110`   |
|   `0101`  |    5    |    `1101101`   |
|   `0110`  |    6    |    `1111101`   |
|   `0111`  |    7    |    `0000111`   |
|   `1000`  |    8    |    `1111111`   |
|   `1001`  |    9    |    `1101111`   |

For invalid BCD inputs from `1010` to `1111`, the design uses:

```text
seg = 7'b0000000
```

which turns the segments OFF.

---

## 💻 Verilog RTL Implementation

```verilog
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.09.2026 23:01:35
// Design Name: 
// Module Name: sevensegmentdisplaycc
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module sevensegmentdisplaycc(seg,bcd );
input [3:0] bcd;
output reg [6:0] seg;
always@(*) begin
case(bcd)
4'b0000:seg=7'b0111111;
4'b0001:seg=7'b0000110;
4'b0010:seg=7'b1011011;
4'b0011:seg=7'b1001111;
4'b0100:seg=7'b1100110;
4'b0101:seg=7'b1101101;
4'b0110:seg=7'b1111101;
4'b0111:seg=7'b0000111;
4'b1000:seg=7'b1111111;
4'b1001:seg=7'b1101111;
default:seg=7'b0000000;
endcase
end
endmodule
```

---

## 🧪 Verilog Testbench

The Verilog testbench is used to verify the BCD-to-7-segment decoder by applying BCD input combinations and observing the corresponding segment outputs.

```verilog
[Add your actual Verilog testbench code here]
```

The testbench verifies the expected segment patterns for the valid BCD inputs representing decimal digits **0–9**.

---

## 📊 Simulation Results

The simulation verifies the relationship between the **4-bit BCD input** and the corresponding **7-bit 7-segment output**.

For valid BCD inputs from `0000` to `1001`, the decoder generates the corresponding segment patterns for decimal digits **0–9**.

For invalid BCD inputs from `1010` to `1111`, the `default` case produces:

```text
seg = 7'b0000000
```

### Simulation Waveform

[Add simulation waveform screenshot here]

---

## 🛠️ Tools & Hardware

### Hardware

* **FPGA Board:** PYNQ-Z2
* **Device:** Zynq-7000 SoC
* **Display:** Common-Cathode 7-Segment Display

### Software

* **HDL:** Verilog
* **FPGA Design Tool:** AMD Vivado 2026.1
* **Simulation:** Vivado Behavioral Simulation
* **Verification:** Verilog Testbench
* **Implementation:** Vivado Synthesis & Implementation

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
        │ 7-Segment Display    │
        └────────┬────────┘
                 ↓
        ┌─────────────────┐
        │  Hardware Verify     │
        └─────────────────┘
```

---

## 📌 Pin Constraints

### BCD Inputs

|  Signal  | FPGA Pin | I/O Standard |
| :------: | :------: | :----------: |
| `bcd[0]` |    Y18   |   LVCMOS33   |
| `bcd[1]` |    Y19   |   LVCMOS33   |
| `bcd[2]` |    U18   |   LVCMOS33   |
| `bcd[3]` |    U19   |   LVCMOS33   |

### 7-Segment Outputs

|  Signal  | FPGA Pin | I/O Standard |
| :------: | :------: | :----------: |
| `seg[0]` |    W14   |   LVCMOS33   |
| `seg[1]` |    Y14   |   LVCMOS33   |
| `seg[2]` |    T11   |   LVCMOS33   |
| `seg[3]` |    T10   |   LVCMOS33   |
| `seg[4]` |    V16   |   LVCMOS33   |
| `seg[5]` |    W16   |   LVCMOS33   |
| `seg[6]` |    V12   |   LVCMOS33   |

### XDC Constraint File

```tcl
set_property -dict {PACKAGE_PIN Y18 IOSTANDARD LVCMOS33} [get_ports {bcd[0]}];
set_property -dict {PACKAGE_PIN Y19 IOSTANDARD LVCMOS33} [get_ports {bcd[1]}];
set_property -dict {PACKAGE_PIN U18 IOSTANDARD LVCMOS33} [get_ports {bcd[2]}];
set_property -dict {PACKAGE_PIN U19 IOSTANDARD LVCMOS33} [get_ports {bcd[3]}];
set_property -dict {PACKAGE_PIN W14 IOSTANDARD LVCMOS33} [get_ports {seg[0]}];
set_property -dict {PACKAGE_PIN Y14 IOSTANDARD LVCMOS33} [get_ports {seg[1]}];
set_property -dict {PACKAGE_PIN T11 IOSTANDARD LVCMOS33} [get_ports {seg[2]}];
set_property -dict {PACKAGE_PIN T10 IOSTANDARD LVCMOS33} [get_ports {seg[3]}];
set_property -dict {PACKAGE_PIN V16 IOSTANDARD LVCMOS33} [get_ports {seg[4]}];
set_property -dict {PACKAGE_PIN W16 IOSTANDARD LVCMOS33} [get_ports {seg[5]}];
set_property -dict {PACKAGE_PIN V12 IOSTANDARD LVCMOS33} [get_ports {seg[6]}];
```

---

## 🔬 Hardware Verification

The design was implemented on the **PYNQ-Z2 FPGA board** and connected to a **common-cathode 7-segment display**.

The 4-bit BCD input is provided through the assigned FPGA input pins, while the seven segment outputs are connected through the assigned FPGA output pins.

By changing the BCD input, the corresponding decimal digit can be displayed on the 7-segment display.

### Hardware Result

[Add hardware testing photo/result here]

---

## 📈 Results

* Successfully implemented a **BCD-to-7-segment decoder** using Verilog HDL.
* Generated 7-segment output patterns for decimal digits **0–9**.
* Implemented a default condition for invalid BCD inputs.
* Applied the required FPGA pin constraints for the BCD inputs and segment outputs.
* Tested the design using a **common-cathode 7-segment display** on the PYNQ-Z2.

### Implementation Result

[Add synthesis/implementation result screenshot here]

---

## 🧠 What I Learned

* Understanding the internal structure of a **7-segment display**.
* Understanding how a **common-cathode display** is controlled.
* Converting BCD values into 7-segment output patterns.
* Using the Verilog `case` statement for combinational decoding.
* Using `always @(*)` for combinational logic.
* Applying FPGA pin constraints using an XDC file.
* Interfacing Verilog logic with a physical 7-segment display.

---

## 🚀 Conclusion

Day 7 focused on implementing a **BCD-to-7-segment decoder for a common-cathode 7-segment display** using Verilog HDL.

The project strengthened my understanding of **combinational logic, BCD decoding, Verilog case statements, FPGA pin constraints, and hardware interfacing** using the PYNQ-Z2 FPGA board.

**Day 7 complete! 🚀**

```
```
