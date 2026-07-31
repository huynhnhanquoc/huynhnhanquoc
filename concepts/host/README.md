# host

A beginner-friendly guide to hosts in runtime design: the environment that owns
the world where guest code runs.

Host is one of the clearest words for understanding runtime authority.

```text
host runs guest code
```

## Table of Contents

- [The Simple Idea](#the-simple-idea)
- [Host And Guest](#host-and-guest)
- [Why Hosts Matter](#why-hosts-matter)
- [What A Host Provides](#what-a-host-provides)
- [Host APIs](#host-apis)
- [Host As Boundary](#host-as-boundary)
- [Examples](#examples)
- [My Learning Notes](#my-learning-notes)
- [Common Misunderstandings](#common-misunderstandings)
- [Related Concepts](#related-concepts)

## The Simple Idea

A host is the environment that runs or contains guest code.

The host owns the outside world.

The guest runs inside the rules the host provides.

```text
host -> provides world
guest -> runs inside it
```

## Host And Guest

The host/guest model appears everywhere.

Examples:

- browser hosts page JavaScript,
- Node.js hosts server JavaScript,
- database hosts extension logic,
- game engine hosts scripts,
- VM hosts bytecode,
- server runtime hosts tenant code.

The host decides what the guest can access.

The guest does not automatically own the machine.

## Why Hosts Matter

Hosts matter because code needs a world.

The host provides:

- memory model,
- APIs,
- files,
- network,
- database access,
- time,
- imports,
- permissions,
- lifecycle,
- error handling.

The same code can behave differently in different hosts.

## What A Host Provides

A host may provide:

- built-in modules,
- native capabilities,
- standard library,
- global variables,
- runtime functions,
- event loop,
- scheduler,
- filesystem access,
- network access,
- database handles,
- rendering APIs.

What the host provides becomes part of the programming model.

## Host APIs

Host APIs are the functions and objects a runtime exposes to guest code.

Example:

```text
router
render
database
env
log
server
```

These APIs should be deliberate.

Every host API is a power.

## Host As Boundary

The host is the authority boundary.

It can decide:

- which imports exist,
- which secrets are visible,
- which tenant owns the request,
- which files can be served,
- which APIs can be called,
- when execution stops.

Runtime design is often host design.

## Examples

Browser:

```text
host: browser
guest: page JavaScript
```

Custom VM:

```text
host: Go runtime
guest: bytecode program
```

Multi-tenant platform:

```text
host: platform engine
guest: tenant logic
```

## My Learning Notes

Kitwork helped me feel the host/guest split clearly.

The Go engine is the host.

Tenant logic is guest code.

The VM, compiler, router, render system, env, and native capabilities all sit
around that relationship.

The lesson:

```text
runtime design starts when you ask what the host should expose to the guest
```

## Common Misunderstandings

**"Host just means server."**

No. A browser, VM, database, or game engine can also be a host.

**"Guest code can do whatever the language supports."**

No. The host decides what APIs and powers exist.

**"Host APIs are only convenience."**

No. Host APIs define authority and boundary.

## Related Concepts

Previous: [grant](https://github.com/huynhnhanquoc/grant)

Next: [native](https://github.com/huynhnhanquoc/native)

Related: [runtime](https://github.com/huynhnhanquoc/runtime), [capability](https://github.com/huynhnhanquoc/capability), [vm](https://github.com/huynhnhanquoc/vm)

