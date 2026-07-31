# opcode

A beginner-friendly guide to understanding opcodes: the verbs inside bytecode
instructions.

Opcode is short for operation code.

It tells a virtual machine what action to perform.

```text
instruction = opcode + operands
```

## Table of Contents

- [The Simple Idea](#the-simple-idea)
- [Instruction vs Opcode](#instruction-vs-opcode)
- [Why Opcodes Exist](#why-opcodes-exist)
- [A Tiny Stack Example](#a-tiny-stack-example)
- [Operands](#operands)
- [Opcodes In A VM Loop](#opcodes-in-a-vm-loop)
- [Opcode Design](#opcode-design)
- [Readable Names vs Numeric Codes](#readable-names-vs-numeric-codes)
- [Where Opcode Fits In The Pipeline](#where-opcode-fits-in-the-pipeline)
- [My Learning Notes](#my-learning-notes)
- [Common Misunderstandings](#common-misunderstandings)

## The Simple Idea

An opcode tells the VM what to do.

Examples:

```text
LOAD
STORE
ADD
CALL
RETURN
JUMP
```

The shortest mental model:

```text
opcode = verb of an instruction
```

If bytecode is a list of instructions, opcodes are the actions inside that list.

## Instruction vs Opcode

An instruction may contain more than the opcode.

The opcode says what action to perform.

The operands provide details.

Example:

```text
LOAD 3
```

Here:

- `LOAD` is the opcode,
- `3` is the operand.

The instruction might mean:

```text
load the value at slot 3
```

So:

```text
instruction = what to do + what to use
```

## Why Opcodes Exist

Source code is too rich for a small VM.

The compiler lowers source into bytecode instructions.

Opcodes are the vocabulary of those instructions.

Instead of making the VM understand this:

```js
const total = price * quantity
```

The compiler can emit something like:

```text
LOAD price
LOAD quantity
MUL
STORE total
```

The VM does not need to know JavaScript syntax.

It only needs to know what `LOAD`, `MUL`, and `STORE` do.

## A Tiny Stack Example

Imagine this expression:

```text
2 + 3
```

A stack VM might receive:

```text
PUSH 2
PUSH 3
ADD
```

Execution:

```text
PUSH 2   -> stack: [2]
PUSH 3   -> stack: [2, 3]
ADD      -> stack: [5]
```

The opcode `ADD` means:

```text
take the top two values
add them
push the result
```

That is opcode execution in miniature.

## Operands

Opcodes often need extra data.

That extra data is called an operand.

Examples:

```text
PUSH 10
LOAD name
JUMP 24
CALL 2
```

The opcode is the action.

The operand is the detail.

Examples:

- `PUSH` needs a value,
- `LOAD` needs a name or slot,
- `JUMP` needs a target instruction,
- `CALL` may need an argument count.

Without operands, many opcodes would be too vague.

## Opcodes In A VM Loop

A VM often runs a loop like this:

```text
read instruction
inspect opcode
execute matching behavior
move instruction pointer
```

Conceptually:

```text
if opcode is ADD, add
if opcode is CALL, call
if opcode is RETURN, return
```

Real VMs also manage:

- instruction pointer,
- stack,
- call frames,
- values,
- variables,
- constants,
- jumps,
- errors,
- host functions.

But the basic idea stays the same.

The opcode selects the behavior.

## Opcode Design

Designing opcodes is a language design problem.

Too few opcodes can make every instruction awkward.

Too many opcodes can make the VM hard to understand.

A good opcode set is:

- small enough to reason about,
- complete enough to express the language,
- stable enough for compiled code,
- clear enough to debug,
- simple enough to execute,
- explicit enough to test.

Every opcode is a promise.

Once the compiler emits it, the VM must support it.

## Readable Names vs Numeric Codes

Humans like names:

```text
LOAD
ADD
RETURN
```

Machines often store numbers:

```text
1
2
3
```

The name is easier to discuss.

The number is easier to store and dispatch.

Both refer to the same operation.

## Where Opcode Fits In The Pipeline

Opcodes sit inside bytecode:

```text
source -> compiler -> bytecode instructions -> opcodes -> VM behavior
```

The compiler chooses opcodes.

The VM obeys opcodes.

That relationship is one of the clearest contracts in a language runtime.

## My Learning Notes

I started understanding opcodes when I stopped thinking of bytecode as one vague
blob.

Bytecode is made of instructions.

Instructions are made of operations and details.

The opcode is the operation.

While learning from Kitwork's VM, this became very concrete:

- `LOAD` and `STORE` can refer to variable names through constants,
- calls and method invocation need careful stack behavior,
- host values and proxy-like values affect how operations behave,
- a small opcode set still has many edge cases.

The lesson:

```text
opcodes are the vocabulary of a VM
```

If the vocabulary is clear, the compiler and VM can talk clearly.

If the vocabulary is messy, every layer above it becomes harder.

## Common Misunderstandings

**"Opcode and bytecode are the same thing."**

No. Bytecode is usually the instruction stream. Opcode is the operation part of
an instruction.

**"Opcode means assembly."**

Not exactly. Assembly languages have operation codes, but bytecode VMs also have
opcodes.

**"Opcodes are always numeric."**

Internally they often are. Humans usually name them so the system can be
understood.

**"More opcodes means a better VM."**

Not always. More opcodes can make the VM harder to maintain.

**"Opcodes are only about speed."**

No. Opcodes are also about clarity, structure, debugging, and the compiler/VM
contract.

## Related Concepts

Previous: [bytecode](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/bytecode)

Next: [vm](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/vm)

Related: [compiler](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/compiler), [runtime](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/runtime), [gas](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/gas)
