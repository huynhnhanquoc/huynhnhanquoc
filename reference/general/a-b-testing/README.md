# A/B Testing

> **A first-principles, deep engineering guide to understanding A/B Testing in computer science and software runtimes.**

## What is it?

A statistical experiment comparing two variations (A and B) of a user experience or logic flow to verify which performs better against a control metrics baseline.

### Mental Architecture

```text
                  ┌──► [Cohort A (Control)] ──► [Conversion: 10%]
[Traffic Splitter] ──┤
                  └──► [Cohort B (Variant)] ──► [Conversion: 14% (Winner)]
```

## Why does it matter?

It replaces product design intuition with hard user performance data and statistical confirmation.

## Core Mechanics & Details

- Applies hashing or randomized splitting to ensure independent cohorts.
- Calculates p-value statistics to verify that result differences are not due to random chance.

## Code Implementation Reference

Here is a simplified code example illustrating the logic of **A/B Testing**:

```javascript
// Simple AB Testing traffic router
function getABBucket(userId, experimentSalt) {
  // Simple hash implementation for uniform distribution
  let hash = 0;
  const combined = userId + experimentSalt;
  for (let i = 0; i < combined.length; i++) {
    hash = (hash << 5) - hash + combined.charCodeAt(i);
    hash |= 0; // Convert to 32bit integer
  }
  return (Math.abs(hash) % 100 < 50) ? "control_a" : "variant_b";
}
```

## Key Tradeoffs & Failure Modes

1. **Abstraction Overhead:** Introducing layers of translation or encapsulation for a/b testing logic can add execution latency and memory overhead.
2. **Resource Exhaustion:** Unbounded inputs or unconstrained operations inside a/b testing variables can trigger memory exhaustion under heavy load.

## Related Concepts

- [analytics](../analytics/README.md)

---

*Part of the open-source inpublic knowledge network. Managed by [inpublic.vn](https://inpublic.vn).*
