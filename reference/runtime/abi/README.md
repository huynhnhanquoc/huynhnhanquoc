# ABI

> **A first-principles, deep engineering guide to understanding ABI in computer science and software runtimes.**

## What is it?

The Application Binary Interface (ABI) defining the low-level machine code interface between compiled programs and libraries or operating system kernels.

### Mental Architecture

```text
[Compiled Binary] ◄──(ABI Interface: calling conventions)──► [OS Kernel / Hardware Registers]
```

## Why does it matter?

It ensures compiled binary compatibility, defining register layouts and function signatures at the machine level.

## Core Mechanics & Details

- Defines specific memory alignments, calling conventions, and structure padding.
- Specifies the format of object files (ELF, PE, Mach-O).

## Code Implementation Reference

Here is a simplified code example illustrating the logic of **ABI**:

```javascript
// C struct layout showing padding and ABI alignment
struct UserProfile {
    char active;    // 1 byte
    // 3 bytes compiler padding inserted here to align age to 4-byte boundaries
    int age;        // 4 bytes
    double rating;  // 8 bytes
};
```

## Key Tradeoffs & Failure Modes

1. **Abstraction Overhead:** Introducing layers of translation or encapsulation for abi logic can add execution latency and memory overhead.
2. **Resource Exhaustion:** Unbounded inputs or unconstrained operations inside abi variables can trigger memory exhaustion under heavy load.

---

*Part of the open-source inpublic knowledge network. Managed by [inpublic.vn](https://inpublic.vn).*
