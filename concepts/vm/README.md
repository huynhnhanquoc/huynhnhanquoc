# vm

A beginner-friendly guide to understanding virtual machines in software: small
software machines that execute instructions inside a controlled world.

VM stands for virtual machine.

The name can sound heavy.

But a VM does not always mean a full computer.

Sometimes it is a small executor for a small instruction set.

```text
bytecode -> VM -> behavior
```

## Table of Contents

- [The Simple Idea](#the-simple-idea)
- [Why VMs Exist](#why-vms-exist)
- [Two Meanings Of VM](#two-meanings-of-vm)
- [Language VM](#language-vm)
- [What A VM Needs](#what-a-vm-needs)
- [Stack VM](#stack-vm)
- [Frames And Calls](#frames-and-calls)
- [VM And Bytecode](#vm-and-bytecode)
- [VM As A Boundary](#vm-as-a-boundary)
- [My Learning Notes](#my-learning-notes)
- [Common Misunderstandings](#common-misunderstandings)

## The Simple Idea

A VM is an executor made of software.

It receives instructions.

It keeps state.

It runs step by step.

The shortest mental model:

```text
instructions in, behavior out
```

Source code is usually too rich for a small executor.

So a compiler turns source into simpler instructions.

The VM executes those instructions.

## Why VMs Exist

VMs exist because sometimes you do not want code to run directly on the real
machine or inside a full language engine.

You may want:

- portability,
- isolation,
- control,
- measurement,
- sandboxing,
- a stable instruction set,
- a smaller runtime,
- explicit host capabilities.

The VM becomes a controlled execution world.

Code can run inside it, but the host decides what the VM can access.

## Two Meanings Of VM

People use VM in at least two common ways.

**System VM**

A system VM behaves like a whole computer.

Examples include cloud virtual machines, local operating-system VMs, and
virtualized servers.

**Language VM**

A language VM executes a language or bytecode instruction set.

Examples include JVM, Lua VM, Python's bytecode interpreter, WebAssembly
runtimes, and small scripting VMs.

This guide is mostly about language VMs.

## Language VM

A language VM usually sits between bytecode and behavior.

It may handle:

- values,
- variables,
- instructions,
- stack,
- function calls,
- frames,
- returns,
- jumps,
- built-ins,
- host APIs.

The compiler understands the source language.

The VM understands the instruction set.

```text
compiler: source -> bytecode
VM: bytecode -> behavior
```

That split is powerful.

It lets the VM be smaller than the source language.

## What A VM Needs

A small language VM often needs:

- instruction pointer,
- stack or registers,
- value representation,
- call frames,
- variables,
- functions,
- constants,
- jumps,
- returns,
- error handling,
- built-ins,
- host capabilities.

It does not need to support every feature of a large language.

It only needs to support the instruction set it promises to execute.

That is why VM design is mostly boundary design.

## Stack VM

One common VM style is a stack VM.

A stack VM uses a stack to hold temporary values.

Example:

```text
PUSH 2
PUSH 3
ADD
```

Execution:

```text
PUSH 2 -> stack: [2]
PUSH 3 -> stack: [2, 3]
ADD    -> stack: [5]
```

The stack makes many operations simple.

An `ADD` instruction can pop two values, add them, and push the result.

Many bytecode systems use stack machines because they are compact and easier to
implement than some alternatives.

## Frames And Calls

Function calls need more than a stack of temporary values.

A VM usually needs call frames.

A frame can hold:

- local variables,
- arguments,
- return address,
- function state,
- closure scope,
- temporary execution state.

When a function is called, the VM creates or reuses a frame.

When the function returns, the VM restores the previous frame.

This is where many hard VM bugs live.

Variables, closures, recursion, and function returns all depend on frames working
correctly.

## VM And Bytecode

Bytecode and VM fit together naturally.

Bytecode is the instruction format.

The VM is the executor.

```text
source code
  -> compiler
  -> bytecode
  -> VM
  -> result
```

The VM does not need to know how the original source looked.

It only needs to know what each instruction means.

This is one reason bytecode is useful.

It gives the VM a smaller world.

## VM As A Boundary

A VM is not only an execution tool.

It is also a boundary.

It can decide:

- which built-ins exist,
- which host functions are available,
- how values behave,
- how much work code may do,
- whether code can access files,
- whether code can access the network,
- how errors stop execution,
- how one script is isolated from another.

This is why small custom VMs are interesting.

They are not always built for speed.

Sometimes they are built for control.

## My Learning Notes

I used to think a VM meant pretending to be a whole computer.

Then I learned about language VMs.

That changed the meaning for me.

A VM can be much smaller:

```text
a loop
an instruction pointer
a stack
values
frames
built-ins
rules for what code can do
```

While building Kitwork, the VM became the place where runtime boundaries became
real.

Kitwork uses a hand-written stack-based Go VM instead of V8.

That made several ideas concrete:

- bytecode is the VM's input,
- opcodes are the VM's vocabulary,
- frames isolate function-local variables,
- closure capture must preserve the right scope,
- host capabilities should be explicit,
- tenant code should not directly own the host machine.

The lesson:

```text
a VM is not only how code runs
a VM is where code is contained
```

## Common Misunderstandings

**"VM always means a full operating system."**

No. That is one kind of VM. A language VM can be much smaller.

**"A VM must be fast to be useful."**

Speed matters, but control, portability, isolation, and simplicity can matter just
as much.

**"A VM replaces the compiler."**

No. The compiler creates instructions. The VM executes them.

**"A small VM is easy."**

The first version can be small. Correctness is the hard part: scope, calls,
closures, errors, values, and edge cases.

**"A VM is magic."**

It is not magic. It is usually a loop that reads instructions and performs the
matching behavior.

## Related Concepts

Previous: [opcode](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/opcode)

Next: [expression](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/expression)

Related: [bytecode](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/bytecode), [host](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/host), [sandbox](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/sandbox)
