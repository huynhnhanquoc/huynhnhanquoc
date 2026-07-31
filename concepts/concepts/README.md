# concepts

A home repo for the public concept notes I publish while learning and building.

These repositories are not perfect encyclopedias.

They are readable notes for ideas I had to understand while building real
software.

The guiding sentence:

```text
I publish concepts I had to understand while building Kitwork.
```

## Table of Contents

- [Start Here](#start-here)
- [Who This Is For](#who-this-is-for)
- [Reading Paths](#reading-paths)
- [Language Path](#language-path)
- [Runtime Path](#runtime-path)
- [Boundary Path](#boundary-path)
- [UI Runtime Path](#ui-runtime-path)
- [Web Runtime Path](#web-runtime-path)
- [Newest Concepts](#newest-concepts)
- [How These Notes Are Written](#how-these-notes-are-written)
- [Why One Word?](#why-one-word)
- [Future Concepts](#future-concepts)
- [Related Concepts](#related-concepts)

## Start Here

If you are new, start with these:

1. [buildinpublic](https://github.com/huynhnhanquoc/buildinpublic)
2. [runtime](https://github.com/huynhnhanquoc/runtime)
3. [tenant](https://github.com/huynhnhanquoc/tenant)
4. [concepts](https://github.com/huynhnhanquoc/concepts)

`buildinpublic` explains the publishing style.

`runtime` explains the idea that connects most technical notes.

`tenant` explains why boundaries matter when many sites or users share one
system.

`concepts` is the map you are reading now.

## Who This Is For

These notes are for:

- builders learning runtime ideas,
- developers curious about compilers and VMs,
- frontend developers exploring smaller UI runtimes,
- indie hackers learning in public,
- people who like simple explanations before deep docs.

The goal is not to replace books or specs.

The goal is to make the first mental model easier.

## Reading Paths

There are several ways to read these repos.

Choose the path that matches your curiosity.

```text
Language Path: source -> VM
Runtime Path: code -> world
Boundary Path: authority -> sandbox
UI Runtime Path: HTML -> behavior
Web Runtime Path: request -> response
```

## Language Path

This path explains how source code becomes something a runtime can execute.

Read in this order:

1. [lexer](https://github.com/huynhnhanquoc/lexer)
2. [ast](https://github.com/huynhnhanquoc/ast)
3. [compiler](https://github.com/huynhnhanquoc/compiler)
4. [bytecode](https://github.com/huynhnhanquoc/bytecode)
5. [opcode](https://github.com/huynhnhanquoc/opcode)
6. [vm](https://github.com/huynhnhanquoc/vm)

The simple path:

```text
text -> tokens -> tree -> bytecode -> opcodes -> VM behavior
```

## Runtime Path

This path explains where code lives and what world surrounds it.

Read in this order:

1. [runtime](https://github.com/huynhnhanquoc/runtime)
2. [host](https://github.com/huynhnhanquoc/host)
3. [native](https://github.com/huynhnhanquoc/native)
4. [tenant](https://github.com/huynhnhanquoc/tenant)
5. [prewarm](https://github.com/huynhnhanquoc/prewarm)

The simple question:

```text
where does code become behavior?
```

## Boundary Path

This path explains how a runtime keeps worlds, powers, and responsibilities
separate.

Read in this order:

1. [scope](https://github.com/huynhnhanquoc/scope)
2. [capability](https://github.com/huynhnhanquoc/capability)
3. [grant](https://github.com/huynhnhanquoc/grant)
4. [sandbox](https://github.com/huynhnhanquoc/sandbox)
5. [isolation](https://github.com/huynhnhanquoc/isolation)
6. [gas](https://github.com/huynhnhanquoc/gas)
7. [capsule](https://github.com/huynhnhanquoc/capsule)

The simple question:

```text
what is allowed to run, where, and with what authority?
```

## UI Runtime Path

This path explains how HTML can become interactive without turning every page into
a large client app.

Read in this order:

1. [expression](https://github.com/huynhnhanquoc/expression)
2. [evaluate](https://github.com/huynhnhanquoc/evaluate)
3. [directive](https://github.com/huynhnhanquoc/directive)
4. [behavior](https://github.com/huynhnhanquoc/behavior)
5. [reactive](https://github.com/huynhnhanquoc/reactive)
6. [hydrate](https://github.com/huynhnhanquoc/hydrate)
7. [jit](https://github.com/huynhnhanquoc/jit)
8. [blueprint](https://github.com/huynhnhanquoc/blueprint)

The simple path:

```text
HTML -> directives -> expressions -> evaluation -> behavior -> runtime
```

## Web Runtime Path

This path explains how a web request becomes a response.

Read in this order:

1. [router](https://github.com/huynhnhanquoc/router)
2. [render](https://github.com/huynhnhanquoc/render)
3. [template](https://github.com/huynhnhanquoc/template)
4. [servertruth](https://github.com/huynhnhanquoc/servertruth)
5. [zerovm](https://github.com/huynhnhanquoc/zerovm)

The simple path:

```text
request -> route -> render -> HTML -> hydrate or deliver
```

## Newest Concepts

Recently added:

- [host](https://github.com/huynhnhanquoc/host)
- [native](https://github.com/huynhnhanquoc/native)
- [router](https://github.com/huynhnhanquoc/router)
- [render](https://github.com/huynhnhanquoc/render)
- [template](https://github.com/huynhnhanquoc/template)
- [prewarm](https://github.com/huynhnhanquoc/prewarm)
- [gas](https://github.com/huynhnhanquoc/gas)
- [grant](https://github.com/huynhnhanquoc/grant)

## How These Notes Are Written

Most notes follow this shape:

- the simple idea,
- why it exists,
- how it fits into a runtime,
- what it is often confused with,
- what I learned while building,
- related concepts to read next.

The writing style is intentionally direct.

Each repo should be readable alone.

Together, the repos form a map.

## Why One Word?

One-word repos make each idea feel like a stable address.

```text
runtime
bytecode
vm
hydrate
sandbox
servertruth
zerovm
```

No decoration.

No clever naming.

Just the concept.

## Future Concepts

Ideas to add later:

- `cache`
- `signal`
- `worker`
- `cluster`
- `snapshot`
- `identity`
- `permission`
- `scheduler`

The list will grow as the work grows.

## Related Concepts

Start: [buildinpublic](https://github.com/huynhnhanquoc/buildinpublic)

Core: [runtime](https://github.com/huynhnhanquoc/runtime), [host](https://github.com/huynhnhanquoc/host), [tenant](https://github.com/huynhnhanquoc/tenant)

Paths: [compiler](https://github.com/huynhnhanquoc/compiler), [hydrate](https://github.com/huynhnhanquoc/hydrate), [sandbox](https://github.com/huynhnhanquoc/sandbox), [router](https://github.com/huynhnhanquoc/router)
