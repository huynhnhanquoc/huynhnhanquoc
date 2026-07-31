# concepts

The ideas I had to understand while writing Kitwork.

Not a dictionary.

Each note is written for someone starting from nothing.

Each one ends with what I actually learned, and what I had misunderstood.

They are in the order I needed them.

```text
the order is part of the lesson
```

## The ground

Where code is given a world to run in.

- [runtime](./runtime/README.md) — the place that gives code memory, values, and limits
- [host](./host/README.md) — the process that owns the machine
- [native](./native/README.md) — what the host does itself
- [tenant](./tenant/README.md) — one folder, one boundary

## Reading and compiling

Turning text into something a machine can hold.

- [lexer](./lexer/README.md) — characters become tokens
- [ast](./ast/README.md) — tokens become shape
- [compiler](./compiler/README.md) — shape becomes instructions
- [bytecode](./bytecode/README.md) — instructions small enough to store
- [opcode](./opcode/README.md) — one instruction, one job
- [vm](./vm/README.md) — a machine made of software

## What the language means

The part I skipped, then debugged for a week.

- [expression](./expression/README.md) — code that produces a value
- [evaluate](./evaluate/README.md) — the moment a value appears
- [scope](./scope/README.md) — which names are visible from where

## Permission to run

Isolation is not a feature you add later.

- [capability](./capability/README.md) — holding the right to do a thing
- [grant](./grant/README.md) — someone had to give it to you
- [sandbox](https://github.com/huynhnhanquoc/sandbox) — a boundary around untrusted logic
- [isolation](./isolation/README.md) — one tenant cannot reach another

## Where truth lives

What the server keeps, and what it never runs.

- [servertruth](./servertruth/README.md) — the client may ask, the server decides
- [zerovm](./zerovm/README.md) — not every request needs code execution
- [capsule](./capsule/README.md) — logic that travels and still runs under a limit
- [gas](./gas/README.md) — every step costs, so nothing runs forever

## Answering a request

From a URL to bytes on a wire.

- [router](./router/README.md) — choosing who answers
- [render](./render/README.md) — turning state into a page
- [template](./template/README.md) — a page with holes left for data
- [prewarm](./prewarm/README.md) — paying the cost before the first visitor
- [directive](./directive/README.md) — markup that asks for behavior

## The browser side

The same questions, at the other end of the wire.

- [behavior](./behavior/README.md) — what a thing does, not what it is
- [hydrate](./hydrate/README.md) — giving a rendered page its behavior back
- [jit](./jit/README.md) — generating only what this page used
- [reactive](./reactive/README.md) — an interface that updates when state changes

## The plan

- [blueprint](./blueprint/README.md) — a plan that makes separate instances

## Outside the path

Notes I wrote about the writing itself, rather than the runtime.

- [concepts](./concepts/README.md) — why I publish these notes at all
- [buildinpublic](./buildinpublic/README.md) — sharing what you build while you build it
- [inpublic](./inpublic/README.md) — a philosophy for creating openly

## Two notes on what is missing

`sandbox` above links out. Its written version lives in its own repository; the
copy that used to sit here was generated, and it is now in
[reference](../reference/README.md).

`runtime-js` is part of the path but is not written yet.

## Elsewhere

Each note here is also its own repository under
[github.com/huynhnhanquoc](https://github.com/huynhnhanquoc).

They are published in reading order at
[huynhnhanquoc.com/concepts](https://huynhnhanquoc.com/concepts).
