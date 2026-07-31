# behavior

A beginner-friendly guide to behavior in UI systems: what an element does, not
only what it looks like.

Behavior is action.

It is the difference between a page that only displays and a page that responds.

```text
markup + behavior -> interaction
```

## Table of Contents

- [The Simple Idea](#the-simple-idea)
- [Appearance vs Behavior](#appearance-vs-behavior)
- [Why Behavior Matters](#why-behavior-matters)
- [Declarative Behavior](#declarative-behavior)
- [Behavior As A Verb](#behavior-as-a-verb)
- [Behavior Registry](#behavior-registry)
- [Behavior vs Component](#behavior-vs-component)
- [My Learning Notes](#my-learning-notes)
- [Common Misunderstandings](#common-misunderstandings)
- [Related Concepts](#related-concepts)

## The Simple Idea

Behavior is what something does.

A button may look like a button.

Its behavior answers:

```text
what happens when someone uses it?
```

Examples:

- toggle,
- copy,
- dismiss,
- open dialog,
- submit form,
- load more,
- switch tab,
- change theme.

## Appearance vs Behavior

Appearance is visual.

Behavior is interactive.

Appearance:

```text
blue button, small icon, rounded corner
```

Behavior:

```text
when clicked, copy this text
```

Both matter.

But they are different concerns.

## Why Behavior Matters

Small behaviors appear everywhere.

Many pages need:

- tabs,
- dialogs,
- copy buttons,
- dismiss buttons,
- theme switches,
- lazy loading,
- form submissions,
- infinite scroll,
- fragment loading.

If every page writes its own custom script, behavior becomes inconsistent.

A runtime can provide common behavior as reusable verbs.

## Declarative Behavior

Declarative behavior means the markup says what should happen.

Example:

```html
<button data-action="copy" data-copy="npm install kitwork">
  Copy
</button>
```

The HTML declares intent.

The runtime performs the action.

This can be easier to maintain than one-off scripts scattered across pages.

## Behavior As A Verb

Many useful behaviors are verbs:

- copy,
- toggle,
- dismiss,
- submit,
- open,
- close,
- append,
- replace.

Thinking in verbs keeps behavior small.

If the behavior cannot be named simply, it may need a component, blueprint, or
larger design.

## Behavior Registry

A behavior registry maps names to implementations.

```text
data-action="copy" -> copy behavior
data-action="toggle" -> toggle behavior
data-action="more" -> more behavior
```

The page declares the behavior.

The runtime looks it up.

This lets the engine ship only the behavior a page uses.

## Behavior vs Component

Behavior is usually stateless or small.

A component usually owns state, structure, or repeated instances.

Example:

```text
copy button -> behavior
counter with local state -> component/blueprint
```

Use the smaller tool when it fits.

## My Learning Notes

I used to reach for JavaScript quickly when a page needed interaction.

Later I started seeing many interactions as small verbs.

In Kitwork-style JIT behavior, a page can say:

```text
this button copies
this link loads more
this element toggles
```

The runtime can register only those verbs.

The lesson:

```text
some behavior belongs in reusable verbs
not in one-off scripts
```

## Common Misunderstandings

**"Behavior means JavaScript file."**

Not always. JavaScript may implement behavior, but markup can declare it.

**"Small behaviors are too simple to standardize."**

Small behaviors are exactly where consistency helps.

**"All behavior should be a component."**

No. A verb can be enough for stateless or simple interactions.

## Related Concepts

Previous: [directive](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/directive)

Next: [hydrate](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/hydrate)

Related: [jit](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/jit), [hydrate](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/hydrate), [blueprint](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/blueprint)
