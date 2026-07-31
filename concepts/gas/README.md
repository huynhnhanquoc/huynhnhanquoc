# gas

A beginner-friendly guide to gas in runtimes: a way to limit how much work code
is allowed to perform.

Gas answers a runtime question:

```text
allowed to run, but for how long?
```

## Table of Contents

- [The Simple Idea](#the-simple-idea)
- [Why Gas Exists](#why-gas-exists)
- [Allowed Does Not Mean Unlimited](#allowed-does-not-mean-unlimited)
- [What Gas Can Count](#what-gas-can-count)
- [Gas And Sandboxes](#gas-and-sandboxes)
- [Gas And Capsules](#gas-and-capsules)
- [Trade-Offs](#trade-offs)
- [My Learning Notes](#my-learning-notes)
- [Common Misunderstandings](#common-misunderstandings)
- [Related Concepts](#related-concepts)

## The Simple Idea

Gas is a budget for execution.

Each operation spends some budget.

When the budget runs out, execution stops.

```text
start with gas
run instructions
spend gas
stop when empty
```

The goal is to prevent code from running forever or consuming too much work.

## Why Gas Exists

Runtimes may run code they do not fully trust.

Even allowed code can be too expensive.

Problems gas can help prevent:

- infinite loops,
- runaway recursion,
- huge scans,
- denial of service,
- accidental expensive queries,
- long-running user logic.

Gas makes work finite.

## Allowed Does Not Mean Unlimited

Permission and cost are different.

A user may be allowed to read posts.

That does not mean they should read every post forever.

```text
capability says what code may do
gas says how much work it may spend
```

Both matter.

## What Gas Can Count

Gas can count different things:

- VM instructions,
- expression evaluation steps,
- function calls,
- database operations,
- loop iterations,
- nested capsule calls,
- memory allocation,
- elapsed time.

The exact model depends on the runtime.

The important part is that execution has a budget.

## Gas And Sandboxes

A sandbox limits available powers.

Gas limits work.

Example:

```text
sandbox: code may only read from db.table("posts")
gas: code may only spend 10,000 steps
```

Together they make runtime execution more predictable.

## Gas And Capsules

Capsules need gas because they may come from the client or another untrusted
boundary.

Before execution, the runtime can ask:

```text
what capabilities does this capsule need?
how much work may it spend?
```

Gas does not make capsules safe by itself.

But without gas, "allowed" logic may still become dangerous.

## Trade-Offs

Gas design is hard.

If the budget is too low, valid work fails.

If the budget is too high, expensive work slips through.

If the accounting is unclear, developers cannot predict behavior.

Good gas should be:

- simple,
- visible,
- deterministic,
- conservative,
- tested against abuse cases.

## My Learning Notes

Gas became interesting to me while thinking about Kitwork capsules and expression
evaluation.

If a runtime can accept small logic, it also needs a way to limit that logic.

The lesson:

```text
runtime authority is not only about permission
runtime authority is also about budget
```

## Common Misunderstandings

**"Gas is only for blockchains."**

No. Blockchains use gas, but the idea applies to any runtime that budgets work.

**"Gas replaces sandboxing."**

No. Gas limits work. Sandboxing limits power.

**"Gas makes all execution safe."**

No. It is one layer. You still need capabilities, isolation, validation, and
sandboxing.

## Related Concepts

Previous: [prewarm](https://github.com/huynhnhanquoc/prewarm)

Next: [grant](https://github.com/huynhnhanquoc/grant)

Related: [capsule](https://github.com/huynhnhanquoc/capsule), [sandbox](https://github.com/huynhnhanquoc/sandbox), [capability](https://github.com/huynhnhanquoc/capability)

