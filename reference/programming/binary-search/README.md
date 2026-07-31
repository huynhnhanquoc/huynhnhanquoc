# Binary Search

> **A first-principles, deep engineering guide to understanding Binary Search in computer science and software runtimes.**

## What is it?

A fast search algorithm searching sorted arrays by splitting intervals in half iteratively.

### Mental Architecture

```text
[ 2 | 4 | 7 | 10 | 14 ]  Target: 14
              ▲ (Mid: 7 < 14 -> search right half)
```

## Why does it matter?

It scales lookups to massive arrays by dropping search times from O(n) to O(log n).

## Core Mechanics & Details

- Requires arrays to be fully sorted before execution.
- Calculates midpoints carefully to avoid integer boundaries overflow.

## Code Implementation Reference

Here is a simplified code example illustrating the logic of **Binary Search**:

```javascript
function binarySearch(arr, target) {
  let low = 0;
  let high = arr.length - 1;
  while (low <= high) {
    const mid = Math.floor(low + (high - low) / 2);
    if (arr[mid] === target) return mid;
    if (arr[mid] < target) low = mid + 1;
    else high = mid - 1;
  }
  return -1;
}
```

## Key Tradeoffs & Failure Modes

1. **Abstraction Overhead:** Introducing layers of translation or encapsulation for binary search logic can add execution latency and memory overhead.
2. **Resource Exhaustion:** Unbounded inputs or unconstrained operations inside binary search variables can trigger memory exhaustion under heavy load.

---

*Part of the open-source inpublic knowledge network. Managed by [inpublic.vn](https://inpublic.vn).*
