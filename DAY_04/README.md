# Day 04 – Understanding Wire and Continuous Assignment

## Overview

On Day 04, I explored one of the fundamental concepts in Verilog: signal connectivity using the `wire` data type and continuous assignments.

Through a simple input-to-output connection example, I observed how input changes propagate directly to the output without requiring any procedural blocks or storage elements.

This session helped me understand the practical role of wires in combinational logic and how signals move through a design during simulation.

---

# My Key Learning

> "A wire carries a signal from one point to another, but it does not store data."

By implementing a simple input-to-output connection, I observed that the output continuously followed the input value whenever the input changed.

This helped me understand the difference between:

* Signal propagation
* Signal storage
* Continuous assignments
* Procedural assignments

---

# What I Implemented

A simple Verilog module that directly connects an input signal to an output signal using a continuous assignment.

### RTL Concept

```verilog
assign b_out = a_in;
```

The output continuously reflects the value present at the input.

---

# Simulation Observation

Using Vivado Simulator, I applied different input values through the testbench and observed the output behavior.

Applied sequence:

```text
0 → 1 → 0 → 1
```

Observed behavior:

```text
a_in = 0 → b_out = 0
a_in = 1 → b_out = 1
a_in = 0 → b_out = 0
a_in = 1 → b_out = 1
```

The output changed immediately whenever the input changed.

---

# Concepts Explored

## Wire

Used for signal connections between different parts of a design.

### Observation

* Does not store values
* Reflects the value driven onto it
* Commonly used in combinational logic

---

## Continuous Assignment

Implemented using the `assign` statement.

Example:

```verilog
assign b_out = a_in;
```

### Observation

* Evaluated continuously
* Output updates automatically when the input changes
* No clock required
* No procedural block required

---

# Key Observation

While simulating the design, I observed that the output responded immediately to every input transition. Since no storage element was involved, the output simply mirrored the input through the wire connection.

This helped me understand how combinational signal paths behave in RTL designs.

---

# What I Learned

* How to declare and use the `wire` data type
* How continuous assignments work in Verilog
* Difference between signal propagation and signal storage
* Basic module instantiation in a testbench
* How input stimulus affects output behavior during simulation
* Verification of simple combinational logic using Vivado Simulator

---

# Tools Used

* Verilog
* Vivado Simulator

---

# My Notes

### Important Understanding

```text
Input Change
      ↓
Continuous Assignment
      ↓
Output Change
```

### Key Difference

```text
wire  → Carries a signal

reg   → Can store a value
```

---

# Conclusion

Day 04 helped me understand how signals are connected inside a Verilog design using wires and continuous assignments.

By implementing and simulating a simple input-to-output connection in Vivado, I observed how signals propagate through combinational logic without requiring storage elements.

The biggest takeaway from this session was:

> A wire propagates a signal, but it does not store a value.

This learning forms the foundation for understanding combinational logic and signal connectivity in larger RTL designs.
