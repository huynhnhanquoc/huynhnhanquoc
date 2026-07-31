# lexer

A beginner-friendly guide to understanding lexers: the first stage that turns raw
source text into meaningful pieces.

Before code can become a tree, bytecode, or runtime behavior, something has to
read the characters.

That first reader is usually the lexer.

```text
source text -> lexer -> tokens
```

## Table of Contents

- [The Simple Idea](#the-simple-idea)
- [Why Lexers Exist](#why-lexers-exist)
- [What A Token Is](#what-a-token-is)
- [A Tiny Example](#a-tiny-example)
- [Lexer vs Parser](#lexer-vs-parser)
- [What Lexers Usually Handle](#what-lexers-usually-handle)
- [Good Lexer Design](#good-lexer-design)
- [Where Lexer Fits In The Pipeline](#where-lexer-fits-in-the-pipeline)
- [My Learning Notes](#my-learning-notes)
- [Common Misunderstandings](#common-misunderstandings)

## The Simple Idea

A lexer turns characters into tokens.

Characters are raw.

Tokens are meaningful pieces.

The lexer looks at source text and says:

```text
this is a name
this is a number
this is a string
this is an operator
this is punctuation
this is the end
```

It does not need to understand the whole program yet.

It only needs to recognize the pieces.

## Why Lexers Exist

Source code is written for humans.

It has spaces, comments, names, symbols, strings, and visual structure.

A parser does not want to deal with every individual character directly.

The lexer creates a cleaner input:

```text
characters -> tokens
```

That lets the parser focus on structure:

```text
tokens -> AST
```

Without a lexer, every later stage has to keep asking low-level questions:

- is this character part of a name?
- is this quote starting a string?
- is this `=` assignment or comparison?
- did the file end inside a string?
- is this whitespace meaningful?

The lexer answers those questions first.

## What A Token Is

A token is a meaningful piece of source text.

Common token types:

- identifier,
- keyword,
- number,
- string,
- operator,
- punctuation,
- newline,
- end of file,
- invalid character.

Example tokens:

```text
identifier: total
operator: =
number: 42
keyword: const
punctuation: ;
```

The exact token types depend on the language.

A tiny expression language may need only a few.

A JavaScript-like language needs more.

## A Tiny Example

Source:

```js
const total = price * quantity
```

Tokens:

```text
keyword: const
identifier: total
operator: =
identifier: price
operator: *
identifier: quantity
end: EOF
```

The lexer does not decide what the whole line means.

It simply gives the parser a stream of pieces.

The parser can then ask:

```text
is this a declaration?
what is the variable name?
what is the expression on the right side?
```

## Lexer vs Parser

The lexer asks:

```text
what are the pieces?
```

The parser asks:

```text
how do the pieces fit together?
```

That separation keeps both parts smaller.

For example, the lexer can recognize `price`, `*`, and `quantity`.

The parser can decide that those tokens form a multiplication expression.

The lexer sees words and symbols.

The parser sees grammar.

## What Lexers Usually Handle

A lexer often handles:

- whitespace,
- comments,
- identifiers,
- keywords,
- numbers,
- strings,
- escape sequences,
- operators,
- punctuation,
- line and column positions,
- end-of-file markers,
- invalid characters.

Some lexers are simple.

Some become tricky because of:

- nested comments,
- template strings,
- regular expressions,
- indentation-based syntax,
- unicode identifiers,
- ambiguous operators,
- error recovery.

Even a small language needs a careful lexer.

Small mistakes here become confusing errors later.

## Good Lexer Design

A good lexer should be:

- predictable,
- boring in the best way,
- easy to test,
- clear about errors,
- careful with positions,
- strict about what the language accepts.

Position tracking matters because users need useful error messages.

This is not helpful:

```text
syntax error
```

This is better:

```text
line 12, column 18: unexpected character "@"
```

The lexer is often where good diagnostics begin.

## Where Lexer Fits In The Pipeline

The lexer is the first stage of a language pipeline:

```text
source -> lexer -> tokens -> parser -> AST -> compiler -> bytecode -> VM
```

It is small compared with the whole system.

But it shapes everything after it.

If the token stream is clean, the parser can stay clean.

If the lexer is vague, the parser becomes noisy.

## My Learning Notes

I used to treat lexing as a boring pre-step.

Then I learned that the lexer is the first contract of a language.

Before a compiler can reason about meaning, the language must decide what its
pieces are.

While learning from Kitwork's compiler pipeline, this became clearer:

```text
raw text is not a program yet
tokens are the first form of understanding
```

That changed how I look at language design.

A lexer is not the exciting part of a runtime.

But it is the first place where the runtime's language becomes real.

## Common Misunderstandings

**"A lexer understands the program."**

Not really. It recognizes pieces. The parser builds structure.

**"Lexing is always easy."**

Simple lexers can be easy. Real languages often have difficult edge cases.

**"Whitespace never matters."**

Sometimes it does. Some languages use whitespace as structure.

**"The parser can just handle everything."**

It can, but separating lexing and parsing usually makes the system easier to
reason about.

**"Tokens are just strings."**

Tokens usually carry type, value, and position. That extra information matters.

## Related Concepts

Previous: [tenant](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/tenant)

Next: [ast](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/ast)

Related: [compiler](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/compiler), [bytecode](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/bytecode), [runtime](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/runtime)
