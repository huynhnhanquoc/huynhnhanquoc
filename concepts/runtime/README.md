# runtime

A beginner-friendly guide to understanding what a runtime is, why it exists, and
why it matters when you build real software.

Runtime is one of the most important words in programming.

It is also one of the easiest words to use without really feeling it.

This guide keeps it simple:

```text
runtime is the world where code becomes behavior
```

## Table of Contents

- [The Simple Idea](#the-simple-idea)
- [Why Runtime Exists](#why-runtime-exists)
- [Code Is Not Enough](#code-is-not-enough)
- [Host And Guest](#host-and-guest)
- [What A Runtime Provides](#what-a-runtime-provides)
- [Runtime As Authority](#runtime-as-authority)
- [Runtime In Web Apps](#runtime-in-web-apps)
- [Runtime And Compilation](#runtime-and-compilation)
- [Small Runtime vs Large Runtime](#small-runtime-vs-large-runtime)
- [Examples You Already Know](#examples-you-already-know)
- [Questions To Ask About Any Runtime](#questions-to-ask-about-any-runtime)
- [My Learning Notes](#my-learning-notes)
- [Common Misunderstandings](#common-misunderstandings)

## The Simple Idea

A runtime is the environment your code wakes up inside.

Your code may be written in a file.

But a file does not run itself.

Something must:

- load the code,
- prepare memory,
- call functions,
- pass input,
- expose APIs,
- manage errors,
- control resources,
- return output,
- decide what the code is allowed to do.

That "something" is the runtime.

The smallest mental model:

```text
code + runtime = running behavior
```

Source code explains what should happen.

Runtime is where it actually happens.

## Why Runtime Exists

Code is abstract.

Runtime makes it concrete.

For example:

- JavaScript needs a browser, Node.js, Bun, Deno, or another host to run.
- WebAssembly needs a runtime to provide imports, memory, and permissions.
- Go programs use a runtime for goroutines, garbage collection, timers, and
  stack management.
- Game scripts run inside an engine runtime with input, rendering, physics, and
  frame timing.
- Plugins run inside a host runtime that decides what the plugin can access.

The runtime is the bridge between instructions and the real world.

Without a runtime, code is just intention.

## Code Is Not Enough

This is the part many beginners miss.

Two pieces of code can look similar but behave very differently depending on the
runtime around them.

Example:

```js
fetch("/api/user")
```

In one runtime, this may call a browser API.

In another runtime, it may call a server API.

In a restricted runtime, it may not exist.

In a custom runtime, it may be replaced with a safer host function.

The code is only half the story.

The runtime answers:

```text
what does this name mean here?
what APIs exist here?
what is allowed here?
who owns the outside world?
```

That is why runtime matters.

## Host And Guest

A useful way to think about runtime is:

```text
host runs guest code
```

The host owns the environment.

The guest is the code being executed inside it.

Examples:

- a browser is the host for page JavaScript,
- Node.js is the host for server JavaScript,
- a database can be the host for extension code,
- a game engine can be the host for gameplay scripts,
- a custom VM can be the host for tenant logic.

The host decides what the guest can see.

The guest does not automatically own the machine.

This idea becomes very important when you run code for many users, tenants,
plugins, scripts, or websites.

## What A Runtime Provides

Different runtimes provide different things.

Most runtimes provide some mix of:

- execution model,
- memory model,
- function calls,
- module loading,
- standard library,
- host APIs,
- event loop or scheduler,
- error handling,
- resource limits,
- security boundaries,
- lifecycle hooks,
- input and output,
- access to time, files, network, database, or DOM.

A small runtime may provide only a few of these.

A large runtime may feel like a complete world.

The important thing is not size.

The important thing is clarity:

```text
what does the runtime provide, and what does it refuse to provide?
```

## Runtime As Authority

At first, runtime sounds like execution.

Later, it starts to sound like authority.

A runtime says:

```text
inside this world, code can do these things
outside this world, code cannot go directly
```

That boundary may be loose.

It may be strict.

It may be accidental.

It may be carefully designed.

For simple apps, you may not think about this much.

But for multi-tenant systems, plugin systems, serverless functions, browser
sandboxes, database extensions, or custom scripting engines, runtime authority is
the whole game.

The key question becomes:

```text
what should this code be allowed to do?
```

Not only:

```text
how do I make this code run?
```

## Runtime In Web Apps

In web apps, runtime often means the world that handles a request.

A request arrives.

The runtime may decide:

- which app should receive it,
- which tenant owns it,
- which route matches,
- which code should execute,
- which environment variables exist,
- which database APIs are available,
- which files can be served directly,
- how errors become responses,
- when to cache, stop, retry, or reject work.

So a web runtime is not only a function caller.

It is a request world.

It turns:

```text
HTTP request -> controlled execution -> HTTP response
```

## Runtime And Compilation

A runtime does not always execute source code directly.

Sometimes code passes through stages first.

One common path:

```text
source -> tokens -> AST -> bytecode -> VM
```

In that model:

- the lexer reads text into tokens,
- the parser turns tokens into a tree,
- the compiler turns the tree into bytecode,
- the VM executes bytecode,
- the runtime provides the world around that execution.

These concepts are connected, but they are not the same.

The compiler asks:

```text
how do we transform code?
```

The VM asks:

```text
how do we execute instructions?
```

The runtime asks:

```text
what world does this execution live inside?
```

## Small Runtime vs Large Runtime

Not every runtime needs to be huge.

A large runtime may provide many APIs, tools, lifecycle hooks, and integrations.

A small runtime may do one thing carefully.

For example:

- a UI runtime might only attach behavior to HTML,
- a plugin runtime might only expose a few safe capabilities,
- a VM runtime might only execute bytecode and call host functions,
- a server runtime might only route requests and produce responses.

Small runtime is not automatically better.

Large runtime is not automatically worse.

The better question is:

```text
how much world does this code need?
```

## Examples You Already Know

**Browser runtime**

Runs JavaScript with access to DOM, events, timers, storage, fetch, rendering, and
browser security rules.

**Node.js runtime**

Runs JavaScript on the server with access to files, network, processes, modules,
streams, and server APIs.

**Go runtime**

Supports compiled Go programs with goroutine scheduling, garbage collection,
stack growth, timers, and runtime services.

**WebAssembly runtime**

Runs WebAssembly modules and lets the host decide which imports and capabilities
the module can use.

**Game runtime**

Runs gameplay code inside an engine loop with rendering, input, physics, assets,
sound, and frame timing.

**Custom VM runtime**

Runs a smaller language or bytecode format inside a controlled host environment.

## Questions To Ask About Any Runtime

When studying a runtime, ask:

- What code format does it execute?
- Does it run source, bytecode, machine code, or something else?
- Who loads the code?
- Who owns memory?
- Who provides APIs?
- What can code access?
- What can code not access?
- How are modules loaded?
- How are errors handled?
- Can execution be stopped?
- Can resource usage be limited?
- Can code be isolated from other code?
- How does it talk to the outside world?
- What happens when something crashes?

These questions make runtime easier to see.

They move runtime from a vague word to a concrete design surface.

## My Learning Notes

I used to think runtime meant:

```text
the thing that runs code
```

That is true, but it is too small.

While building Kitwork, runtime became more concrete for me.

Kitwork is a Go host that runs a constrained JavaScript subset through a compiler,
bytecode, and a hand-written stack-based VM.

That forced me to think about runtime as a boundary:

- tenant code should live in its own isolated world,
- request handling should pass through a host,
- capabilities should be explicit,
- source code can be compiled before execution,
- static assets do not always need to enter the VM path,
- the host should decide what APIs the guest receives,
- the runtime should shape how a request becomes a response.

The lesson that stayed with me:

```text
runtime is not only execution
runtime is environment, authority, lifecycle, and boundary
```

Once I saw that, many other concepts started to connect:

- compiler,
- bytecode,
- opcode,
- VM,
- tenant,
- capability,
- hydrate,
- JIT.

They are different ideas.

But they all orbit the same question:

```text
where does code become behavior, and who controls that world?
```

## Common Misunderstandings

**"Runtime means language."**

Not exactly.

A language can have many runtimes.

JavaScript can run in browsers, Node.js, Deno, Bun, embedded engines, or custom
hosts.

**"Runtime means framework."**

Not exactly.

A framework helps structure an application.

A runtime is the environment that executes code and provides capabilities.

**"Runtime is only about performance."**

Performance matters, but runtime is also about permissions, lifecycle, APIs,
isolation, and failure behavior.

**"If code runs, the runtime is solved."**

Running code is only the beginning.

The harder question is what the code can do while running.

**"A smaller runtime is always better."**

Not always.

A small runtime is useful when the boundary is clear.

A larger runtime is useful when the program needs a larger world.

## Related Concepts

Previous: [buildinpublic](https://github.com/huynhnhanquoc/buildinpublic)

Next: [host](https://github.com/huynhnhanquoc/host)

Related: [tenant](https://github.com/huynhnhanquoc/tenant), [vm](https://github.com/huynhnhanquoc/vm), [capability](https://github.com/huynhnhanquoc/capability)

