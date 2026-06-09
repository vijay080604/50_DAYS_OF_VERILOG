# Day 20 – Reset Strategies and Timing Considerations

## Overview

On Day 20, I explored different reset strategies used in RTL design and studied how reset signals interact with clocked circuits. I compared synchronous and asynchronous resets, observed their behavior during simulation, and learned about reset timing requirements such as setup time, hold time, and reset latency.

---

## Problem Statement

Understand the behavior of:

* Synchronous Reset
* Asynchronous Reset
* Reset Setup/Hold Requirements
* Clock-to-Reset Latency

and observe how each reset strategy affects circuit initialization and state transitions.

---

## RTL Design

Implemented and analyzed:

* Flip-Flop with Synchronous Reset
* Flip-Flop with Asynchronous Reset

Observed the difference in how each reset type responds when the reset signal is asserted.

---

## Testbench

Created simulation scenarios to:

* Assert reset before a clock edge
* Assert reset between clock edges
* Deassert reset under different timing conditions
* Observe output behavior for both reset styles

---

## Simulation Result

### Synchronous Reset

* Reset affected the design only on the next active clock edge.
* State remained unchanged until a clock edge arrived.
* Observed a delay between reset assertion and actual reset action.

### Asynchronous Reset

* Reset took effect immediately after assertion.
* Output changed without waiting for a clock edge.
* Circuit returned to a known state instantly.

---

## Common Mistakes

* Assuming synchronous reset acts immediately.
* Forgetting that synchronous reset depends on clock availability.
* Ignoring reset release timing.
* Not considering setup and hold requirements of reset signals.

---

## Key Observation

While comparing both reset styles, I observed that asynchronous reset provides immediate initialization, whereas synchronous reset waits for the next clock edge.

I also noticed that reset timing is important because improper assertion or deassertion can lead to unpredictable behavior and metastability issues.

---

## What I Learned

* Difference between synchronous and asynchronous reset implementation.
* Why reset timing requirements matter in digital designs.
* Concept of clock-to-reset latency.
* Importance of bringing a design into a known state during startup.
* Practical considerations when choosing a reset strategy for FPGA and ASIC designs.
