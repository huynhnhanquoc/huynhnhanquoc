# capsule

A beginner-friendly guide to understanding logic capsules: small pieces of intent
that can be sent to a runtime, checked, limited, and executed inside a sandbox.

Capsule is not a universal standard term.

Here, it means:

```text
a small unit of logic carried across a boundary
```

## Table of Contents

- [The Simple Idea](#the-simple-idea)
- [Why Capsules Are Interesting](#why-capsules-are-interesting)
- [Request vs Capsule](#request-vs-capsule)
- [Why A Capsule Needs Boundaries](#why-a-capsule-needs-boundaries)
- [What A Runtime Must Check](#what-a-runtime-must-check)
- [Capsule And Capability](#capsule-and-capability)
- [Capsule And Gas](#capsule-and-gas)
- [My Learning Notes](#my-learning-notes)
- [Common Misunderstandings](#common-misunderstandings)

## The Simple Idea

A capsule is a small piece of logic packaged so another runtime can execute it.

Instead of sending only data like:

```text
GET /posts?status=published
```

A capsule-like model sends intent:

```text
read posts where status is published and limit to 20
```

The server receives that intent.

Then it decides whether the logic is allowed to run.

## Why Capsules Are Interesting

Capsules are interesting because they sit between API calls and full remote code
execution.

They can express richer behavior than fixed endpoints.

But they must be more limited than arbitrary code.

The goal is:

```text
let the client express useful logic
without giving it full server power
```

That requires a careful runtime boundary.

## Request vs Capsule

A normal request usually asks for a predefined action:

```text
GET /api/posts
POST /api/posts
```

A capsule carries a small logic shape:

```text
db.table("posts").where(p => p.published).list(20)
```

The server still owns authority.

The capsule does not get to do anything by default.

It must be checked against identity, capability, limits, and sandbox rules.

## Why A Capsule Needs Boundaries

A capsule is dangerous if it is just arbitrary code.

A useful capsule needs limits:

- no full filesystem access,
- no arbitrary network access,
- no tenant secrets,
- no infinite loops,
- no unbounded database scans,
- no hidden privilege escalation.

The capsule should be narrow enough that the server can understand what it needs
before running it.

That is why capsule design belongs with language design.

If the language is too dynamic, analysis becomes hard.

If the language is constrained, the runtime can reason about it.

## What A Runtime Must Check

Before running a capsule, a runtime may need to check:

- who sent it,
- what identity they have,
- what data it wants,
- what operations it needs,
- whether the identity has those capabilities,
- how much work it may perform,
- what APIs are available,
- what result shape is allowed.

The runtime should ask:

```text
what does this capsule need?
is the sender allowed to do that?
can it finish within limits?
```

## Capsule And Capability

Capsules need capabilities.

A capability is a specific power.

Example:

```text
read posts
write comments
delete own draft
```

The capsule may need `posts:read`.

The user's identity may have `posts:read`.

The runtime can allow the capsule only if:

```text
needed capabilities are inside granted capabilities
```

This makes authority explicit.

## Capsule And Gas

Gas is a way to limit work.

Even if a capsule is allowed, it should not run forever.

Gas can limit:

- instruction count,
- database operations,
- nested work,
- expensive scans,
- runtime steps.

The idea:

```text
allowed does not mean unlimited
```

Gas gives the runtime a way to stop runaway logic.

## My Learning Notes

I think of capsules as one of the more interesting future directions around
Kitwork.

Important note: this is an architecture idea, not something I treat as fully
implemented.

The shape is compelling:

- SSR renders indexable first-paint data,
- client hydration handles interaction,
- user-driven live logic can become a small capsule,
- the server checks identity and capability,
- gas limits execution,
- the sandbox exposes only narrow APIs.

The lesson:

```text
a capsule is not "trust the client"
a capsule is "let the client express intent, then let the runtime enforce truth"
```

That difference matters.

## Common Misunderstandings

**"Capsule means arbitrary remote code execution."**

No. A useful capsule must be constrained, checked, and sandboxed.

**"Capsule replaces APIs."**

Not necessarily. Capsules can complement APIs for dynamic user-driven work.

**"If the client sends it, the client is trusted."**

No. Client-sent logic should be treated as untrusted.

**"Gas alone makes capsules safe."**

No. Gas limits work. You still need capability checks, sandboxing, and language
constraints.

## Related Concepts

Previous: [gas](https://github.com/huynhnhanquoc/gas)

Next: [servertruth](https://github.com/huynhnhanquoc/servertruth)

Related: [grant](https://github.com/huynhnhanquoc/grant), [sandbox](https://github.com/huynhnhanquoc/sandbox), [capability](https://github.com/huynhnhanquoc/capability)

