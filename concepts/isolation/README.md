# isolation

A beginner-friendly guide to understanding isolation: the practice of keeping
different pieces of code, data, users, or tenants from interfering with each
other.

Isolation is the quiet foundation of many reliable systems.

It answers:

```text
how do we keep one world from leaking into another?
```

## Table of Contents

- [The Simple Idea](#the-simple-idea)
- [Why Isolation Exists](#why-isolation-exists)
- [Isolation vs Sandbox](#isolation-vs-sandbox)
- [Isolation In Multi-Tenant Systems](#isolation-in-multi-tenant-systems)
- [Isolation In Runtimes](#isolation-in-runtimes)
- [Isolation In Scope](#isolation-in-scope)
- [Things That Can Leak](#things-that-can-leak)
- [My Learning Notes](#my-learning-notes)
- [Common Misunderstandings](#common-misunderstandings)

## The Simple Idea

Isolation means keeping separate things separate.

```text
world A stays in world A
world B stays in world B
```

Those worlds might be:

- users,
- tenants,
- requests,
- modules,
- functions,
- database rows,
- environment variables,
- runtime frames,
- browser tabs,
- plugin instances.

Isolation does not always mean security.

But security often depends on isolation.

## Why Isolation Exists

Without isolation, one piece of code or data can affect another in surprising
ways.

Bad isolation can lead to:

- tenant data leaks,
- shared state bugs,
- cross-request pollution,
- wrong environment variables,
- stale cached data,
- plugin conflicts,
- accidental privilege sharing.

Isolation makes systems easier to reason about.

It lets you say:

```text
this request cannot mutate that request
this tenant cannot read that tenant
this function has its own locals
```

## Isolation vs Sandbox

Isolation separates worlds.

Sandboxing limits power inside a world.

Example:

```text
isolation: each tenant has its own runtime state
sandbox: tenant code cannot call arbitrary host APIs
```

They work well together.

Isolation prevents crossing boundaries.

Sandboxing controls what happens inside a boundary.

## Isolation In Multi-Tenant Systems

Multi-tenant systems need strong isolation.

Many tenants share one platform.

But each tenant expects its own:

- routes,
- data,
- environment,
- assets,
- configuration,
- runtime state,
- permissions.

The hard part is sharing infrastructure without sharing private state.

The system should behave like:

```text
shared host
separate tenant worlds
```

## Isolation In Runtimes

Runtimes isolate in different ways.

They may isolate:

- memory,
- global variables,
- modules,
- call frames,
- request contexts,
- execution permissions,
- compiled bytecode,
- cached data.

Runtime isolation is subtle because code is alive.

It can hold references.

It can capture variables.

It can reuse frames or caches.

The runtime must decide what survives and what stays separate.

## Isolation In Scope

Scope is a small form of isolation.

A function's local variables should not automatically leak into another function.

Example:

```js
const makeCounter = () => {
  let count = 0
  return () => count + 1
}
```

The closure needs access to `count`.

But unrelated functions should not.

That is isolation at the language level.

## Things That Can Leak

Isolation can fail in many ways.

Things that may leak:

- data,
- secrets,
- globals,
- cached objects,
- file paths,
- database handles,
- environment variables,
- closure state,
- request context,
- identity information.

Good isolation design asks:

```text
what could accidentally cross this boundary?
```

## My Learning Notes

I started seeing isolation everywhere while building Kitwork.

Kitwork has tenants.

Each tenant should feel like its own world even though the Go host is shared.

That made isolation concrete:

- tenant env should be path-isolated,
- compiled bytecode can be cached per tenant,
- VM variables and frames must not leak between calls,
- module scope needs to remain separate,
- static assets can bypass VM execution,
- host capabilities should not accidentally cross tenant boundaries.

The lesson:

```text
isolation is not one feature
isolation is a habit across the whole runtime
```

## Common Misunderstandings

**"Isolation only means security."**

Security is one reason. Isolation also improves correctness, debugging, and
predictability.

**"If code is sandboxed, it is isolated."**

Not always. A sandbox can limit power while still sharing state poorly.

**"Isolation means nothing can communicate."**

No. Isolated worlds can communicate through explicit channels.

**"Isolation is only about servers."**

No. Scope, modules, browser tabs, workers, VMs, tenants, and processes all use
forms of isolation.

## Related Concepts

Previous: [sandbox](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/sandbox)

Next: [servertruth](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/servertruth)

Related: [tenant](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/tenant), [scope](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/scope), [zerovm](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/zerovm)
