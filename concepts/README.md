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

- [runtime](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/runtime): the place that gives code memory, values, and limits
- [host](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/host): the process that owns the machine
- [native](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/native): what the host does itself
- [tenant](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/tenant): one folder, one boundary

## Reading and compiling

Turning text into something a machine can hold.

- [lexer](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/lexer): characters become tokens
- [ast](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/ast): tokens become shape
- [compiler](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/compiler): shape becomes instructions
- [bytecode](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/bytecode): instructions small enough to store
- [opcode](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/opcode): one instruction, one job
- [vm](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/vm): a machine made of software

## What the language means

The part I skipped, then debugged for a week.

- [expression](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/expression): code that produces a value
- [evaluate](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/evaluate): the moment a value appears
- [scope](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/scope): which names are visible from where

## Permission to run

Isolation is not a feature you add later.

- [capability](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/capability): holding the right to do a thing
- [grant](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/grant): someone had to give it to you
- [sandbox](https://github.com/huynhnhanquoc/sandbox): a boundary around untrusted logic
- [isolation](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/isolation): one tenant cannot reach another

## Where truth lives

What the server keeps, and what it never runs.

- [servertruth](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/servertruth): the client may ask, the server decides
- [zerovm](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/zerovm): not every request needs code execution
- [capsule](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/capsule): logic that travels and still runs under a limit
- [gas](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/gas): every step costs, so nothing runs forever

## Answering a request

From a URL to bytes on a wire.

- [router](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/router): choosing who answers
- [render](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/render): turning state into a page
- [template](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/template): a page with holes left for data
- [prewarm](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/prewarm): paying the cost before the first visitor
- [directive](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/directive): markup that asks for behavior

## The browser side

The same questions, at the other end of the wire.

- [behavior](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/behavior): what a thing does, not what it is
- [hydrate](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/hydrate): giving a rendered page its behavior back
- [jit](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/jit): generating only what this page used
- [reactive](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/reactive): an interface that updates when state changes

## The plan

- [blueprint](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/blueprint): a plan that makes separate instances

## Outside the path

Notes I wrote about the writing itself, rather than the runtime.

- [concepts](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/concepts): why I publish these notes at all
- [buildinpublic](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/buildinpublic): sharing what you build while you build it
- [inpublic](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/inpublic): a philosophy for creating openly

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
