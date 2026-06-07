# Day 11 – Understanding Structural Modeling

## Overview

On Day 11, I learned about **Structural Modeling** in Verilog and how larger digital systems can be built by connecting smaller reusable modules together.

To understand this concept, I explored the implementation of a **Full Adder using two Half Adders and an OR gate**, which demonstrated how complex designs can be created through module instantiation.

---

# My Key Learning

> "Structural Modeling focuses on connecting existing modules to build a larger system."

Instead of describing logic equations or behavior, the design is created by wiring together smaller building blocks.

---

# What I Explored

### Full Adder using Structural Modeling

The Full Adder was constructed using:

- Two Half Adder modules
- One OR gate
- Internal wire connections

Design hierarchy:

```text
Half Adder
      +
Half Adder
      +
OR Gate
      ↓
Full Adder
```

This helped me understand how module reuse simplifies larger designs.

---

# Why Structural Modeling?

Structural Modeling is useful when:

- Building large digital systems
- Reusing