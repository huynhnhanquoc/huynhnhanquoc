# Assembly

> **A first-principles, deep engineering guide to understanding Assembly in computer science and software runtimes.**

## What is it?

A low-level programming language representing CPU machine code instructions using human-readable mnemonics.

### Mental Architecture

```text
[High Level Code] ──► [Assembly Code (MOV, ADD)] ──► [Machine Code (001011)]
```

## Why does it matter?

It allows writing software that interacts directly with hardware registers and memory address pins.

## Core Mechanics & Details

- Specific to processor instruction set architectures (x86, ARM, RISC-V).
- Requires manual management of registers, stack frames, and hardware bounds.

## Code Implementation Reference

Here is a simplified code example illustrating the logic of **Assembly**:

```javascript
; Simple assembly function adding two numbers (x86_64 NASM)
global addNumbers
section .text
addNumbers:
    mov rax, rdi    ; Load first argument (rdi) to rax
    add rax, rsi    ; Add second argument (rsi) to rax
    ret             ; Return with output in rax
```

## Key Tradeoffs & Failure Modes

1. **Abstraction Overhead:** Introducing layers of translation or encapsulation for assembly logic can add execution latency and memory overhead.
2. **Resource Exhaustion:** Unbounded inputs or unconstrained operations inside assembly variables can trigger memory exhaustion under heavy load.

---

*Part of the open-source inpublic knowledge network. Managed by [inpublic.vn](https://inpublic.vn).*
