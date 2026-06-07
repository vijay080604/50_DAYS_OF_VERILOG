# Day 16 – Understanding Non-Blocking Procedural Assignments

## Overview

On Day 16, I learned about **Non-Blocking Procedural Assignments** in Verilog.

Non-blocking assignments use the `<=` operator and are primarily used to model **sequential logic** such as flip-flops, registers, counters, and pipelines. Unlike blocking assignments, all non-blocking assignments are scheduled first and updated simultaneously at the end of the current simulation time step.

---

# My Key Learning

> "Non-blocking assignments model real hardware behavior by updating all registers simultaneously on a clock edge."

This makes them the preferred choice for clocked sequential circuits.

---

# What I Learned

### Non-Blocking Assignment Operator

Non-blocking assignments use:

```verilog
<=
```

Example:

```verilog
always @(posedge clk)
begin
    a <= b;
    b <= c;
    c <= a;
end
```

Here, all right-hand-side values are evaluated first, and updates occur simultaneously after the clock edge.

---

# Characteristics of Non-Blocking Assignments

- Uses `<=` operator
- Commonly used in sequential logic
- Updates occur simultaneously
- Does not block execution of following statements
- Models flip-flop behavior accurately
- Triggered typically on clock edges

---

# Understanding the Difference

### Blocking Assignment (`=`)

```verilog
a = b;
b = c;
```

Updates happen immediately and sequentially.

### Non-Blocking Assignment (`<=`)

```verilog
a <= b;
b <= c;
```

Updates are scheduled and applied together after the current time step.

---

# Simulation Observation

Consider:

```verilog
a <= b;
b <= c;
c <= a;
```

Initial values:

```text
a = 0001
b = 0010
c = 0100
```

After the clock edge:

```text
a = 0010
b = 0100
c = 0001
```

Each variable receives the **old value** of the source signal, demonstrating simultaneous updates.

---

# Non-Blocking Assignments in Sequential Logic

I observed that non-blocking assignments correctly represent hardware registers.

Example:

```verilog
always @(posedge clk or posedge reset)
begin
    if(reset)
    begin
        out_a <= 0;
        out_b <= 0;
        out_c <= 0;
    end
    else
    begin
        out_a <= in_data;
        out_b <= out_a;
        out_c <= out_b;
    end
end
```

### Behavior

```text
Clock Edge 1:
out_a ← in_data

Clock Edge 2:
out_b ← previous out_a

Clock Edge 3:
out_c ← previous out_b
```

This creates a register pipeline where data moves one stage per clock cycle.

---

# Blocking vs Non-Blocking Assignment

| Feature | Blocking (`=`) | Non-Blocking (`<=`) |
|----------|---------------|--------------------|
| Execution | Sequential | Simultaneous |
| Update Timing | Immediate | End of time step |
| Typical Usage | Combinational Logic | Sequential Logic |
| Hardware Modeling | Less accurate for registers | Accurate for flip-flops |
| Statement Order Impact | Yes | No |

---

# Design Guidelines

### Use Blocking Assignments (`=`)

For:

- Combinational circuits
- MUXes
- Decoders
- Encoders
- Combinational arithmetic logic

### Use Non-Blocking Assignments (`<=`)

For:

- Flip-flops
- Registers
- Counters
- FSM state registers
- Pipeline stages
- Clocked sequential logic

---

# Tools & Concepts Discussed

## Tools

- Vivado

## Concepts

- Non-Blocking Assignment (`<=`)
- Sequential Logic
- Flip-Flops
- Registers
- Clocked Circuits
- Pipeline Registers
- Simulation Behavior
- RTL Design Best Practices

---

# My Notes

### Non-Blocking Execution Flow

```text
Clock Edge
     ↓
Evaluate RHS Values
     ↓
Schedule Updates
     ↓
Apply All Updates Together
```

### Important Rule

```text
Blocking (=)      → Combinational Logic
Non-Blocking (<=) → Sequential Logic
```

---

# Conclusion

Day 16 focused on understanding **Non-Blocking Procedural Assignments** and their role in modeling sequential hardware accurately.

The biggest takeaway from this session was:

> Non-blocking assignments ensure that all register updates occur simultaneously on a clock edge, making them essential for writing correct sequential RTL designs.