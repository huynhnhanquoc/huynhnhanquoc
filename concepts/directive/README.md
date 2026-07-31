# directive

A beginner-friendly guide to directives: small instructions placed in markup so a
runtime knows what behavior to attach.

A directive is a command written close to the thing it affects.

In HTML-driven UI runtimes, directives often live as attributes.

```html
<span data-show="count > 3">Unlocked</span>
```

## Table of Contents

- [The Simple Idea](#the-simple-idea)
- [Why Directives Exist](#why-directives-exist)
- [Directive As Markup Logic](#directive-as-markup-logic)
- [Common UI Directives](#common-ui-directives)
- [Directive vs Expression](#directive-vs-expression)
- [Directive vs Behavior](#directive-vs-behavior)
- [Directive vs Component](#directive-vs-component)
- [My Learning Notes](#my-learning-notes)
- [Common Misunderstandings](#common-misunderstandings)
- [Related Concepts](#related-concepts)

## The Simple Idea

A directive tells the runtime what to do with an element.

The element is normal HTML.

The directive adds runtime meaning.

Example:

```html
<span data-show="count > 3">Unlocked</span>
```

The directive says:

```text
show this element when count > 3
```

## Why Directives Exist

Directives keep small behavior close to markup.

Instead of searching through a separate JavaScript file, you can often understand
an element by reading the element.

Directives are useful for:

- text binding,
- visibility,
- click actions,
- form models,
- validation,
- live regions,
- component scopes,
- small reusable behaviors.

## Directive As Markup Logic

A directive usually has two parts:

```text
directive name + directive value
```

Example:

```html
<button data-click="count = count + 1">+</button>
```

The name says the kind of behavior.

The value gives the expression, target, or option.

## Common UI Directives

Common patterns:

```html
<b data-text="price * quantity"></b>
<div data-show="open"></div>
<button data-click="open = !open"></button>
<input data-model="email">
<form data-validate="email.includes('@')"></form>
```

The exact names depend on the runtime.

The pattern is the same:

```text
HTML carries intent
runtime reads intent
behavior appears
```

## Directive vs Expression

The directive is the instruction.

The expression is often the logic inside it.

Example:

```html
<b data-text="price * quantity"></b>
```

Here:

- `data-text` is the directive,
- `price * quantity` is the expression.

## Directive vs Behavior

A directive declares.

A behavior performs.

Example:

```html
<button data-action="copy" data-copy="npm install kitwork">Copy</button>
```

The directive tells the runtime that this button wants the `copy` behavior.

The behavior is the reusable code that actually copies.

## Directive vs Component

A component is usually a reusable unit with state or structure.

A directive is usually a smaller instruction attached to an element.

They can work together.

A component may contain many directives.

## My Learning Notes

I used to think serious UI needed more JavaScript files.

Directives changed that feeling.

Some behavior is easier to understand when it stays near the HTML.

In KitJS-style runtime, markup can become the program:

```text
HTML describes structure
directives describe behavior
runtime connects them
```

The lesson:

```text
directives are bridges between markup and runtime
```

## Common Misunderstandings

**"Directives are only for frameworks."**

No. Any runtime can define markup instructions.

**"Directives make HTML impure."**

They add behavior to HTML. Whether that is good depends on whether the runtime is
clear and predictable.

**"Directives replace components."**

Not always. Directives and components solve different sizes of problem.

## Related Concepts

Previous: [evaluate](https://github.com/huynhnhanquoc/evaluate)

Next: [behavior](https://github.com/huynhnhanquoc/behavior)

Related: [expression](https://github.com/huynhnhanquoc/expression), [hydrate](https://github.com/huynhnhanquoc/hydrate), [blueprint](https://github.com/huynhnhanquoc/blueprint)

