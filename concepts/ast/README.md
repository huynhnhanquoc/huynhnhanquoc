# ast

A beginner-friendly guide to understanding ASTs: the tree-shaped form that helps
tools and compilers understand source code.

AST stands for abstract syntax tree.

It is what source code becomes after the parser understands its structure.

```text
tokens -> parser -> AST
```

## Table of Contents

- [The Simple Idea](#the-simple-idea)
- [Why ASTs Exist](#why-asts-exist)
- [Why It Is A Tree](#why-it-is-a-tree)
- [A Tiny Example](#a-tiny-example)
- [AST vs Source Code](#ast-vs-source-code)
- [AST vs Bytecode](#ast-vs-bytecode)
- [What AST Nodes Represent](#what-ast-nodes-represent)
- [Where AST Fits In The Pipeline](#where-ast-fits-in-the-pipeline)
- [My Learning Notes](#my-learning-notes)
- [Common Misunderstandings](#common-misunderstandings)

## The Simple Idea

An AST is source code turned into structure.

Source code is text.

An AST is a tree of meaning.

The parser reads tokens and builds nodes:

```text
function declaration
variable declaration
call expression
binary expression
return statement
identifier
literal
```

Once code becomes a tree, other tools can inspect it, transform it, compile it,
or validate it.

## Why ASTs Exist

Text is hard to reason about directly.

A tree is easier.

With an AST, a compiler can ask:

- is this a function?
- what is the function name?
- what parameters does it take?
- what statements are inside?
- what is the left side of this expression?
- what is the right side?
- where is this variable used?
- what does this import bring into scope?

Those questions are awkward when code is just a string.

They become natural when code is a tree.

## Why It Is A Tree

Programs are nested.

Functions contain statements.

Blocks contain declarations.

Expressions contain smaller expressions.

Calls contain arguments.

Objects contain properties.

That nesting is why a tree fits.

Example:

```text
2 + 3 * 4
```

Tree:

```text
    +
   / \
  2   *
     / \
    3   4
```

The tree makes precedence visible.

`3 * 4` belongs together before the result is added to `2`.

## A Tiny Example

Source:

```js
const total = price * quantity
```

An AST might look conceptually like:

```text
VariableDeclaration
  name: total
  value:
    BinaryExpression
      operator: *
      left: Identifier(price)
      right: Identifier(quantity)
```

This is not the only possible AST shape.

Different compilers choose different node structures.

But the goal is the same:

```text
represent the program in a form tools can walk
```

## AST vs Source Code

Source code keeps human details:

- spacing,
- formatting,
- comments,
- exact punctuation,
- style,
- line breaks.

An AST usually keeps semantic structure:

- node kind,
- names,
- operators,
- child nodes,
- literal values,
- source positions.

The AST is not trying to look like the original text.

It is trying to represent the program.

This is why formatters, linters, compilers, and analyzers often start by building
a tree.

## AST vs Bytecode

AST and bytecode are different layers.

An AST is close to the source language.

Bytecode is close to execution.

```text
source -> tokens -> AST -> bytecode -> VM
```

The AST might say:

```text
BinaryExpression(operator: +)
```

Bytecode might say:

```text
LOAD a
LOAD b
ADD
```

The AST preserves structure.

Bytecode gives executable steps.

## What AST Nodes Represent

Common AST nodes include:

- program,
- block,
- variable declaration,
- function declaration,
- return statement,
- if statement,
- call expression,
- member expression,
- binary expression,
- unary expression,
- identifier,
- literal,
- import statement,
- export statement.

Each node answers one question:

```text
what kind of language construct is this?
```

The compiler can walk the tree and emit instructions based on node types.

## Where AST Fits In The Pipeline

The AST is the bridge between parsing and compiling:

```text
source text
  -> lexer
  -> tokens
  -> parser
  -> AST
  -> compiler
  -> bytecode
  -> VM
```

Without an AST, the compiler has to work directly from tokens or source text.

That can work for very small languages.

But an AST makes the language easier to inspect, test, and extend.

## My Learning Notes

ASTs made compilers feel less mysterious to me.

Before AST, source code feels like one long string.

After AST, it has shape.

While studying Kitwork's compiler pipeline, the AST became the middle layer where
human syntax turns into a form the compiler can reason about.

That helped me see the pipeline more clearly:

```text
lexer finds pieces
parser builds shape
compiler turns shape into instructions
VM runs instructions
```

The AST is not the final program.

It is the moment the program becomes understandable to the compiler.

## Common Misunderstandings

**"AST is bytecode."**

No. AST is structured syntax. Bytecode is executable instruction form.

**"AST keeps every detail."**

Not always. It often drops formatting and comments unless the tool needs them.

**"AST is only for compilers."**

No. Linters, formatters, refactoring tools, syntax highlighters, code search, and
static analyzers can also use tree-like representations.

**"There is one correct AST."**

No. AST shape is a design choice. It should serve the compiler or tool that uses
it.

**"AST means the code is already running."**

No. An AST is still a representation. It must be interpreted, transformed, or
compiled before runtime behavior happens.

## Related Concepts

Previous: [lexer](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/lexer)

Next: [compiler](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/compiler)

Related: [bytecode](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/bytecode), [opcode](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/opcode), [vm](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/vm)
