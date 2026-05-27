# Day 02 – Text-Based Design Flow in FPGA/VLSI

## Overview
On Day 02, I learned the actual sequential FPGA/VLSI design flow using text-based design methodologies and scripting approaches.

Earlier, I had used Vivado many times only from the GUI perspective. But during this session, I understood:

- What each stage in the flow actually means
- Why every tool option exists
- How HDL code moves internally through simulation, synthesis, and implementation
- The importance of text-based flows and scripting in real engineering environments

This session completely changed the way I look at Vivado and FPGA tools.

---

# My Key Learning

> “Earlier I was using Vivado like a software tool.  
> Now I started understanding it like an actual hardware design flow.”

I realized that every button and option inside Vivado represents a real backend process happening internally.

This session opened my eyes to:
- Industry-level FPGA workflows
- Text-based design methodology
- Automation using scripts
- Importance of understanding the flow instead of only using GUI tools

---

# Sequential FPGA Design Flow

## 1. Specification Sheet
The design flow starts with the specification sheet.

It contains:
- Customer requirements
- Functional expectations
- Key design goals
- Constraints

This stage defines:
- What the hardware should do
- Performance requirements
- Design methodology selection

---

## 2. Design Entry

Design entry can be done in two ways:

### Text-Based Design
Using HDL languages like:
- Verilog
- SystemVerilog
- VHDL

### Graphics/Schematic-Based Design
Using:
- Block diagrams
- Schematic connections

In this session, focus was mainly on:
# Text-Based Design Flow

---

## 3. Behavioral Simulation / Functional Verification

After writing HDL code, we perform:
- Behavioral simulation
- Functional verification

Purpose:
- Check whether the design behaves correctly
- Verify logic functionality before hardware generation

At this stage:
- No actual hardware resources are mapped
- Only logical behavior is verified

---

## 4. Synthesis

After successful simulation:
- HDL code is converted into hardware primitives

Examples:
- LUTs
- Flip-flops
- Nets
- Cells

Synthesis converts:
- RTL description → Gate-level representation

This helped me understand:
- What synthesis actually means internally
- Why synthesis reports are important

---

## 5. Post-Synthesis Verification

After synthesis:
- The synthesized netlist is verified again

Purpose:
- Ensure synthesized hardware still behaves correctly
- Detect synthesis-related mismatches

This stage is important because:
- Functional behavior can sometimes change after synthesis

---

## 6. Implementation

Implementation includes:
- Placement
- Routing
- I/O Planning
- Constraint application

This is where:
- FPGA resources are physically mapped
- Actual hardware connectivity is created

I finally understood:
- Why timing constraints matter
- What placement and routing actually do
- Why implementation reports are critical

---

## 7. Post-Implementation Functional Verification

Again, simulation/verification is performed after implementation.

Purpose:
- Verify final hardware behavior
- Ensure routing and timing did not introduce issues

---

## 8. Bitstream Generation

If everything works correctly:
- Bitstream file is generated

This file is used to:
- Program the FPGA hardware

---

## 9. Hardware Programming & Debugging

The generated bitstream is loaded onto FPGA hardware.

Then:
- Hardware testing
- Debugging
- Verification of expected outputs

are performed.

Debugging continues until:
- Desired functionality is achieved

---

# Important Understanding from This Session

## GUI vs Actual Flow

Previously:
- I used Vivado mostly through GUI options

Now I understand:
- Every GUI option corresponds to an actual backend process
- FPGA tools are internally running scripts and sequential flows

This session helped me connect:
- HDL coding
- Simulation
- Synthesis
- Implementation
- Hardware execution

as one complete engineering workflow.

---

# Tools & Concepts Discussed

## Tools
- Vivado

## Concepts
- Text-based FPGA design flow
- Behavioral simulation
- Synthesis
- Post-synthesis verification
- Implementation flow
- Bitstream generation
- Hardware debugging
- Constraint handling
- I/O planning

---

# My Notes

## Design Flow Diagram
Specification → Design Entry → Simulation → Synthesis → Implementation → Bitstream → Hardware Debugging

## Design Entry Types
- Text-Based (Verilog/SV/VHDL)
- Graphics/Schematic-Based

## Key Realization
Understanding the actual meaning behind each Vivado stage is far more important than simply clicking buttons in the GUI.

---

# Conclusion

Day 02 helped me understand the complete FPGA design pipeline from HDL coding to hardware implementation.

The biggest takeaway from this session was:

> Understanding the flow behind the tool is more important than only learning the tool interface.

This session gave me a much deeper understanding of:
- Vivado workflow
- FPGA backend processes
- Industry-oriented design methodology
- Text-based engineering approaches
- Hardware implementation flow

The learning today completely changed my perspective on FPGA design tools and workflows.