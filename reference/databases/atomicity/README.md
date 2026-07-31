# Atomicity

> **A first-principles, deep engineering guide to understanding Atomicity in computer science and software runtimes.**

## What is it?

The ACID database property ensuring that a multi-step transaction is treated as a single unit, committing completely or rolling back.

### Mental Architecture

```text
[Transaction Starts] ──► [Write A] ──► [Write B fails] ──► [Rollback both]
```

## Why does it matter?

It guarantees that database changes leave data in a consistent, non-corrupted state.

## Core Mechanics & Details

- Implemented using WAL (Write-Ahead Logging) and database state managers.
- Prevents partial updates if server crashes or connections drop.

## Code Implementation Reference

Here is a simplified code example illustrating the logic of **Atomicity**:

```javascript
// SQL transaction demonstrating database atomicity
// BEGIN TRANSACTION;
// UPDATE account SET balance = balance - 100 WHERE id = 1;
// UPDATE account SET balance = balance + 100 WHERE id = 2;
// -- If database crashes here, modifications are rolled back automatically
// COMMIT;
```

## Key Tradeoffs & Failure Modes

1. **Abstraction Overhead:** Introducing layers of translation or encapsulation for atomicity logic can add execution latency and memory overhead.
2. **Resource Exhaustion:** Unbounded inputs or unconstrained operations inside atomicity variables can trigger memory exhaustion under heavy load.

---

*Part of the open-source inpublic knowledge network. Managed by [inpublic.vn](https://inpublic.vn).*
