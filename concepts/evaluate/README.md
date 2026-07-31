# evaluate

A beginner-friendly guide to evaluation: turning an expression into a value
inside a controlled runtime.

To evaluate something is to compute its result.

In language and UI runtime design, evaluation is where meaning becomes value.

```text
expression + scope -> value
```

## Table of Contents

- [The Simple Idea](#the-simple-idea)
- [Evaluate vs Compile](#evaluate-vs-compile)
- [Expression Plus Scope](#expression-plus-scope)
- [Evaluation In UI](#evaluation-in-ui)
- [Safe Evaluation](#safe-evaluation)
- [Eval Is Not Evaluate](#eval-is-not-evaluate)
- [Evaluation And Reactivity](#evaluation-and-reactivity)
- [My Learning Notes](#my-learning-notes)
- [Common Misunderstandings](#common-misunderstandings)
- [Related Concepts](#related-concepts)

## The Simple Idea

Evaluation turns an expression into a result.

Example:

```text
2 + 3 -> 5
```

Most useful expressions need context.

Example:

```text
price * quantity
```

This only has a result when `price` and `quantity` are known.

## Evaluate vs Compile

Compile means prepare.

Evaluate means compute.

```text
compile: expression text -> structured form
evaluate: structured form + scope -> result
```

A system can compile once and evaluate many times.

That is useful when the expression stays the same but state changes.

## Expression Plus Scope

Scope is the set of names and values available to the expression.

Example:

```text
expression: price * quantity
scope: price = 10, quantity = 3
result: 30
```

So evaluation is not just about syntax.

It is about syntax plus environment.

## Evaluation In UI

UI runtimes evaluate expressions constantly.

They ask:

- what text should appear here?
- should this element be shown?
- is this form valid?
- what happens when this button is clicked?
- which value should this input write?

When state changes, the runtime evaluates again.

That is how small reactive systems keep HTML and state connected.

## Safe Evaluation

Evaluation can be dangerous if it runs arbitrary code.

A safe evaluator should decide:

- what syntax exists,
- what names are available,
- what methods are allowed,
- what can be written,
- how much work can run,
- what happens on error,
- which host APIs are reachable.

The goal is:

```text
run meaning, not arbitrary power
```

## Eval Is Not Evaluate

JavaScript has `eval`.

That is not the same as evaluation in general.

`eval` runs source code dynamically.

Evaluation can be implemented by:

```text
parse expression
build a small tree or IR
walk it with a scope
return a value
```

This can avoid `eval` entirely.

That distinction matters for security.

## Evaluation And Reactivity

Reactive UI depends on evaluation.

When state changes:

```text
count = count + 1
```

the runtime can re-evaluate:

```text
count
count > 3
price * quantity
```

and update the DOM.

Evaluation is the small engine inside many reactive interfaces.

## My Learning Notes

I used to hear "evaluate" and think of JavaScript `eval`.

That made the word feel unsafe.

But evaluation is broader.

In a KitJS-style runtime, expressions can be parsed into a closed representation
and walked by a controlled evaluator.

The lesson:

```text
safe evaluation is not dynamic JavaScript
safe evaluation is controlled meaning
```

## Common Misunderstandings

**"Evaluate means use eval."**

No. Evaluation can be done by an interpreter or tree walker with a closed grammar.

**"Evaluation only happens once."**

No. Reactive systems may evaluate the same expression many times.

**"Evaluation does not need scope."**

Literal math may not need much scope. Names like `price * quantity` do.

## Related Concepts

Previous: [expression](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/expression)

Next: [scope](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/scope)

Related: [scope](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/scope), [reactive](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/reactive), [hydrate](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/hydrate)
