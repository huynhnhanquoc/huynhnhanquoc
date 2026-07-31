# Brute Force

> **A first-principles, deep engineering guide to understanding Brute Force in computer science and software runtimes.**

## What is it?

An exhaustive search approach that evaluates every possible candidate solution to a problem systematically.

### Mental Architecture

```text
[Target Lock: 12] ──► [Try 1] ──► [Try 2] ──► [Try 3] ... ──► [Try 12 (Found!)]
```

## Why does it matter?

It is simple to implement and guarantees finding a solution if it exists, serving as a baseline algorithm.

## Core Mechanics & Details

- Has high time complexity, making it slow for large scale calculations.
- Used in password cracking (evaluating combinations) and simple string searches.

## Code Implementation Reference

Here is a simplified code example illustrating the logic of **Brute Force**:

```javascript
// Brute force substring search (O(n * m))
function bruteForceSearch(text, pattern) {
  const n = text.length;
  const m = pattern.length;
  for (let i = 0; i <= n - m; i++) {
    let j;
    for (j = 0; j < m; j++) {
      if (text[i + j] !== pattern[j]) break;
    }
    if (j === m) return i; // Found substring index
  }
  return -1;
}
```

## Key Tradeoffs & Failure Modes

1. **Abstraction Overhead:** Introducing layers of translation or encapsulation for brute force logic can add execution latency and memory overhead.
2. **Resource Exhaustion:** Unbounded inputs or unconstrained operations inside brute force variables can trigger memory exhaustion under heavy load.

## Related Concepts

- [security](../../security/security/README.md)

---

*Part of the open-source inpublic knowledge network. Managed by [inpublic.vn](https://inpublic.vn).*
