# native

A beginner-friendly guide to native features in a runtime: capabilities provided
directly by the host instead of simulated by userland code or external bundlers.

Native does not always mean CPU-level machine code.

In runtime design, it often means:

```text
the host provides this directly
```

## Table of Contents

- [The Simple Idea](#the-simple-idea)
- [Why Native Exists](#why-native-exists)
- [Native vs Userland](#native-vs-userland)
- [Native Imports](#native-imports)
- [Native Capabilities](#native-capabilities)
- [Native Is A Boundary](#native-is-a-boundary)
- [My Learning Notes](#my-learning-notes)
- [Common Misunderstandings](#common-misunderstandings)
- [Related Concepts](#related-concepts)

## The Simple Idea

Native means a capability is built into the host runtime.

Example:

```text
code asks for a thing
runtime provides it directly
```

That thing might be:

- a module,
- an import system,
- a database API,
- an environment object,
- a file server,
- a router,
- a rendering API,
- a host function.

Native is about where authority lives.

## Why Native Exists

Native features exist because some things are better handled by the host.

The host can know:

- tenant boundaries,
- environment variables,
- database connections,
- filesystem rules,
- security rules,
- cache state,
- runtime capabilities.

If userland code fakes those features, it may lose important context.

Native host support can make boundaries clearer.

## Native vs Userland

Userland code is code written on top of the runtime.

Native code is part of the runtime surface.

Example:

```text
userland router: library loaded by the app
native router: route system provided by the host runtime
```

Both can work.

The difference is authority.

Native features can enforce rules closer to the host.

## Native Imports

Native imports let source code ask for runtime-provided modules.

Example:

```js
import { router, render, env } from "kitwork"
```

The runtime decides what `"kitwork"` means.

That is different from bundling a package from `node_modules`.

The import is part of the host contract.

## Native Capabilities

Native capabilities should be explicit.

Examples:

- `router`,
- `render`,
- `database`,
- `env`,
- `log`,
- `server`.

Each capability is a power.

The runtime should decide which code receives which power.

## Native Is A Boundary

Native features are not just convenience.

They define the line between guest code and host authority.

The guest asks.

The host provides only what it chooses.

```text
guest code -> native capability -> host-controlled behavior
```

This is why native runtime design belongs with security and architecture.

## My Learning Notes

Kitwork made "native" feel different to me.

The goal is not to imitate a full Node or browser world.

The goal is to expose a small host surface deliberately.

Native import/export and host capabilities make that possible:

- imports can be resolved by the compiler/runtime,
- `"kitwork"` can be a host-provided module,
- tenant code can receive explicit powers,
- bundling can stay smaller,
- the VM does not need to pretend to be V8.

The lesson:

```text
native means the runtime owns the contract
```

## Common Misunderstandings

**"Native always means machine code."**

No. In runtime design, native can mean host-provided.

**"Native means faster."**

Sometimes, but the bigger point is authority, integration, and boundary.

**"Native features are always better."**

No. Native features should be small and deliberate because they become part of the
runtime contract.

## Related Concepts

Previous: [host](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/host)

Next: [tenant](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/tenant)

Related: [runtime](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/runtime), [capability](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/capability), [compiler](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/compiler)
