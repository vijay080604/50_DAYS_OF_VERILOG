# Day 26 – Edge Detectors

## Overview

Today I learned about **Edge Detectors**, sequential circuits used to identify transitions in digital signals. They are widely used in RTL design whenever an action must be triggered by a signal change rather than by the signal level itself.

---

## Why Edge Detection?

Many digital systems need to react only when a signal changes state.

Examples:

- Push button press detection
- Interrupt generation
- FSM state triggering
- Pulse generation
- Clock gating circuits

Instead of continuously monitoring a HIGH or LOW level, edge detectors generate a single-cycle pulse when a transition occurs.

---

## Types of Edge Detectors

### Rising Edge Detector

Detects a transition from:

```text
0 → 1
```

RTL Logic:

```verilog
edge_detected <= ~signal_prev & signal_in;
```

Condition:

```text
Previous = 0
Current  = 1
```

---

### Falling Edge Detector

Detects a transition from:

```text
1 → 0
```

RTL Logic:

```verilog
edge_detected <= signal_prev & ~signal_in;
```

Condition:

```text
Previous = 1
Current  = 0
```

---

### Dual Edge Detector

Detects both rising and falling transitions.

RTL Logic:

```verilog
edge_detected <= signal_prev ^ signal_in;
```

Condition:

```text
Previous ≠ Current
```

---

## Hardware Implementation

An edge detector typically stores the previous value of the signal using a flip-flop.

```text
Current Signal ──► Compare ──► Edge Pulse
        │
        ▼
 Previous Signal (D Flip-Flop)
```

At every clock cycle:

1. Current signal is sampled.
2. Previous signal is stored.
3. Current and previous values are compared.
4. A pulse is generated when a transition is detected.

---

## Verilog Example (Rising Edge)

```verilog
reg signal_prev;

always @(posedge clk) begin
    edge_detected <= ~signal_prev & signal_in;
    signal_prev <= signal_in;
end
```

The signal is delayed by one clock cycle and compared with its current value.

---

## Applications

### Interrupt Detection
Generate an interrupt when an external event occurs.

### Pulse Generation
Convert a level signal into a single clock-cycle pulse.

### FSM Triggering
Start a state transition only when an input changes.

### Clock Gating
Enable logic only on specific transitions.

### CDC Synchronizers
Detect events crossing clock domains.

---

## Key Takeaways

- Edge detectors identify signal transitions.
- Rising edge detects **0 → 1** changes.
- Falling edge detects **1 → 0** changes.
- Dual edge detectors detect both transitions.
- Implemented using a delayed signal and comparison logic.
- Widely used in FSMs, interrupts, pulse generation, and CDC circuits.

---

## Concepts Covered

- Edge Detection
- Rising Edge Detection
- Falling Edge Detection
- Dual Edge Detection
- D Flip-Flops
- Pulse Generation
- Sequential Logic
- RTL Design