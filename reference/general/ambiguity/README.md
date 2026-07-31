# Ambiguity

> **A first-principles, deep engineering guide to understanding Ambiguity in computer science and software runtimes.**

## What is it?

The state where a sentence, instruction, or grammar can be interpreted in multiple ways by a parser or model.

### Mental Architecture

```text
[Ambiguous Grammar (e.g. 1 + 2 * 3)] ──► [Parse Tree 1: (1+2)*3]
                                         ──► [Parse Tree 2: 1+(2*3) (Correct via precedence)]
```

## Why does it matter?

It causes compiler parsing errors or unpredictable model responses, requiring clear instructions.

## Core Mechanics & Details

- In compilers, mitigated by defining operator precedence and associativity rules.
- In AI, resolved by prompt instructions, few-shot examples, and strict formatting templates.

## Code Implementation Reference

Here is a simplified code example illustrating the logic of **Ambiguity**:

```javascript
// Resolving precedence ambiguity in expression parsing
class ExpressionParser {
  // Multiply has higher precedence than add
  getPrecedence(operator) {
    if (operator === "*" || operator === "/") return 2;
    if (operator === "+" || operator === "-") return 1;
    return 0;
  }
}
```

## Key Tradeoffs & Failure Modes

1. **Abstraction Overhead:** Introducing layers of translation or encapsulation for ambiguity logic can add execution latency and memory overhead.
2. **Resource Exhaustion:** Unbounded inputs or unconstrained operations inside ambiguity variables can trigger memory exhaustion under heavy load.

---

*Part of the open-source inpublic knowledge network. Managed by [inpublic.vn](https://inpublic.vn).*
