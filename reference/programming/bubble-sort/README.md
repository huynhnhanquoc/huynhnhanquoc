# Bubble Sort

> **A first-principles, deep engineering guide to understanding Bubble Sort in computer science and software runtimes.**

## What is it?

A simple sorting algorithm that repeatedly steps through a list, compares adjacent elements, and swaps them if they are out of order.

### Mental Architecture

```text
[ 5 | 1 | 4 | 2 ] ──► Compare 5 & 1 ──► Swap ──► [ 1 | 5 | 4 | 2 ]
[ 1 | 5 | 4 | 2 ] ──► Compare 5 & 4 ──► Swap ──► [ 1 | 4 | 5 | 2 ]
```

## Why does it matter?

It serves as an educational introduction to sorting principles, though it is inefficient for production arrays.

## Core Mechanics & Details

- Has average and worst-case time complexity of quadratic O(n^2).
- Sorts in-place with O(1) auxiliary space complexity.

## Code Implementation Reference

Here is a simplified code example illustrating the logic of **Bubble Sort**:

```javascript
// Bubble Sort implementation
function bubbleSort(arr) {
  const n = arr.length;
  for (let i = 0; i < n; i++) {
    for (let j = 0; j < n - i - 1; j++) {
      if (arr[j] > arr[j + 1]) {
        // Swap values
        const temp = arr[j];
        arr[j] = arr[j + 1];
        arr[j + 1] = temp;
      }
    }
  }
  return arr;
}
```

## Key Tradeoffs & Failure Modes

1. **Abstraction Overhead:** Introducing layers of translation or encapsulation for bubble sort logic can add execution latency and memory overhead.
2. **Resource Exhaustion:** Unbounded inputs or unconstrained operations inside bubble sort variables can trigger memory exhaustion under heavy load.

---

*Part of the open-source inpublic knowledge network. Managed by [inpublic.vn](https://inpublic.vn).*
