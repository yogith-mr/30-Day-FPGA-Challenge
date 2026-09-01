\# Day 1 — Basic Logic Gates



\## Overview



For Day 1 of my 30-Day FPGA Challenge, I implemented basic combinational logic using Verilog HDL and tested the design on the PYNQ-Z2 FPGA development board.



\## Gates Implemented



\- AND

\- NOT

\- NAND

\- XOR



\## Tools \& Hardware



\- HDL: Verilog

\- FPGA Board: PYNQ-Z2

\- FPGA Tool: AMD Vivado 2026.1

\- Verification: Verilog Testbench

\- Implementation: FPGA synthesis, implementation and bitstream generation



\## Design Flow



Verilog RTL

↓

Testbench

↓

Behavioral Simulation

↓

RTL Analysis

↓

Synthesis

↓

Implementation

↓

Bitstream Generation

↓

PYNQ-Z2 Hardware Testing



\## Verification



The design was verified using a Verilog testbench by applying different combinations of inputs A and B.



The synthesized design was inspected to understand how the logic was mapped to FPGA resources such as LUTs and I/O buffers.



\## Hardware Implementation



The generated bitstream was programmed onto the PYNQ-Z2 and the outputs were verified using inputs and LEDs.



\## Files



\- `rtl/` — Verilog design

\- `testbench/` — Verilog testbench

\- `constraints/` — PYNQ-Z2 XDC constraints

\- `screenshots/` — Simulation, RTL, synthesis and hardware results

