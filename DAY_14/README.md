# Day 14 – Understanding Continuous and Procedural Assignments

## Overview

On Day 14, I learned the difference between **Continuous Assignments** and **Procedural Assignments** in Verilog.

This session helped me understand how combinational and sequential logic are described using different assignment styles and when each method should be used in RTL design.

---

# My Key Learning

> "Continuous assignments are used for combinational logic, while procedural assignments are used inside procedural blocks such as always blocks."

Understanding this distinction is important because choosing the wrong assignment style can lead to simulation or synthesis issues.

---

# Continuous Assignment

A continuous assignment uses the `assign` keyword to drive a net (wire).

### Characteristics

- Evaluated automatically whenever an input changes
- Used with `wire` data types
- Commonly used for combinational logic
- Does not require an `always` block

Example concept:

```verilog
assign c = a & b;
```

In this case, whenever `a` or `b` changes, `c` is updated automatically.

---

# What I Observed

While studying continuous assignments, I noticed:

- The output updates immediately when inputs change.
- No clock or memory element is involved.
- The behavior matches combinational circuits.

This makes continuous assignments suitable for:

- Logic gates
- Multiplexers
- Encoders
- Decoders
- Comparators

---

# Procedural Assignment

Procedural assignments are written inside:

- always blocks
- always_comb blocks
- always_ff blocks

These assignments execute only when the triggering event occurs.

Examples:

```verilog
always @(*) begin
    out = a & b;
end
```

```verilog
always @(posedge clk) begin
    q <= d;
end
```

---

# Continuous vs Procedural Assignment

| Feature | Continuous Assignment | Procedural Assignment |
|----------|----------------------|----------------------|
| Keyword | assign | always |
| Data Type | wire | reg / logic |
| Usage | Combinational Logic | Combinational & Sequential Logic |
| Execution | Automatic | Event Driven |
| Memory Support | No | Yes (Sequential Designs) |

---

# Key Observation

I observed that:

### Continuous Assignment

- Best suited for simple combinational logic.
- Updates happen automatically.
- Cannot assign values directly to reg variables.

### Procedural Assignment

- Provides more control over execution.
- Required for sequential logic.
- Can describe complex hardware behavior.

---

# Tools & Concepts Discussed

## Tools

- Vivado

## Concepts

- Continuous Assignment
- Procedural Assignment
- assign Statement
- always Block
- Combinational Logic
- Sequential Logic
- wire Data Type
- reg / logic Data Types

---

# My Notes

### Continuous Assignment

```text
Input Change
      ↓
Expression Evaluated
      ↓
Output Updated
```

### Procedural Assignment

```text
Trigger Event
      ↓
always Block Executes
      ↓
Output Updated
```

### Important Understanding

- Continuous assignments describe hardware connections.
- Procedural assignments describe hardware behavior.

---

# Conclusion

Day 14 helped me understand the practical difference between continuous and procedural assignments in Verilog.

The biggest takeaway from this session was:

> Continuous assignments are ideal for combinational logic, while procedural assignments provide the flexibility needed for both combinational and sequential designs.

This understanding is fundamental for writing clean RTL code and selecting the correct modeling style for different digital circuits.