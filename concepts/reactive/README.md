# reactive

A beginner-friendly guide to reactive UI: the idea that an interface should update
when state changes.

Reactive programming is about change.

When state changes, the UI follows.

```text
state changes -> UI updates
```

## Table of Contents

- [The Simple Idea](#the-simple-idea)
- [Why Reactive UI Exists](#why-reactive-ui-exists)
- [State And View](#state-and-view)
- [The Reactive Loop](#the-reactive-loop)
- [Why It Feels Good](#why-it-feels-good)
- [Where It Gets Heavy](#where-it-gets-heavy)
- [Runtime Instead Of Framework](#runtime-instead-of-framework)
- [My Learning Notes](#my-learning-notes)
- [Common Misunderstandings](#common-misunderstandings)
- [Related Concepts](#related-concepts)

## The Simple Idea

Reactive UI means the interface reacts to state.

Example:

```text
count = 0
click button
count = 1
text updates
```

You do not manually rewrite every part of the DOM.

The system connects state to the view.

## Why Reactive UI Exists

Interactive pages have changing state.

Examples:

- form values,
- counters,
- filters,
- selected tabs,
- dropdowns,
- carts,
- validation,
- loading states,
- live data.

Without a reactive model, you manually update the DOM everywhere.

Reactive systems make updates feel connected.

## State And View

Reactive UI starts with two ideas:

```text
state = what the app knows
view = what the user sees
```

When state changes, the view should match.

The hard part is keeping them in sync without writing too much glue code.

## The Reactive Loop

The loop:

```text
read state
render view
user acts
update state
render again
```

Different systems implement this differently.

Some use virtual DOM.

Some use signals.

Some track dependencies.

Some compile templates.

Some walk expressions in the DOM.

The goal is similar:

```text
make UI follow state
```

## Why It Feels Good

Reactive UI feels good because it reduces manual DOM work.

Instead of saying:

```text
find this element
set this text
hide that element
disable this button
```

you can say:

```text
this text depends on count
this element shows when open is true
this input writes to email
```

That is a powerful shift.

## Where It Gets Heavy

Reactive systems can become heavy when a project needs:

- build tools,
- bundlers,
- large dependencies,
- hydration,
- client-side routing,
- state libraries,
- complex component trees,
- duplicated server/client rules.

This does not make reactive JavaScript bad.

It means every model has a cost.

## Runtime Instead Of Framework

One alternative is a smaller runtime.

Instead of writing a full client app, HTML can stay the main surface.

Small directives and expressions describe the dynamic parts:

```html
<button data-click="count = count + 1">+</button>
<b data-text="count"></b>
```

This is still reactive in spirit.

The shape is different:

```text
HTML first
small expressions
runtime handles updates
less client app structure
```

## My Learning Notes

I learned reactive JavaScript before I started thinking deeply about runtime.

At first, reactive JS felt like the natural answer:

```text
state changes
UI updates
components organize everything
```

That model taught me a lot.

Later I became more interested in a smaller question:

```text
how much interactivity can stay inside HTML before I need a full client app?
```

That question pushed me toward KitJS-style runtime.

The lesson:

```text
reactive is the idea
framework is one expression of the idea
runtime can be another
```

## Common Misunderstandings

**"Reactive means React."**

No. React is one popular library. Reactive programming is a broader idea.

**"Reactive always means client-side app."**

No. Reactive ideas can appear in small runtimes, templates, signals, spreadsheets,
and server-driven systems.

**"Moving away from a framework means abandoning reactivity."**

No. You can keep the idea and change the surface.

## Related Concepts

Related: [expression](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/expression), [evaluate](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/evaluate), [servertruth](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/servertruth)
