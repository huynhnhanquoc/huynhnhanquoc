# Binary

> **A first-principles, deep engineering guide to understanding Binary in computer science and software runtimes.**

## What is it?

A base-2 numerical system using only two states (0 and 1) to represent data and CPU instructions.

### Mental Architecture

```text
[Transistor OFF: 0] <===> [Transistor ON: 1]
Binary: 1010  ===> Decimal: 10
```

## Why does it matter?

It matches the physical transistor switches in computer processors, acting as the foundation of all software execution.

## Core Mechanics & Details

- Combines bits into bytes (8 bits) to serialize characters and values.
- All high-level programming instructions are compiled into binary machine code.

## Code Implementation Reference

Here is a simplified code example illustrating the logic of **Binary**:

```javascript
// Converting numbers to binary strings
function toBinaryString(number) {
  return (number >>> 0).toString(2);
}

function parseBinaryString(binaryStr) {
  return parseInt(binaryStr, 2);
}
```

## Key Tradeoffs & Failure Modes

1. **Abstraction Overhead:** Introducing layers of translation or encapsulation for binary logic can add execution latency and memory overhead.
2. **Resource Exhaustion:** Unbounded inputs or unconstrained operations inside binary variables can trigger memory exhaustion under heavy load.

---

*Part of the open-source inpublic knowledge network. Managed by [inpublic.vn](https://inpublic.vn).*
