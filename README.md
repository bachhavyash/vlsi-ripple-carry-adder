# 4-bit Ripple Carry Adder (RCA) — Verilog HDL

## Overview
A structural Verilog implementation of a 4-bit Ripple Carry Adder built using four interconnected **Full Adder** modules. The carry propagates ("ripples") from the LSB to the MSB — hence the name.

## Design Hierarchy
```
ripple_carry_adder_4bit
    ├── full_adder FA0  (bit 0)
    ├── full_adder FA1  (bit 1)
    ├── full_adder FA2  (bit 2)
    └── full_adder FA3  (bit 3)
```

## Truth Table — Full Adder
| A | B | Cin | Sum | Cout |
|---|---|-----|-----|------|
| 0 | 0 |  0  |  0  |  0   |
| 0 | 1 |  0  |  1  |  0   |
| 1 | 1 |  0  |  0  |  1   |
| 1 | 1 |  1  |  1  |  1   |

## Files
| File | Description |
|------|-------------|
| `rca_4bit.v` | Full Adder + 4-bit RCA design |
| `rca_4bit_tb.v` | Testbench with 6 test cases |

## Simulation Output (Expected)
```
================================================
 4-bit Ripple Carry Adder — Yashganesh Bachhav
================================================
  A    |  B   | Cin | Sum  | Cout | Decimal
-------|------|-----|------|------|--------
  0000 | 0000 |  0  | 0000 |  0   | 0 + 0 = 0
  0101 | 0011 |  0  | 1000 |  0   | 5 + 3 = 8
  1001 | 0110 |  0  | 1111 |  0   | 9 + 6 = 15
  1111 | 0001 |  0  | 0000 |  1   | 15 + 1 = 16 (Overflow!)
  0111 | 1000 |  1  | 0000 |  1   | 7 + 8 + 1 = 16
  1111 | 1111 |  1  | 1111 |  1   | 15 + 15 + 1 = 31 (Max)
================================================
 Simulation Complete!
================================================
```

## How to Run

### EDA Playground
1. Go to [https://www.edaplayground.com](https://www.edaplayground.com)
2. Simulator: **Icarus Verilog 0.9.7**
3. Design tab → paste `rca_4bit.v`
4. Testbench tab → paste `rca_4bit_tb.v`
5. Click **Run**

## Author
**Yashganesh Bachhav** | B.E. EnTC | LGNSCOE Nashik  
VLSI Internship — CODTECH IT Solutions (Jan–Feb 2025)
