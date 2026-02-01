# Ripple Carry Adder (RCA)

## Overview
This project implements a **Ripple Carry Adder (RCA)** using **Verilog HDL**.  
RCA is a fundamental digital arithmetic circuit used to perform binary addition.  
It works by propagating the carry from the least significant bit (LSB) to the most significant bit (MSB).

---

## Architecture
- Each bit uses a **Full Adder**
- Carry output of one stage is connected to the carry input of the next stage
- Simple design but slower due to carry propagation delay

---

## Features
- Modular Verilog design
- Supports N-bit addition (parameterizable)
- Easy to understand and simulate
- Suitable for beginner-level VLSI projects

---

## Files Included
- `rca.v` / `ripple_carry_adder.v` – RCA Verilog module  
- `tb_rca.v` – Testbench  
- Waveform screenshots (if included)  
- Vivado project files (`.xpr`, `.srcs`) – optional

---

## Tools Used
- Verilog HDL  
- Xilinx Vivado  
- Git & GitHub  

---

## Simulation & Verification
- Testbench verifies correct sum and carry output
- Waveforms are observed using Vivado simulator

---

## Applications
- Arithmetic Logic Units (ALU)
- Digital processors
- Basic VLSI design learning

---

## Author
**Aashi Awasthi**  

