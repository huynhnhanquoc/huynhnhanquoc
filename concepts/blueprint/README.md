# blueprint

A beginner-friendly guide to blueprints in software: reusable plans that create
separate instances with predictable shape, state, or behavior.

A blueprint is not the final object.

It is a plan for creating the object.

```text
blueprint -> instance
```

## Table of Contents

- [The Simple Idea](#the-simple-idea)
- [Why Blueprints Exist](#why-blueprints-exist)
- [Blueprints In Everyday Life](#blueprints-in-everyday-life)
- [Blueprints In Software](#blueprints-in-software)
- [Blueprint vs Template](#blueprint-vs-template)
- [Blueprint vs Instance](#blueprint-vs-instance)
- [Blueprints For UI](#blueprints-for-ui)
- [Boundaries And State](#boundaries-and-state)
- [My Learning Notes](#my-learning-notes)
- [Common Misunderstandings](#common-misunderstandings)
- [Related Concepts](#related-concepts)

## The Simple Idea

A blueprint is a reusable plan.

The result is a specific instance.

If you use the same blueprint twice, you can create two separate instances.

They may start with the same shape.

They should not accidentally share state.

## Why Blueprints Exist

Software repeats structure.

Without a blueprint, you copy the same idea again and again.

With a blueprint, you define the shape once and create many instances from it.

Blueprints help when you need:

- repeated UI components,
- repeated behavior,
- reusable state,
- consistent structure,
- clear boundaries,
- less copy-paste,
- easier mental models.

## Blueprints In Everyday Life

A house blueprint is not a house.

It describes how a house can be built.

A recipe is not a cake.

It describes how to make a cake.

A form design is not a submitted form.

It describes what a user can fill in.

Blueprints describe.

Instances exist.

## Blueprints In Software

In software, a blueprint can appear as:

- a class,
- a component definition,
- a schema,
- a route pattern,
- a workflow definition,
- a state machine,
- a configuration object,
- a reusable UI behavior.

The common pattern:

```text
define once
instantiate many times
```

## Blueprint vs Template

A template usually describes shape or markup.

A blueprint often describes shape plus behavior or state.

Template:

```html
<button>Save</button>
```

Blueprint:

```text
this component starts with state
this action changes the state
this text reflects the state
each instance gets its own copy
```

The distinction is not always strict.

But it helps:

```text
template = shape
blueprint = plan for an instance
```

## Blueprint vs Instance

The blueprint is the reusable plan.

The instance is the thing created from the plan.

Example:

```text
blueprint: counter
instance A: count = 1
instance B: count = 12
```

Both came from the same blueprint.

They should not accidentally become the same counter.

## Blueprints For UI

UI blueprints are useful when a page has repeated interactive pieces.

Examples:

- counter,
- dropdown,
- tabs,
- theme switcher,
- form section,
- small editor,
- reusable card with local state.

A good UI blueprint answers:

- what state starts here?
- what can change that state?
- what reflects that state?
- can multiple instances exist independently?
- does it need server data?
- does it need persistence?

## Boundaries And State

Blueprints are not only about reuse.

They are also about boundaries.

If a blueprint creates multiple instances, each instance needs its own state.

Shared state should be deliberate.

Accidental shared state is one of the easiest ways to make UI confusing.

## My Learning Notes

I started thinking about blueprints while working with small interactive UI.

At first, it is easy to write behavior directly into one page.

That works once.

Then copy-paste begins.

The more interesting question is:

```text
can the page describe a small stateful thing,
and can the runtime create isolated instances from that description?
```

In Kitwork, this connects to hydrate, local scopes, and component boundaries.

The lesson:

```text
a blueprint is not just reuse
a blueprint is reuse with boundaries
```

## Common Misunderstandings

**"Blueprint means design document."**

Sometimes. But in software it can also mean an executable or instantiable
definition.

**"Blueprint and template are the same."**

They overlap, but a template is usually shape. A blueprint is a plan for creating
instances, often with behavior or state.

**"Sharing a blueprint means sharing state."**

No. A good blueprint creates separate instances.

## Related Concepts

Previous: [jit](https://github.com/huynhnhanquoc/jit)

Next: [expression](https://github.com/huynhnhanquoc/expression)

Related: [template](https://github.com/huynhnhanquoc/template), [scope](https://github.com/huynhnhanquoc/scope), [hydrate](https://github.com/huynhnhanquoc/hydrate)

