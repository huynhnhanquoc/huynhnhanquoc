# template

A beginner-friendly guide to templates: reusable shapes that become output when
data is bound to them.

A template is not the final page.

It is the page shape before data fills it.

```text
template + data -> rendered output
```

## Table of Contents

- [The Simple Idea](#the-simple-idea)
- [Why Templates Exist](#why-templates-exist)
- [Template vs Blueprint](#template-vs-blueprint)
- [Template Syntax](#template-syntax)
- [Layouts And Partials](#layouts-and-partials)
- [Templates And Server Truth](#templates-and-server-truth)
- [Templates And Hydration](#templates-and-hydration)
- [My Learning Notes](#my-learning-notes)
- [Common Misunderstandings](#common-misunderstandings)
- [Related Concepts](#related-concepts)

## The Simple Idea

A template describes output with placeholders.

Example:

```html
<h1>{{ title }}</h1>
```

When data is bound:

```text
title = "Runtime"
```

the rendered result becomes:

```html
<h1>Runtime</h1>
```

## Why Templates Exist

Templates help separate shape from data.

They make repeated output easier:

- pages,
- layouts,
- lists,
- cards,
- navbars,
- emails,
- documentation.

Without templates, rendering becomes string building.

That becomes hard to read quickly.

## Template vs Blueprint

A template usually describes markup shape.

A blueprint describes a plan for an instance, often with state or behavior.

```text
template: what the output looks like
blueprint: how an instance is created and behaves
```

They can work together.

A blueprint may render using a template.

A template may contain directives that activate behavior.

## Template Syntax

Template systems often support:

- interpolation,
- conditionals,
- loops,
- local variables,
- includes,
- layouts,
- slots.

Example:

```html
{{ if user }}
  <p>Hello {{ user.name }}</p>
{{ end }}
```

The syntax should stay small enough to read.

## Layouts And Partials

Layouts give pages a shared shell.

Partials give pages reusable fragments.

Example:

```text
layout: page frame
partial: navbar, sidebar, footer
page: unique content
```

This keeps large sites consistent without copying the same markup everywhere.

## Templates And Server Truth

Templates are powerful with server rendering.

The server can bind authoritative data into HTML before the browser runs any
JavaScript.

That helps with:

- SEO,
- first paint,
- permissions,
- canonical data,
- simple pages,
- cacheable output.

## Templates And Hydration

A rendered template can still become interactive.

The template outputs HTML.

Directives inside that HTML tell the client runtime what to hydrate.

```text
template -> rendered HTML -> hydrate -> interactive HTML
```

The split is clean:

```text
template owns shape
runtime owns behavior
```

## My Learning Notes

Kitwork made templates feel important again.

HTML does not need to disappear into a JavaScript component tree for every page.

A server template can render meaningful HTML.

Then hydrate attributes can add just enough behavior.

The lesson:

```text
templates keep the page readable
hydration keeps the page alive
```

## Common Misunderstandings

**"Templates are old-fashioned."**

No. Templates are still useful when the server owns truth and HTML matters.

**"Templates cannot be interactive."**

Templates render HTML. Hydration can attach interaction afterward.

**"Template and blueprint are the same."**

They overlap, but template is usually shape. Blueprint is instance plan.

## Related Concepts

Previous: [render](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/render)

Next: [prewarm](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/prewarm)

Related: [blueprint](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/blueprint), [hydrate](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/hydrate), [servertruth](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/servertruth)
