# jit

A beginner-friendly guide to JIT: doing work just in time, when the system knows
what is actually needed.

JIT usually means "just in time."

The broad idea:

```text
generate late
generate specifically
generate from real usage
```

## Table of Contents

- [The Simple Idea](#the-simple-idea)
- [Why JIT Exists](#why-jit-exists)
- [JIT Does Not Mean Only One Thing](#jit-does-not-mean-only-one-thing)
- [Classic JIT Compilation](#classic-jit-compilation)
- [JIT In Web Development](#jit-in-web-development)
- [Render-Time JIT](#render-time-jit)
- [Behavior JIT](#behavior-jit)
- [The Trade-Off](#the-trade-off)
- [My Learning Notes](#my-learning-notes)
- [Common Misunderstandings](#common-misunderstandings)
- [Related Concepts](#related-concepts)

## The Simple Idea

JIT means delaying work until the system has enough information to do only what
is needed.

Without JIT:

```text
prepare everything first
ship everything
hope the user needs it
```

With JIT:

```text
look at what is actually used
prepare only that
ship only that
```

The goal is usually to reduce waste.

## Why JIT Exists

Many systems have the same problem:

```text
the possible world is large
the actual page/request/program uses only a small part
```

JIT helps when preparing everything would be too heavy.

Examples:

- a language runtime compiles hot code paths after observing them,
- a CSS engine generates only the classes used by a page,
- an icon system ships only the icons used in HTML,
- a behavior system loads only the verbs present on the page,
- a render engine injects only the assets a response needs.

## JIT Does Not Mean Only One Thing

People often hear JIT and think only about CPU optimization.

That is one kind.

But the broader pattern is:

```text
do the work when the system has real usage information
```

This is why JIT appears in language runtimes, CSS engines, icon systems, and UI
behavior systems.

## Classic JIT Compilation

In programming language runtimes, JIT often means compiling code while the program
is running.

A runtime may:

```text
interpret first
observe hot paths
compile hot paths
run them faster
```

This is common in high-performance language runtimes.

But it is not the only meaning of JIT.

## JIT In Web Development

In web development, JIT often means generating assets from actual usage.

Example:

```html
<button class="px-4 py-2 text-sm">Save</button>
```

Instead of shipping every possible utility class, a CSS engine can generate the
classes it sees.

The page gets what it uses.

Not the whole universe.

## Render-Time JIT

Render-time JIT happens while a page is being rendered.

The engine looks at HTML and asks:

- which CSS classes are used?
- which icons appear?
- which client actions appear?
- does this page need hydration?
- which runtime pieces should be injected?

The mental model:

```text
render HTML
scan what the page uses
generate matching assets
return final response
```

## Behavior JIT

Behavior JIT means shipping only the client behaviors a page declares.

Example:

```html
<button data-action="copy">Copy</button>
<a data-action="more">More</a>
```

The runtime can include `copy` and `more`.

It does not need to ship every possible behavior.

This keeps the page small while still giving authors a declarative surface.

## The Trade-Off

JIT is powerful, but not free.

It needs:

- reliable scanning,
- deterministic output,
- caching,
- clear naming,
- good debugging,
- stable fallbacks,
- predictable invalidation.

If the system cannot explain why something was generated, JIT becomes confusing.

Good JIT should feel simple to use and inspectable when needed.

## My Learning Notes

I used to think JIT mostly meant runtime compilation.

While building Kitwork, I started seeing another kind:

```text
render-time generation
```

A page can use classes, icons, logos, actions, hydrate attributes, and small
client behaviors.

The engine can look at the rendered page and generate only what that page needs.

The lesson:

```text
JIT is not only about speed
JIT is also about specificity
```

## Common Misunderstandings

**"JIT always means machine-code compilation."**

No. That is one meaning. JIT can also mean generating assets or behavior only
when needed.

**"JIT is always faster."**

Not automatically. JIT can reduce payload or improve hot paths, but generation
and caching still matter.

**"JIT is magic."**

It should not be magic. It should be a clear pipeline:

```text
input -> scan -> generate -> cache -> deliver
```

## Related Concepts

Previous: [hydrate](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/hydrate)

Next: [blueprint](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/blueprint)

Related: [behavior](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/behavior), [render](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/render), [prewarm](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/prewarm)
