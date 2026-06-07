# Day 15 – Understanding Blocking Procedural Assignments

## Overview

On Day 15, I learned about **Blocking Procedural Assignments** in Verilog.

Blocking assignments use the `=` operator and execute statements sequentially inside a procedural block. Each statement must complete before the next statement begins execution.

This concept helped me understand how execution order affects simulation behavior and why blocking assignments are commonly used in combinational logic.

---

# My Key Learning

> "Blocking assignments execute one statement at a time in the order they are written."

Unlike continuous assignments, procedural assignments execute only when the associated block is triggered.

---

# What I Learned

### Blocking Assignment Operator

Blocking assignments use:

```verilog
=
```

Example:

```verilog
always @(*) begin
    a = b;
    c = a;
end
```

Execution occurs sequentially:

```text
Step 1 → a gets b
Step 2 → c gets updated using new value of a
```

Each statement blocks the execution of the next statement until it finishes.

---

# Characteristics of Blocking Assignments

- Uses `=` operator
- Executes sequentially
- Statements are evaluated in order
- Commonly used in combinational logic
- Found inside procedural blocks

---

# Where It Is Commonly Used

### Combinational Logic

Blocking assignments are typically preferred for:

- Multiplexers
- Encoders
- Decoders
- Arithmetic Logic
- Combinational RTL

Example:

```verilog
always @(*) begin
    out = a & b;
end
```

This allows outputs to update immediately based on current inputs.

---

# What I Observed

While studying blocking assignments, I observed:

- Execution follows top-to-bottom order.
- Later statements can use values assigned earlier in the same block.
- The behavior feels similar to software execution flow.
- The order of statements directly impacts simulation results.

---

# Blocking vs Continuous Assignment

| Feature | Continuous Assignment | Blocking Assignment |
|----------|----------------------|---------------------|
| Keyword | assign | always |
| Operator | = | = |
| Data Type | wire | reg / logic |
| Execution | Automatic | Sequential |
| Usage | Combinational Logic | Combinational Logic |

---

# Key Observation

Consider:

```verilog
always @(*) begin
    a = b;
    c = a;
end
```

I observed that:

- `a` updates first.
- `c` receives the updated value of `a`.
- Execution occurs line by line.

This demonstrates why statement order is important when using blocking assignments.

---

# Tools & Concepts Discussed

## Tools

- Vivado

## Concepts

- Blocking Assignment
- Procedural Assignment
- always Block
- Combinational Logic
- Sequential Execution
- RTL Coding

---

# My Notes

### Blocking Assignment Flow

```text
Block Triggered
        ↓
Statement 1 Executes
        ↓
Statement 2 Executes
        ↓
Statement 3 Executes
```

### Important Understanding

- Blocking assignments execute immediately.
- Statement order matters.
- Best suited for combinational logic descriptions.

---

# Conclusion

Day 15 helped me understand how blocking procedural assignments work and why they are widely used for combinational logic design.

The biggest takeaway from this session was:

> Blocking assignments execute sequentially, making the order of statements important when describing hardware behavior.

This understanding is essential before moving on to non-blocking assignments and writing correct sequential RTL designs.