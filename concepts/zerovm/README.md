# zerovm

A beginner-friendly guide to understanding Zero-VM paths: the idea that some
requests should not enter a virtual machine or runtime at all.

`zerovm` is a small name for a practical runtime instinct:

```text
not every request needs code execution
```

## Table of Contents

- [The Simple Idea](#the-simple-idea)
- [Why Zero-VM Exists](#why-zero-vm-exists)
- [Runtime Path vs Zero-VM Path](#runtime-path-vs-zero-vm-path)
- [Static Assets](#static-assets)
- [Why This Matters](#why-this-matters)
- [Zero-VM And Boundaries](#zero-vm-and-boundaries)
- [A Tiny Request Flow](#a-tiny-request-flow)
- [My Learning Notes](#my-learning-notes)
- [Common Misunderstandings](#common-misunderstandings)

## The Simple Idea

Zero-VM means serving something without entering a VM.

Some requests need logic.

Some requests just need bytes.

Example:

```text
/app.js    -> static file
/logo.png  -> static file
/dashboard -> runtime route
```

The static files do not need language execution.

They can be served directly by the host.

## Why Zero-VM Exists

VMs and runtimes are useful.

But they have a cost.

They may need to:

- resolve a tenant,
- load bytecode,
- create runtime state,
- execute instructions,
- call handlers,
- build a response.

For a static file, that is unnecessary.

If the request is only asking for an image, CSS file, JavaScript file, font, or
cached asset, the host can serve it directly.

That is the Zero-VM path.

## Runtime Path vs Zero-VM Path

Runtime path:

```text
request -> tenant -> route -> VM -> handler -> response
```

Zero-VM path:

```text
request -> static lookup -> file response
```

Both paths are useful.

The runtime path handles behavior.

The Zero-VM path handles assets.

The design question is:

```text
does this request need logic, or just delivery?
```

## Static Assets

Static assets are the most obvious Zero-VM use case.

Examples:

- images,
- CSS,
- JavaScript bundles,
- fonts,
- icons,
- downloads,
- cached generated files.

Serving these through a VM can waste work.

The host already knows how to stream files.

The VM should be saved for requests that need logic.

## Why This Matters

Zero-VM paths can improve:

- latency,
- throughput,
- memory use,
- runtime simplicity,
- cache behavior,
- failure isolation.

They also make architecture clearer.

A runtime should not become the answer to every request by default.

Sometimes the best runtime decision is:

```text
do not enter the runtime
```

## Zero-VM And Boundaries

Zero-VM is also a boundary idea.

It separates:

```text
asset delivery
from
logic execution
```

That separation matters because static files should not need tenant code to run.

The host can enforce file rules, caching rules, and path rules directly.

The VM remains focused on behavior.

## A Tiny Request Flow

Imagine a request:

```text
GET /assets/logo.png
```

The host can check:

```text
is this a static file?
is it allowed?
can it be streamed?
```

If yes:

```text
serve file
```

No bytecode.

No VM frame.

No handler call.

Just delivery.

## My Learning Notes

Kitwork made this idea feel practical.

Because Kitwork has a custom runtime and VM, it becomes important to choose when
that VM should be used.

Tenant logic belongs in the runtime.

Static assets do not always need to enter that path.

The lesson:

```text
a good runtime also knows when not to run
```

That sentence changed how I think about performance and boundaries.

Zero-VM is not anti-runtime.

It protects the runtime for the work that actually needs it.

## Common Misunderstandings

**"Zero-VM means no runtime exists."**

No. It means a specific request bypasses VM execution.

**"Zero-VM is only about performance."**

Performance matters, but clarity and separation of responsibilities matter too.

**"Static files are simple, so they do not matter."**

Static delivery can be a huge part of real traffic. Keeping it simple matters.

**"Everything should go through one universal handler."**

Not always. A direct path can be cleaner when no logic is needed.

## Related Concepts

Previous: [servertruth](https://github.com/huynhnhanquoc/servertruth)

Next: [host](https://github.com/huynhnhanquoc/host)

Related: [router](https://github.com/huynhnhanquoc/router), [render](https://github.com/huynhnhanquoc/render), [prewarm](https://github.com/huynhnhanquoc/prewarm)

