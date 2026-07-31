# bytecode

A beginner-friendly guide to understanding bytecode: the instruction format that
often sits between source code and runtime behavior.

Bytecode sounds mysterious.

It is not.

It is usually a simpler instruction form created for a virtual machine or runtime.

```text
source code -> compiler -> bytecode -> VM
```

## Table of Contents

- [The Simple Idea](#the-simple-idea)
- [Why Bytecode Exists](#why-bytecode-exists)
- [Source Code, Bytecode, Machine Code](#source-code-bytecode-machine-code)
- [A Tiny Mental Model](#a-tiny-mental-model)
- [What Bytecode Contains](#what-bytecode-contains)
- [Bytecode As A Contract](#bytecode-as-a-contract)
- [Why Not Run Source Directly?](#why-not-run-source-directly)
- [Bytecode And Virtual Machines](#bytecode-and-virtual-machines)
- [Bytecode Caching](#bytecode-caching)
- [My Learning Notes](#my-learning-notes)
- [Common Misunderstandings](#common-misunderstandings)

## The Simple Idea

Bytecode is code that has already been translated into simpler instructions.

Source code is written for humans.

Bytecode is written for an executor.

The executor is often a virtual machine.

```text
human-friendly code -> executor-friendly instructions
```

Bytecode is not usually CPU machine code.

It usually still needs a runtime or VM to run.

## Why Bytecode Exists

Source code is rich.

It has:

- names,
- syntax,
- imports,
- expressions,
- scopes,
- functions,
- comments,
- formatting,
- human-friendly structure.

A VM usually wants something smaller.

Bytecode gives the VM a stable instruction stream.

Instead of making the VM understand an entire source language, the compiler
translates the language into instructions the VM knows how to execute.

## Source Code, Bytecode, Machine Code

These three are easy to confuse.

**Source code**

Human-readable code:

```js
const total = price * quantity
```

**Bytecode**

Instructions for a VM or runtime:

```text
LOAD price
LOAD quantity
MUL
STORE total
```

**Machine code**

Instructions the CPU can execute directly.

Bytecode usually targets a virtual machine.

Machine code targets the real processor.

## A Tiny Mental Model

Think about a kitchen.

Source code is the recipe written for humans:

```text
Make a bowl of noodles with less spice.
```

Bytecode is the kitchen ticket:

```text
BOIL noodles
ADD broth
ADD toppings
SET spice low
SERVE bowl
```

The kitchen does not need the whole conversation.

It needs clear steps.

That is the spirit of bytecode.

## What Bytecode Contains

Bytecode design varies by system.

It may contain instructions for:

- loading constants,
- loading variables,
- storing variables,
- calling functions,
- returning values,
- jumping,
- comparing,
- creating arrays,
- creating objects,
- reading properties,
- writing properties,
- invoking host functions.

Bytecode often also refers to a constant pool.

That pool may contain:

- strings,
- numbers,
- function names,
- variable names,
- nested functions,
- metadata.

The bytecode stream gives the steps.

The constants give reusable data.

## Bytecode As A Contract

Bytecode is a contract between compiler and VM.

The compiler promises:

```text
I will emit instructions in this format.
```

The VM promises:

```text
I will execute those instructions correctly.
```

This contract is powerful because it separates concerns.

The compiler can focus on syntax, scope, imports, and language rules.

The VM can focus on values, stack, frames, calls, and host capabilities.

When the contract is clear, the whole runtime becomes easier to reason about.

## Why Not Run Source Directly?

Some systems do run source or AST-like structures directly.

Bytecode is not required for every project.

But bytecode can help when you want:

- a smaller runtime,
- faster startup after compilation,
- reusable compiled output,
- clearer execution steps,
- easier testing of the VM,
- better separation between language and runtime,
- a place to measure or limit execution,
- a stable format for caching.

Bytecode is useful when source code is too rich for the executor you want to keep.

## Bytecode And Virtual Machines

Bytecode and VM usually belong together.

```text
compiler creates bytecode
VM executes bytecode
runtime provides the world around execution
```

The VM does not need to know how the original source looked.

It only needs to know what each instruction means.

This is why bytecode makes custom runtimes possible.

The runtime can be smaller than a full language engine.

It can execute only the instruction set it understands.

## Bytecode Caching

Once source has been compiled into bytecode, the result may be cached.

That can avoid repeating work:

```text
first request: parse + compile + run
later request: reuse bytecode + run
```

Caching is not always worth it.

If compilation is cheap, simple in-memory caching may be enough.

If compilation is expensive or tenants are many, persistent bytecode caching can
become useful.

The important idea:

```text
bytecode can become a reusable runtime artifact
```

## My Learning Notes

I started caring about bytecode because of runtime boundaries.

If source code goes straight into execution, the runtime has to understand too
much.

While building Kitwork, bytecode became the middle agreement between a constrained
JavaScript subset and a custom Go VM.

That made several things clearer:

- source files can be parsed and compiled before execution,
- imports and exports can be lowered before the VM runs,
- tenant logic can run through a smaller instruction set,
- the VM does not need to behave like a full JavaScript engine,
- compiled bytecode can be cached per tenant,
- execution becomes easier to reason about as instructions.

The lesson:

```text
bytecode is not magic
bytecode is a contract between compiler and runtime
```

## Common Misunderstandings

**"Bytecode is machine code."**

Usually no. Bytecode often targets a virtual machine, not the CPU directly.

**"Bytecode is only for speed."**

No. Bytecode is also about structure, portability, caching, measurement, and
separating compiler from runtime.

**"Bytecode makes a language complete."**

No. You still need lexer, parser, compiler, VM, values, errors, tests, and tools.

**"Bytecode is always binary."**

Not always. Some systems store bytecode as binary. Others represent instructions
in a readable or structured form during development.

**"Bytecode is too advanced to understand."**

The implementation can be hard, but the idea is simple:

```text
turn human-friendly source into executor-friendly instructions
```

## Related Concepts

Previous: [compiler](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/compiler)

Next: [opcode](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/opcode)

Related: [vm](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/vm), [runtime](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/runtime), [prewarm](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/prewarm)
