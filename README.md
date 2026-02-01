# Carry Look-Ahead Adder (CLA)

## Overview
This project implements a **Carry Look-Ahead Adder (CLA)** using **Verilog HDL**.  
CLA is a fast binary adder that significantly reduces carry propagation delay by
computing carry signals in advance using **generate** and **propagate** logic.

---

## Motivation
In a Ripple Carry Adder (RCA), each carry must wait for the previous stage,
which increases delay as bit-width grows.  
The **Carry Look-Ahead Adder** overcomes this limitation by calculating carries
in parallel, making it much faster.

---

## Architecture
For each bit:
- **Generate (G)** = A · B  
- **Propagate (P)** = A ⊕ B  

Carry equations:
- C₁ = G₀ + P₀·C₀  
- C₂ = G₁ + P₁·C₁  
- C₃ = G₂ + P₂·C₂  
- …

This allows parallel carry computation instead of sequential propagation.

---

## Features
- High-speed addition compared to Ripple Carry Adder
- Reduced propagation delay
- Modular and scalable design
- Parameterizable bit-width (if implemented)
- Suitable for high-performance arithmetic units

---

## Files Included
- `cla.v` / `carry_look_ahead_adder.v` – CLA Verilog module  
- `tb_cla.v` – Testbench for verification  
- Waveform screenshots (if included)  
- Vivado project files (`.xpr`, `.srcs`) – optional  

---

## Tools Used
- Verilog HDL  
- Xilinx Vivado  
- Git & GitHub  

---

## Simulation & Verification
- Testbench applies multiple input combinations
- Correct **sum** and **carry-out** verified
- Waveforms analyzed using Vivado simulator

---

## Performance Comparison
| Adder Type | Speed | Complexity |
|-----------|-------|------------|
| Ripple Carry Adder | Slow | Low |
| Carry Look-Ahead Adder | Fast | Moderate |

---

## Applications
- Arithmetic Logic Units (ALU)
- High-speed processors
- Digital signal processing
- VLSI system design

---

## Author
**Aashi Awasthi**  

