# Day 17 – If-Else and Case Statements in Verilog

## Overview

On Day 17, I learned about two important decision-making constructs in Verilog:

- **If-Else Statements**
- **Case Statements**

Both are used to implement conditional logic, but they differ in how conditions are evaluated and how hardware is synthesized.

---

# My Key Learning

> "If-Else prioritizes conditions sequentially, while Case selects one option from multiple choices efficiently."

Understanding when to use each construct helps in writing cleaner and more optimized RTL code.

---

# If-Else Statement

The **if-else** construct evaluates conditions one after another.

```verilog
if (condition1)
    statement1;
else if (condition2)
    statement2;
else
    statement3;
```

### Characteristics

- Conditions are checked sequentially.
- The first true condition is executed.
- Remaining conditions are skipped.
- Suitable for priority-based decisions.
- Always include a final `else` condition to avoid unintended latch inference.

---

# Hardware Interpretation

An if-else chain is synthesized as a series of cascaded multiplexers.

```text
Condition 1
     ↓
Condition 2
     ↓
Condition 3
     ↓
Default Output
```

The order of conditions determines the priority.

---

# Case Statement

The **case** statement selects one output from multiple possible choices based on a single expression.

```verilog
case(sel)
    2'b00 : out = in0;
    2'b01 : out = in1;
    2'b10 : out = in2;
    2'b11 : out = in3;
    default : out = 0;
endcase
```

### Characteristics

- Evaluates a single expression.
- Matches one case item.
- Easier to read for multiple selections.
- Commonly used for multiplexers, FSMs, and decoders.
- Include a `default` case for safe design practices.

---

# Hardware Interpretation

A case statement is commonly synthesized as a multiplexer.

```text
Select Signal
      ↓
     MUX
      ↓
   Output
```

For example, a 4:1 MUX can be efficiently described using a case statement.

---

# If-Else vs Case

| Feature | If-Else | Case |
|----------|----------|---------|
| Evaluation | Sequential | Parallel Selection |
| Priority | Yes | No Priority by Default |
| Best For | Priority Logic | Multi-Way Selection |
| Readability | Less for many conditions | More readable |
| Hardware | Cascaded MUXes | Efficient MUX Structure |

---

# Design Guidelines

### Use If-Else When

- Priority matters
- Comparators are involved
- Conditional control logic is required
- Implementing enable/reset logic

### Use Case When

- Selecting between multiple inputs
- Designing multiplexers
- Building state machines (FSMs)
- Implementing decoders and control units

---

# Tools & Concepts Discussed

## Tools

- Vivado

## Concepts

- If-Else Statements
- Case Statements
- Conditional Logic
- Priority Logic
- Multiplexer Implementation
- RTL Design
- Combinational Logic
- Synthesizable Verilog

---

# My Notes

### If-Else Flow

```text
Check Condition 1
        ↓
     True?
      ↓
 Execute
      ↓
 Skip Remaining
```

### Case Flow

```text
Evaluate Expression
        ↓
Match Case Item
        ↓
Generate Output
```

### Important Rule

```text
If-Else → Priority Logic

Case → Selection Logic
```

---

# Conclusion

Day 17 focused on understanding **If-Else** and **Case** statements in Verilog.

The biggest takeaway from this session was:

> If-Else statements are useful when condition priority matters, while Case statements provide a cleaner and more efficient way to implement multi-way selection logic such as multiplexers and FSMs.