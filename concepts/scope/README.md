# scope

A beginner-friendly guide to understanding scope: where names live, how values
are found, and why boundaries matter in programming and UI runtimes.

Scope answers a simple question:

```text
when code says a name, where does that name come from?
```

## Table of Contents

- [The Simple Idea](#the-simple-idea)
- [Why Scope Exists](#why-scope-exists)
- [Names Need A Place](#names-need-a-place)
- [Local And Outer Scope](#local-and-outer-scope)
- [Scope In Functions](#scope-in-functions)
- [Scope In UI](#scope-in-ui)
- [Scope As A Boundary](#scope-as-a-boundary)
- [My Learning Notes](#my-learning-notes)
- [Common Misunderstandings](#common-misunderstandings)

## The Simple Idea

Scope is the area where a name has meaning.

Example:

```js
const count = 1
```

Inside the right scope, `count` means `1`.

Outside that scope, `count` may mean something else or nothing at all.

The shortest mental model:

```text
scope = where names are resolved
```

## Why Scope Exists

Programs need names.

Names point to values.

Without scope, every name would live in one giant global space.

That would make programs hard to reason about.

Scope lets different parts of a program use names without always colliding.

## Names Need A Place

When code says:

```text
price * quantity
```

The system must find `price`.

It must find `quantity`.

That lookup happens through scope.

So expressions depend on scope:

```text
expression + scope -> value
```

## Local And Outer Scope

A local scope is the nearest place where names live.

An outer scope is a surrounding place.

If a name is not found locally, the system may look outward.

Example:

```text
local scope
  -> parent scope
  -> page scope
  -> global scope
```

Different languages and runtimes define this differently.

But the pattern is common.

## Scope In Functions

Functions often create scope.

Variables inside a function should not accidentally leak everywhere.

Example:

```js
function add(a, b) {
  const total = a + b
  return total
}
```

`a`, `b`, and `total` belong to the function call.

That keeps the program organized.

## Scope In UI

UI runtimes can also use scope.

A component or region may have local state:

```text
counter scope
  count = 0
```

Two counters should not accidentally share the same `count`.

Each region needs its own scope.

This makes repeated UI pieces safer.

## Scope As A Boundary

Scope is not only lookup.

It is also a boundary.

It decides:

- where reads come from,
- where writes go,
- which values are local,
- which values are shared,
- when state should disappear.

In UI systems, this matters because DOM nodes can appear, disappear, and be
replaced.

State should follow the correct boundary.

## My Learning Notes

I used to think scope was mostly a language rule.

Then I started seeing it as a runtime design problem.

In KitJS-style UI, scope decides where expressions read and write state.

If two regions both have `count`, they should not always mean the same `count`.

That changed the idea for me:

```text
scope is how a runtime keeps meaning local
```

The lesson:

```text
scope is not just where variables live
scope is where meaning is allowed to travel
```

## Common Misunderstandings

**"Scope only matters in programming languages."**

No. Scope also matters in templates, UI runtimes, components, validation, and
configuration.

**"Global scope is simpler."**

It is simpler at first, then harder when names collide or state leaks.

**"Local scope means isolated forever."**

Not always. Some systems allow reads from outer scopes or writes to shared page
state. The rules must be clear.

## Related Concepts

Previous: [evaluate](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/evaluate)

Next: [capability](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/capability)

Related: [expression](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/expression), [isolation](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/isolation), [blueprint](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/blueprint)
