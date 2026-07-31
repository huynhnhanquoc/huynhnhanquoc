# Address Bus

> **A first-principles, deep engineering guide to understanding Address Bus in computer science and software runtimes.**

## What is it?

A physical system bus pathway used to transmit memory address pointers from the CPU to the system RAM controller.

### Mental Architecture

```text
[CPU Core] ──(Memory Address: 0x0A4E)──► [Address Bus] ──► [RAM Address decoder] ──► [Select byte]
```

## Why does it matter?

It determines the maximum physical memory size the CPU can address directly (e.g. 2^32 or 2^64 bytes).

## Core Mechanics & Details

- Busses of 32 lines (32-bit) direct access up to 4GB of RAM.
- Busses of 64 lines (64-bit) direct access up to 16 Exabytes of RAM.

## Code Implementation Reference

Here is a simplified code example illustrating the logic of **Address Bus**:

```javascript
// Simulating address bus line constraints
class AddressBusSimulator {
  constructor(busWidth = 16) {
    this.maxAddress = Math.pow(2, busWidth) - 1; // max memory addressable
  }

  isValidAddress(address) {
    return address >= 0 && address <= this.maxAddress;
  }
}
```

## Key Tradeoffs & Failure Modes

1. **Abstraction Overhead:** Introducing layers of translation or encapsulation for address bus logic can add execution latency and memory overhead.
2. **Resource Exhaustion:** Unbounded inputs or unconstrained operations inside address bus variables can trigger memory exhaustion under heavy load.

---

*Part of the open-source inpublic knowledge network. Managed by [inpublic.vn](https://inpublic.vn).*
