# Quantization

> **A first-principles, deep engineering guide to understanding Quantization in AI and software runtimes.**

## What is it?

The process of converting a model's weight matrices from high-precision formats (like FP32) to lower-precision formats (like INT8 or FP4).

### Mental Architecture

```text
[Weight Tensor (FP32: 2.1485)] ──► [Calculate Scale/ZeroPoint] ──► [Quantized Tensor (INT8: 54)]
                                                                                      │
[De-quantized Output (FP32: 2.1450)] ◄── [Execute Low-Precision Math (INT8)] ◄────────┘
```

## Why does it matter?

It dramatically reduces model memory size, permitting large models to fit inside standard GPU or consumer device RAM.

## Core Mechanics & Details

- Reduces memory bandwidth bottlenecks, accelerating inference execution speed.
- Post-Training Quantization (PTQ) matches floats to integers using scale parameters.

## Code Implementation Reference

Here is a simplified code example illustrating the logic of **Quantization**:

```javascript
import numpy as np

def symmetric_quantize_weights(weights, bits=8):
    # Map range to -127 to 127
    max_val = np.max(np.abs(weights))
    scale = (2 ** (bits - 1) - 1) / max_val
    quantized = np.round(weights * scale).astype(np.int8)
    return quantized, scale

def dequantize_weights(quantized_weights, scale):
    return (quantized_weights / scale).astype(np.float32)
```

## Key Tradeoffs & Failure Modes

1. **Tradeoff between speed and accuracy:** Probabilistic calculations inside quantization flows may increase latency if execution loops are not rate-limited.
2. **Context Leakage:** Unbounded inputs can exceed limits or trigger memory exhaustion in high-throughput applications.

## Related Concepts

- [inference](../../runtime/inference/README.md)

---

*Part of the open-source inpublic knowledge network. Managed by [inpublic.vn](https://inpublic.vn).*
