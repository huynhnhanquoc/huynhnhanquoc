# Exponential Backoff

> **A first-principles, deep engineering guide to understanding Exponential Backoff in computer science and software runtimes.**

## What is it?

A retry mechanism that increases the delay between consecutive retries exponentially to prevent overloading target servers.

### Mental Architecture

```text
[Fail 1: Wait 1s] ──► [Fail 2: Wait 2s] ──► [Fail 3: Wait 4s] ──► [Fail 4: Wait 8s]
```

## Why does it matter?

It allows networks and APIs to recover from spikes in traffic without crash loops from aggressive clients.

## Core Mechanics & Details

- Uses exponential progression formulas to calculate task delays: delay = base_delay * 2^attempt.
- Applies random noise ('jitter') to prevent multiple client threads from retrying at the exact same millisecond.

## Code Implementation Reference

Here is a simplified code example illustrating the logic of **Exponential Backoff**:

```javascript
async function retryWithBackoff(fn, retries = 3, delay = 1000) {
  for (let i = 0; i < retries; i++) {
    try {
      return await fn();
    } catch (err) {
      if (i === retries - 1) throw err;
      // Exponential wait with random jitter
      const jitter = Math.random() * 200;
      const waitTime = delay * Math.pow(2, i) + jitter;
      await new Promise(r => setTimeout(r, waitTime));
    }
  }
}
```

## Key Tradeoffs & Failure Modes

1. **Abstraction Overhead:** Introducing layers of translation or encapsulation for exponential backoff logic can add execution latency and memory overhead.
2. **Resource Exhaustion:** Unbounded inputs or unconstrained operations inside exponential backoff variables can trigger memory exhaustion under heavy load.

## Related Concepts

- [patterns](../../programming/patterns/README.md)
- [reliability](../../runtime/reliability/README.md)

---

*Part of the open-source inpublic knowledge network. Managed by [inpublic.vn](https://inpublic.vn).*
