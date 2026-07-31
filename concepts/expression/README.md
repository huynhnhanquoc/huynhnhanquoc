# expression

A beginner-friendly guide to understanding expressions: small pieces of logic
that produce values inside languages, templates, and UI runtimes.

Expressions are everywhere in programming.

They are also one of the smallest useful units of interactivity.

```text
expression -> value
```

## Table of Contents

- [The Simple Idea](#the-simple-idea)
- [Expression vs Statement](#expression-vs-statement)
- [Why Expressions Matter](#why-expressions-matter)
- [Expressions In UI](#expressions-in-ui)
- [Expression Plus Scope](#expression-plus-scope)
- [Small Expression Languages](#small-expression-languages)
- [Expression As Runtime Surface](#expression-as-runtime-surface)
- [My Learning Notes](#my-learning-notes)
- [Common Misunderstandings](#common-misunderstandings)
- [Related Concepts](#related-concepts)

## The Simple Idea

An expression is a piece of logic that can be evaluated.

It usually produces a value.

Examples:

```text
price * quantity
count > 3
name.toUpperCase()
open == true
email.includes("@")
```

The shortest mental model:

```text
expression -> value
```

## Expression vs Statement

An expression produces a value.

A statement performs a larger step.

Expression:

```js
price * quantity
```

Statement:

```js
const total = price * quantity
```

Different languages draw this line differently.

But the distinction helps when building small runtimes.

Expressions are easier to embed, inspect, and limit.

## Why Expressions Matter

Expressions are small enough to place inside other systems.

They appear in:

- templates,
- validation rules,
- UI bindings,
- filters,
- formulas,
- spreadsheets,
- query builders,
- configuration,
- small component scopes.

Because expressions are smaller than full programs, a runtime can often parse,
verify, and evaluate them safely.

## Expressions In UI

HTML-driven runtimes often use expressions in attributes.

Example:

```html
<b data-text="price * quantity"></b>
<span data-show="count > 3">Unlocked</span>
<button data-click="count = count + 1">+</button>
```

The attribute says what behavior should happen.

The expression provides the logic.

This keeps small dynamic pieces close to the markup they affect.

## Expression Plus Scope

An expression needs context.

This:

```text
price * quantity
```

only works if `price` and `quantity` exist.

So the real model is:

```text
expression + scope -> value
```

Scope gives names meaning.

Without scope, most expressions are only text.

## Small Expression Languages

An expression language does not need to be full JavaScript.

It can be a smaller grammar with:

- numbers,
- strings,
- booleans,
- variables,
- operators,
- comparisons,
- simple calls,
- object literals,
- array literals,
- assignment,
- small lambdas.

A smaller language can be easier to verify.

It can also avoid dangerous features like unrestricted `eval`.

## Expression As Runtime Surface

Expressions are a good runtime surface because they are limited.

The runtime can ask:

```text
what names are used?
what methods are allowed?
what can this expression write?
how much work can it do?
```

That makes expressions useful for UI, validation, filters, and small logic
capsules.

The smaller the surface, the easier it is to reason about.

## My Learning Notes

I used to move UI logic into JavaScript files very quickly.

Then I started noticing how much logic is tiny:

```text
show this when count > 3
write this text as price * quantity
validate this form when email includes "@"
```

In a KitJS-style runtime, those small pieces can live in attributes.

The lesson:

```text
not every interaction needs a full script
some interactions only need an expression
```

## Common Misunderstandings

**"Expression means full JavaScript."**

No. An expression language can be a small subset.

**"Expressions are only for math."**

No. They can describe visibility, validation, text, state changes, and small UI
logic.

**"Small expressions are not real programming."**

They are still logic. The difference is size, scope, and boundary.

## Related Concepts

Previous: [vm](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/vm)

Next: [evaluate](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/evaluate)

Related: [scope](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/scope), [directive](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/directive), [hydrate](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/hydrate)
