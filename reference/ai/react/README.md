# ReAct

> **A first-principles, deep engineering guide to understanding ReAct in AI and software runtimes.**

## What is it?

A reasoning framework combining action execution and semantic thoughts in an alternating sequence.

### Mental Architecture

```text
[Query] ──► [Thought] ──► [Action (Tool Call)] ──► [Observation] ──┐
                  ▲                                                 │
                  └────────────────── (Loop/Reflect) ───────────────┘
```

## Why does it matter?

Understanding ReAct enables engineers to build more reliable, performant, and secure AI-driven applications.

## Core Mechanics & Details

- Establishes predictable constraints and metrics around react pathways.
- Optimizes token overhead and execution cost in production systems.

## Code Implementation Reference

Here is a simplified code example illustrating the logic of **ReAct**:

```javascript
// ReAct Loop pseudocode
async function runReAct(query, agent) {
  let steps = [];
  let response = "";
  while (true) {
    const thought = await agent.generateThought(query, steps);
    const action = await agent.selectAction(thought);
    if (action.type === "final_answer") {
      response = action.payload;
      break;
    }
    const observation = await executeTool(action);
    steps.push({ thought, action, observation });
  }
  return response;
}
```

## Key Tradeoffs & Failure Modes

1. **Tradeoff between speed and accuracy:** Probabilistic calculations inside react flows may increase latency if execution loops are not rate-limited.
2. **Context Leakage:** Unbounded inputs can exceed limits or trigger memory exhaustion in high-throughput applications.

---

*Part of the open-source inpublic knowledge network. Managed by [inpublic.vn](https://inpublic.vn).*
