# Day 18 – Case Statement Design Guidelines and FSM Implementation

## Overview

On Day 18, I explored the **Case Statement** in Verilog in greater depth and learned how it is widely used in **Finite State Machines (FSMs)**, multiplexers, and control logic. I also understood important synthesis guidelines that help avoid unintended hardware such as latches.

---

# My Key Learning

> "A case statement provides an efficient way to implement multi-way decision logic where each condition is treated with equal priority."

Unlike an if-else chain, a case statement allows the synthesis tool to infer optimized multiplexing hardware.

---

# Understanding the Case Statement

A case statement evaluates an expression and executes the matching branch.

```verilog
case(expression)
    value1 : statement1;
    value2 : statement2;
    ...
    default : default_statement;
endcase
```

### Why Use Case Statements?

- Improves readability for multiple conditions.
- Synthesizes efficiently into multiplexers.
- Commonly used in FSM design.
- Easier to maintain than long if-else chains.

---

# FSM Example Using Case Statement

One of the major applications discussed was **Finite State Machine (FSM) implementation**.

### State Encoding

```verilog
localparam IDLE = 2'b00;
localparam RUN  = 2'b01;
localparam WAIT = 2'b10;
localparam DONE = 2'b11;
```

### State Transition Logic

```verilog
case(state)
    IDLE : next_state <= RUN;
    RUN  : next_state <= WAIT;
    WAIT : next_state <= DONE;
    DONE : next_state <= IDLE;
    default : next_state <= IDLE;
endcase
```

This structure clearly defines transitions between states and improves RTL readability.

---

# Important Design Guidelines

### 1. Case Items Must Be Mutually Exclusive

Only one case item should match at a time.

```text
Good Design:
00 → State A
01 → State B
10 → State C
11 → State D
```

This avoids ambiguity during synthesis.

---

### 2. Use a Default Condition

Always include:

```verilog
default : output = 0;
```

Benefits:

- Handles unexpected inputs.
- Prevents latch inference.
- Improves design reliability.

---

### 3. Create a Full Case

A full case covers every possible value of the expression.

```text
2-bit Signal

00 ✓
01 ✓
10 ✓
11 ✓
```

If any value is missing, synthesis tools may infer unwanted storage elements.

---

### 4. Match Widths Properly

Case item width should match the width of the expression.

```verilog
case(sel)      // sel is 2-bit
    2'b00 :
    2'b01 :
    2'b10 :
    2'b11 :
endcase
```

Mismatched widths can lead to simulation and synthesis mismatches.

---

### 5. Be Careful with Wildcard Cases

Wildcard statements (`casex`, `casez`) can simplify logic but may introduce overlapping conditions if not used carefully.

```text
Use only when necessary.
Verify that conditions do not overlap.
```

---

# Case vs If-Else

| Feature | Case | If-Else |
|----------|------|---------|
| Priority Logic | No | Yes |
| Readability | High | Medium |
| FSM Design | Excellent | Less Preferred |
| MUX Implementation | Efficient | Less Optimized |
| Scalability | Better | Becomes Complex |

---

# Tools & Concepts Covered

## Tools

- Vivado

## Concepts

- Case Statements
- Full Case Design
- Default Conditions
- FSM State Encoding
- State Transition Logic
- Multiplexer Inference
- RTL Design Practices
- Latch Prevention

---

# Design Insights

### Hardware View

A case statement is generally synthesized as:

```text
Input Select
      ↓
   Decoder
      ↓
 Multiplexer
      ↓
   Output
```

All options are considered equal priority, allowing synthesis tools to generate efficient hardware.

---

# Key Takeaways

- Case statements are ideal for FSMs and multiplexers.
- Every possible condition should be handled.
- Always include a default branch.
- Case items should be mutually exclusive.
- Full case coverage prevents unintended latch generation.
- Proper state encoding improves FSM readability and maintainability.

---

# Conclusion

Day 18 focused on mastering **Case Statement design practices** and understanding its role in **FSM implementation**. The biggest takeaway was learning how proper case statement coding leads to cleaner RTL, optimized hardware synthesis, and safer digital designs.

> A well-written case statement not only improves code readability but also helps synthesis tools generate efficient and predictable hardware.