# Day 26 – Edge Detectors

## Overview

Today I learned about **Edge Detectors**, digital circuits used to detect transitions in a signal. They generate a pulse whenever a signal changes state, making them useful in event detection and control logic.

---

## What is an Edge Detector?

An edge detector identifies transitions in a digital signal:

- **Rising Edge:** 0 → 1 transition
- **Falling Edge:** 1 → 0 transition
- **Dual Edge:** Detects both rising and falling transitions

---

## Types of Edge Detectors

### Rising Edge Detector
Detects a transition from LOW to HIGH.

```text
0 → 1
```

Verilog Logic:

```verilog
edge_detected <= ~signal_prev & signal_in;
```

---

### Falling Edge Detector
Detects a transition from HIGH to LOW.

```text
1 → 0
```

Verilog Logic:

```verilog
edge_detected <= signal_prev & ~signal_in;
```

---

### Dual Edge Detector
Detects both rising and falling edges.

```verilog
edge_detected <= signal_prev ^ signal_in;
```

---

## Working Principle

1. Store the previous value of the signal.
2. Compare the current value with the previous value.
3. Generate a pulse when a transition is detected.

---

## Applications

- Clock Gating
- Pulse Generation
- Event Detection
- Interrupt Detection
- Digital Communication Systems

---

## Key Takeaways

- Edge detectors identify signal transitions.
- Rising edge detects **0 → 1** changes.
- Falling edge detects **1 → 0** changes.
- Dual-edge detectors detect both transitions.
- Implemented by comparing current and previous signal values.

---

## Concepts Covered

`Edge Detection` • `Rising Edge` • `Falling Edge` • `Dual Edge Detection` • `Pulse Generation` • `Sequential Logic` • `Verilog Implementation`