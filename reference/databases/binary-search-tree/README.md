# Binary Search Tree

> **A first-principles, deep engineering guide to understanding Binary Search Tree in computer science and software runtimes.**

## What is it?

A binary tree node structure where left child values are less than the parent, and right child values are greater.

### Mental Architecture

```text
         (10)
        /    \
      (5)    (15)  [5 < 10 < 15]
```

## Why does it matter?

It maintains dynamic datasets in sorted order, allowing fast inserts, searches, and deletes.

## Core Mechanics & Details

- Enables in-order traversal to print keys in sorted order.
- Can degrade into an O(n) linked list if nodes are not balanced dynamically.

## Code Implementation Reference

Here is a simplified code example illustrating the logic of **Binary Search Tree**:

```javascript
class BSTNode {
  constructor(key) {
    this.key = key;
    this.left = null;
    this.right = null;
  }
  
  insert(node, key) {
    if (!node) return new BSTNode(key);
    if (key < node.key) node.left = this.insert(node.left, key);
    else node.right = this.insert(node.right, key);
    return node;
  }
}
```

## Key Tradeoffs & Failure Modes

1. **Abstraction Overhead:** Introducing layers of translation or encapsulation for binary search tree logic can add execution latency and memory overhead.
2. **Resource Exhaustion:** Unbounded inputs or unconstrained operations inside binary search tree variables can trigger memory exhaustion under heavy load.

---

*Part of the open-source inpublic knowledge network. Managed by [inpublic.vn](https://inpublic.vn).*
