# compiler

A beginner-friendly guide to understanding compilers: the stage that turns code
from one form into another so another system can run it, check it, or understand
it more easily.

A compiler is a translator.

But it is not only a translator for machines.

It is also a design boundary.

```text
source code -> compiler -> executable form
```

## Table of Contents

- [The Simple Idea](#the-simple-idea)
- [Why Compilers Exist](#why-compilers-exist)
- [The Compiler Pipeline](#the-compiler-pipeline)
- [Compiler vs Runtime](#compiler-vs-runtime)
- [Compiler vs Interpreter](#compiler-vs-interpreter)
- [What A Compiler Must Understand](#what-a-compiler-must-understand)
- [Compiler As A Boundary](#compiler-as-a-boundary)
- [Compiler Output](#compiler-output)
- [My Learning Notes](#my-learning-notes)
- [Common Misunderstandings](#common-misunderstandings)

## The Simple Idea

A compiler turns code from one form into another form.

The input is often source code.

The output can be many things:

- machine code,
- bytecode,
- JavaScript,
- WebAssembly,
- an intermediate representation,
- another language,
- a verified execution plan.

The compiler's job is not always to produce CPU instructions.

Sometimes its job is to make code simpler for a runtime or VM.

## Why Compilers Exist

Human-friendly code is rich.

It has names, syntax, imports, expressions, scopes, functions, objects, and many
ways to say similar things.

Execution systems usually want something smaller and more regular.

A compiler creates that smaller form.

It can also:

- catch errors early,
- resolve imports,
- understand scope,
- rewrite syntax,
- lower complex features,
- optimize,
- emit bytecode,
- prepare code for a runtime,
- keep the VM simpler.

This is why compilers matter even when performance is not the main goal.

## The Compiler Pipeline

A common language pipeline looks like this:

```text
source -> lexer -> parser -> AST -> compiler -> bytecode
```

Each stage changes the shape of the program:

- lexer turns text into tokens,
- parser turns tokens into an AST,
- AST represents structure,
- compiler turns structure into executable instructions.

The compiler is where high-level language meaning becomes lower-level execution
steps.

## Compiler vs Runtime

The compiler prepares.

The runtime executes.

```text
compiler: understand and transform the language
runtime: run the transformed result inside a world
```

This split is useful.

The runtime does not need to understand every detail of the source language.

It only needs to understand the compiler output.

For a bytecode VM, the split is:

```text
compiler emits bytecode
VM executes bytecode
runtime provides the world around execution
```

## Compiler vs Interpreter

An interpreter runs code more directly.

A compiler translates first.

But real systems blur the line.

Some systems:

- compile source into bytecode,
- interpret bytecode in a VM,
- compile hot paths later,
- cache compiled forms,
- mix static and dynamic translation.

The better question is not:

```text
compiler or interpreter?
```

The better question is:

```text
when does translation happen, and what form does execution use?
```

## What A Compiler Must Understand

A compiler may need to understand:

- variables,
- scope,
- functions,
- closures,
- imports,
- exports,
- expressions,
- statements,
- objects,
- arrays,
- member access,
- calls,
- control flow,
- constants,
- errors.

The compiler is where many language rules become concrete.

If a language says a feature exists, the compiler must know how to represent it,
lower it, reject it, or pass it to runtime.

## Compiler As A Boundary

A compiler can make a runtime smaller.

Instead of letting the runtime understand the entire source language, the compiler
can translate rich syntax into a small instruction set.

That creates a useful boundary:

```text
frontend understands source
backend executes instructions
```

This boundary helps with:

- simpler runtime design,
- better testing,
- clearer errors,
- bytecode caching,
- portability,
- security review,
- custom language subsets.

The compiler decides what source code is accepted.

The runtime decides what accepted code can do.

## Compiler Output

Compiler output depends on the system.

Examples:

- C compilers can output machine code.
- TypeScript can output JavaScript.
- Java compilers output JVM bytecode.
- WebAssembly tools output Wasm modules.
- Small scripting languages may output custom bytecode.

The output is a contract.

Once the compiler emits it, another system must know how to consume it.

For a VM, that contract is usually:

```text
compiler emits instructions
VM executes instructions
```

## My Learning Notes

I used to think compilers belonged only to big languages.

Then I started seeing a compiler as a way to simplify runtime.

While building and studying Kitwork, this mattered because the source language is
a constrained JavaScript subset, not full JavaScript running in V8.

The compiler can turn source into bytecode for a custom stack-based Go VM.

That changed the meaning for me:

```text
a compiler is not only for speed
a compiler shapes what the runtime needs to understand
```

In Kitwork's case, compiler work connects many ideas:

- lexer,
- parser,
- AST,
- imports,
- exports,
- bytecode,
- opcodes,
- VM behavior.

The compiler is where a language stops being just text and starts becoming an
execution plan.

## Common Misunderstandings

**"Compiler means machine code."**

Not always. A compiler can output bytecode, JavaScript, WebAssembly, IR, or
another language.

**"Compiler and runtime are the same thing."**

No. They work together, but they have different jobs.

**"A compiler always makes code faster."**

Sometimes. But compilers also provide structure, validation, portability, and
cleaner runtime boundaries.

**"Interpreted languages do not have compilers."**

Many interpreted systems still compile source into bytecode or an internal form
before execution.

**"A compiler is too advanced for small projects."**

Not always. A small compiler can be useful when you want a small language, a
custom runtime, or a clear execution boundary.

## Related Concepts

Previous: [ast](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/ast)

Next: [bytecode](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/bytecode)

Related: [lexer](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/lexer), [runtime](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/runtime), [native](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/native)
