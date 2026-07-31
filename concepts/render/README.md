# render

A beginner-friendly guide to rendering: turning data, templates, or components
into output the user can see.

On the web, rendering often means:

```text
data + template -> HTML
```

## Table of Contents

- [The Simple Idea](#the-simple-idea)
- [Why Rendering Exists](#why-rendering-exists)
- [Server Rendering](#server-rendering)
- [Client Rendering](#client-rendering)
- [Rendering vs Hydration](#rendering-vs-hydration)
- [Rendering And Templates](#rendering-and-templates)
- [Render-Time JIT](#render-time-jit)
- [My Learning Notes](#my-learning-notes)
- [Common Misunderstandings](#common-misunderstandings)
- [Related Concepts](#related-concepts)

## The Simple Idea

Rendering creates visible output.

For web apps, that output is often HTML.

```text
data -> render -> HTML
```

Rendering answers:

```text
what should the user receive?
```

## Why Rendering Exists

Applications have data.

Users need a readable view of that data.

Rendering bridges that gap.

It can produce:

- HTML pages,
- fragments,
- emails,
- documents,
- components,
- static snapshots.

Rendering is where information becomes presentation.

## Server Rendering

Server rendering means the server creates HTML before sending it to the browser.

Benefits:

- meaningful first response,
- better SEO surface,
- simpler sharing,
- less client JavaScript required,
- server-owned data and permissions.

The server can send real content first.

The client can add behavior later.

## Client Rendering

Client rendering means the browser builds the UI after JavaScript loads.

This can work well for apps with rich interaction.

But it can also move too much truth to the client.

The question is:

```text
which part should be rendered by the server,
and which part should be interactive on the client?
```

## Rendering vs Hydration

Rendering creates output.

Hydration attaches behavior.

```text
render: data -> HTML
hydrate: HTML -> interactive HTML
```

They work well together.

The server renders meaningful HTML.

The client hydrates the parts that need interaction.

## Rendering And Templates

Templates describe shape.

Rendering binds data to that shape.

Example:

```text
template: Hello, {{ name }}
data: name = "Lan"
output: Hello, Lan
```

Template rendering keeps HTML readable while still allowing dynamic content.

## Render-Time JIT

Rendering can also be when a runtime discovers what a page uses.

During render, an engine may see:

- CSS classes,
- icons,
- hydrate attributes,
- client behaviors,
- template slots,
- page-specific assets.

Then it can generate only what the page needs.

That is render-time JIT.

## My Learning Notes

Kitwork made rendering feel like a central runtime step.

The server can render HTML from templates.

Then the engine can scan the result for JIT CSS, icons, hydration, and behavior.

That connects several ideas:

```text
server truth -> render -> HTML -> JIT assets -> hydrate behavior
```

The lesson:

```text
rendering is not only output
rendering is where the runtime learns what the page needs
```

## Common Misunderstandings

**"Render means client-side render."**

No. Rendering can happen on the server, client, build step, or runtime.

**"Server rendering means no interactivity."**

No. Server-rendered HTML can be hydrated.

**"Rendering and hydration are the same."**

No. Rendering creates HTML. Hydration attaches behavior.

## Related Concepts

Previous: [router](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/router)

Next: [template](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/template)

Related: [servertruth](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/servertruth), [hydrate](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/hydrate), [jit](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/jit)
