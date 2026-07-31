# hydrate

A beginner-friendly guide to hydration: making already-rendered HTML interactive
with a client runtime.

Hydration is about connecting behavior to HTML that already exists.

The server can send meaningful HTML first.

Then the client runtime attaches interaction.

```text
HTML arrives -> runtime boots -> behavior attaches
```

## Table of Contents

- [The Simple Idea](#the-simple-idea)
- [Why Hydration Exists](#why-hydration-exists)
- [Static HTML vs Interactive HTML](#static-html-vs-interactive-html)
- [Classic Hydration](#classic-hydration)
- [The Hydration Cost](#the-hydration-cost)
- [Attribute Hydration](#attribute-hydration)
- [Hydration And Server Truth](#hydration-and-server-truth)
- [Hydration And Runtime](#hydration-and-runtime)
- [My Learning Notes](#my-learning-notes)
- [Common Misunderstandings](#common-misunderstandings)
- [Related Concepts](#related-concepts)

## The Simple Idea

Hydration turns visible HTML into interactive HTML.

The HTML may already be on the screen.

Hydration adds behavior.

```text
server renders HTML
browser displays HTML
client runtime connects behavior
page becomes interactive
```

## Why Hydration Exists

Server-rendered HTML is useful because it can appear quickly and be readable
before JavaScript finishes loading.

But HTML alone is not enough for many interfaces.

Users need:

- buttons,
- forms,
- tabs,
- counters,
- validation,
- live updates,
- navigation,
- small state changes.

Hydration connects the visible page to the client runtime.

## Static HTML vs Interactive HTML

Static HTML can show information.

Interactive HTML can respond.

Example:

```html
<button>Save</button>
```

Static version:

```text
it looks like a button
```

Hydrated version:

```text
it can submit, validate, show state, or trigger behavior
```

Hydration is the bridge.

## Classic Hydration

In many frameworks, hydration means the client downloads JavaScript, reconstructs
or reconnects a component tree, and attaches event handlers to server-rendered
HTML.

The mental model:

```text
server renders HTML
client downloads app
client matches app to HTML
client takes over interactivity
```

This can work very well.

It can also be heavy.

## The Hydration Cost

Hydration can cost:

- JavaScript payload,
- parsing time,
- framework runtime,
- duplicate server/client logic,
- component tree reconstruction,
- event handler setup,
- debugging complexity.

Hydration is not bad.

It is simply not free.

Good architecture asks:

```text
how much hydration does this page actually need?
```

## Attribute Hydration

A smaller model is possible.

Instead of shipping a full client app, HTML can carry small behavior instructions:

```html
<button data-click="count = count + 1">+</button>
<b data-text="count"></b>
```

The runtime reads attributes.

The attributes describe behavior.

The page stays HTML-first.

This is still hydration.

The surface is smaller.

## Hydration And Server Truth

Hydration does not have to move truth to the client.

A page can be:

```text
server-rendered for truth
client-hydrated for interaction
```

The server can own:

- data,
- permissions,
- tenant boundaries,
- SEO-visible content,
- canonical results.

The client runtime can own:

- local interaction,
- form hints,
- toggles,
- small state,
- live updates.

## Hydration And Runtime

Hydration needs a runtime because something must:

- scan the page,
- understand directives,
- evaluate expressions,
- track state,
- attach behavior,
- update the DOM,
- handle navigation or live updates.

The runtime can be large or small.

The design question is:

```text
what is the smallest runtime that can make this HTML interactive?
```

## My Learning Notes

I used to think hydration meant "a framework takes over the page."

Later, while working with KitJS-style runtime, I started seeing hydration more
simply:

```text
HTML already exists
small attributes describe behavior
a tiny runtime connects them
```

That changed the question for me.

Instead of asking:

```text
which client framework should own this page?
```

I started asking:

```text
what behavior does this HTML actually need?
```

The lesson:

```text
hydration does not have to mean a large client app
hydration can mean giving HTML just enough behavior
```

## Common Misunderstandings

**"Hydration means React."**

No. React uses hydration, but hydration is a broader idea.

**"Hydration is always bad."**

No. It solves a real problem. The question is how much hydration a page needs.

**"Server-rendered HTML cannot be interactive."**

It can. It needs a client runtime to attach behavior.

**"Small hydration is not real hydration."**

If HTML becomes interactive after a runtime connects behavior, it is a form of
hydration.

## Related Concepts

Previous: [behavior](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/behavior)

Next: [jit](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/jit)

Related: [directive](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/directive), [servertruth](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/servertruth), [blueprint](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/blueprint)
