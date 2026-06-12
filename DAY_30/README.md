# Day 30 – Recursive Generators (Fibonacci Sequence Generator)

## Overview
On Day 30, I explored **Recursive Generators** in digital design using the **Fibonacci Sequence Generator** as a practical example. The Fibonacci sequence follows a recursive mathematical relationship where each number is generated from the sum of the previous two numbers.

Although recursion is common in software programming, direct recursion is generally not synthesizable in hardware. Therefore, the Fibonacci sequence was implemented using an **iterative register-based architecture**, making it suitable for FPGA and ASIC synthesis.

---

## Learning Objectives

- Understand the concept of recursive sequence generation.
- Learn the Fibonacci recurrence relation.
- Explore how recursive algorithms are translated into synthesizable hardware.
- Design a Fibonacci sequence generator using registers and counters.
- Analyze state updates across clock cycles.
- Understand control signals such as **start**, **reset**, and **done**.

---

## Fibonacci Sequence Fundamentals

The Fibonacci sequence is defined by:

:contentReference[oaicite:0]{index=0}

### Base Conditions

- F(0) = 0
- F(1) = 1

### Example Sequence

| n | Fibonacci Number |
|---|---|
| 0 | 0 |
| 1 | 1 |
| 2 | 1 |
| 3 | 2 |
| 4 | 3 |
| 5 | 5 |
| 6 | 8 |
| 7 | 13 |

Each new term is obtained by adding the previous two terms.

---

## Why Direct Recursion Is Not Preferred in Hardware

In software:

```c
fib(n) = fib(n-1) + fib(n-2)
```

This approach repeatedly calls itself.

In digital hardware:

- Dynamic function calls are not synthesizable.
- Hardware requires fixed resources.
- Recursive function calls create unpredictable hardware structures.
- Synthesis tools cannot efficiently map infinite recursive behavior.

Instead, iterative hardware structures are used.

---

## Hardware-Based Fibonacci Generator

The synthesizable design consists of:

### Registers

| Register | Purpose |
|-----------|----------|
| fib1 | Stores F(n−2) |
| fib2 | Stores F(n−1) |
| fib | Current Fibonacci value |
| count | Tracks iteration count |
| done | Indicates computation completion |

### Inputs

| Signal | Description |
|----------|-------------|
| clk | System clock |
| reset | Initializes the generator |
| start | Starts computation |
| n | Fibonacci index |

### Outputs

| Signal | Description |
|----------|-------------|
| fib | Computed Fibonacci number |
| done | Completion flag |

---

## Working Principle

### Initialization

After reset:

```text
fib1 = 0
fib2 = 1
count = 0
```

---

### Iterative Computation

For every clock cycle:

```text
fib = fib1 + fib2
fib1 = fib2
fib2 = fib
count = count + 1
```

The sequence progresses until the required term is reached.

---

## Example: Computing F(5)

Initial State:

```text
fib1 = 0
fib2 = 1
```

### Cycle 1

```text
fib = 0 + 1 = 1
fib1 = 1
fib2 = 1
```

### Cycle 2

```text
fib = 1 + 1 = 2
fib1 = 1
fib2 = 2
```

### Cycle 3

```text
fib = 1 + 2 = 3
fib1 = 2
fib2 = 3
```

### Cycle 4

```text
fib = 2 + 3 = 5
fib1 = 3
fib2 = 5
```

Result:

```text
F(5) = 5
```

---

## RTL Design Concept

### Datapath Components

- Two Fibonacci registers
- Adder
- Counter
- Control logic
- Output register

### Control Flow

```text
Reset
   ↓
Initialize Registers
   ↓
Start Signal
   ↓
Add Previous Two Terms
   ↓
Update Registers
   ↓
Increment Counter
   ↓
Reached N?
 ├─ No → Continue
 └─ Yes → Assert Done
```

---

## Key Hardware Concepts Learned

### Sequential Logic

The design updates values only on clock edges.

### State Retention

Registers preserve previous Fibonacci values required for future calculations.

### Iterative Computation

Complex recursive behavior is converted into predictable sequential hardware operations.

### Control Signaling

- `start` initiates computation.
- `done` indicates completion.
- `reset` initializes the system.

### Resource Efficiency

Only:

- Two registers
- One adder
- One counter

are required regardless of the value of `n`.

---

## Applications

### Digital Signal Processing (DSP)

Recursive filters and sequence generation.

### Algorithm Acceleration

Hardware implementation of mathematical computations.

### Embedded Systems

Efficient sequence generation with low resource usage.

### Hardware State Machines

Pattern generation and control logic.

### Educational RTL Designs

Excellent example of converting software algorithms into hardware architectures.

---

## Key Takeaways

- Fibonacci sequences follow a recursive mathematical relationship.
- Direct recursion is generally not synthesizable in Verilog RTL.
- Hardware implementations use iterative register-based techniques.
- Registers store previous sequence values.
- Counters track computation progress.
- Control signals manage execution and completion.
- Recursive generators demonstrate how software concepts are transformed into efficient hardware designs.

---

## Day 30 Summary

Today I learned how recursive mathematical sequences can be implemented in synthesizable RTL using iterative hardware structures. By designing a Fibonacci Sequence Generator, I explored register updates, counters, state management, control logic, and the process of translating recursive algorithms into practical digital hardware implementations.