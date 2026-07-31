# prewarm

A beginner-friendly guide to prewarming: preparing runtime work before the first
real request needs it.

Prewarm is about avoiding the cold start.

```text
prepare early -> serve faster later
```

## Table of Contents

- [The Simple Idea](#the-simple-idea)
- [Why Prewarm Exists](#why-prewarm-exists)
- [Cold Path vs Warm Path](#cold-path-vs-warm-path)
- [What Can Be Prewarmed](#what-can-be-prewarmed)
- [Prewarm vs Cache](#prewarm-vs-cache)
- [Prewarm In Multi-Tenant Systems](#prewarm-in-multi-tenant-systems)
- [Trade-Offs](#trade-offs)
- [My Learning Notes](#my-learning-notes)
- [Common Misunderstandings](#common-misunderstandings)
- [Related Concepts](#related-concepts)

## The Simple Idea

Prewarm means doing setup work before it is urgently needed.

Example:

```text
server starts
compile tenant code
prepare caches
first request arrives
runtime is already warm
```

The goal is to reduce first-request cost.

## Why Prewarm Exists

The first request often pays for setup:

- loading files,
- parsing config,
- compiling code,
- preparing templates,
- opening connections,
- building caches,
- discovering tenants.

If that work happens during the first user request, the user waits.

Prewarm moves some of that work earlier.

## Cold Path vs Warm Path

Cold path:

```text
request arrives -> load -> parse -> compile -> run -> respond
```

Warm path:

```text
request arrives -> reuse prepared work -> respond
```

The warm path is usually simpler and faster.

## What Can Be Prewarmed

Systems may prewarm:

- compiled bytecode,
- templates,
- route tables,
- tenant metadata,
- static caches,
- database pools,
- generated assets,
- JIT outputs.

Not everything should be prewarmed.

Prewarm what is likely to be needed and expensive enough to matter.

## Prewarm vs Cache

Cache stores reusable work.

Prewarm fills or prepares that work early.

```text
cache: where prepared work lives
prewarm: when prepared work is created
```

They often work together.

## Prewarm In Multi-Tenant Systems

Prewarm becomes interesting when many tenants exist.

The host may need to decide:

- which tenants to warm,
- how much memory to spend,
- when to evict,
- how to handle hot reload,
- whether to warm all tenants or only active ones.

Prewarm is not just performance.

It is resource planning.

## Trade-Offs

Prewarm can improve latency.

But it can also cost:

- startup time,
- memory,
- CPU,
- stale caches,
- more complex invalidation.

Good prewarm design asks:

```text
what should be ready before traffic arrives?
```

## My Learning Notes

Kitwork made prewarm concrete through tenant bytecode.

If tenant code can be compiled before the first request, the runtime can avoid
doing that work at the worst moment.

The lesson:

```text
prewarm is not just speed
prewarm is choosing when the runtime pays its cost
```

## Common Misunderstandings

**"Prewarm means cache everything."**

No. Prewarm should be selective.

**"Prewarm is always worth it."**

No. It trades startup and memory for request latency.

**"Prewarm replaces caching."**

No. Prewarm often fills caches. It does not replace them.

## Related Concepts

Previous: [template](https://github.com/huynhnhanquoc/template)

Next: [gas](https://github.com/huynhnhanquoc/gas)

Related: [runtime](https://github.com/huynhnhanquoc/runtime), [bytecode](https://github.com/huynhnhanquoc/bytecode), [jit](https://github.com/huynhnhanquoc/jit)

