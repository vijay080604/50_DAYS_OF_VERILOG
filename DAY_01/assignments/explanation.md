# Day 01 Assignment - Half Adder Design Using Verilog HDL

## Assignment Objective

Design a Verilog module for a Half Adder by following proper RTL naming conventions and industry-recommended coding practices.

The design should:
- follow clean RTL coding style
- use meaningful signal names
- maintain readability
- follow proper module structure
- improve maintainability and debugging

---

# What is a Half Adder?

A Half Adder is a basic combinational circuit used to add two single-bit binary inputs.

It produces:
- Sum output
- Carry output

---

# Truth Table

| Input A | Input B | Sum | Carry |
|---|---|---|---|
| 0 | 0 | 0 | 0 |
| 0 | 1 | 1 | 0 |
| 1 | 0 | 1 | 0 |
| 1 | 1 | 0 | 1 |

---

# Logic Equations

## Sum
```text
SUM = A XOR B
```

## Carry
```text
CARRY = A AND B
```

---

# Verilog RTL Implementation

```verilog
/*
--------------------------------------------------
Module Name : half_adder
Description : Half Adder implementation using
              Verilog HDL
Author      : Vijay_kumar
Date        : 26-05-2026
--------------------------------------------------
*/

module half_adder (

    input  wire bit_a_in,
    input  wire bit_b_in,

    output wire sum_out,
    output wire carry_out
);

    // Sum generation using XOR operation
    assign sum_out   = bit_a_in ^ bit_b_in;

    // Carry generation using AND operation
    assign carry_out = bit_a_in & bit_b_in;

endmodule
```

---

# Naming Convention Practices Followed

| Feature | Convention Used |
|---|---|
| Module Name | `snake_case` naming |
| Input Signals | `_in` suffix |
| Output Signals | `_out` suffix |
| Readable Naming | Meaningful signal names |
| Header Block | Included module information |
| Comments | Used for logic explanation |

---

# Why These Naming Conventions Matter

Using proper naming conventions:
- improves readability
- simplifies waveform debugging
- helps verification engineers
- reduces confusion in large projects
- improves maintainability

Professional RTL code should clearly describe:
- functionality
- signal direction
- signal purpose

---

# Simulation Objective

The design should be verified by applying all possible input combinations and observing:
- correct SUM output
- correct CARRY output

---

# Expected Output Behavior

| bit_a_in | bit_b_in | sum_out | carry_out |
|---|---|---|---|
| 0 | 0 | 0 | 0 |
| 0 | 1 | 1 | 0 |
| 1 | 0 | 1 | 0 |
| 1 | 1 | 0 | 1 |

---

# Key Learnings

- Learned the structure of a combinational RTL module
- Understood Half Adder functionality
- Practiced RTL naming conventions
- Improved RTL readability practices
- Learned how clean coding improves maintainability

---

# Conclusion

This assignment helped in understanding how to write clean and professional RTL code for basic digital circuits using Verilog HDL while following industry-standard naming conventions and coding practices.