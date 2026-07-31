# sandbox

A beginner-friendly guide to understanding sandboxes: controlled environments
where code can run without receiving full power over the host system.

Sandbox is one of the most important ideas in runtime design.

It answers a simple question:

```text
how can code run without being allowed to do everything?
```

## Table of Contents

- [The Simple Idea](#the-simple-idea)
- [Why Sandboxes Exist](#why-sandboxes-exist)
- [Sandbox vs Isolation](#sandbox-vs-isolation)
- [Sandbox vs Capability](#sandbox-vs-capability)
- [What A Sandbox Controls](#what-a-sandbox-controls)
- [Sandbox In Runtime Design](#sandbox-in-runtime-design)
- [A Tiny Example](#a-tiny-example)
- [My Learning Notes](#my-learning-notes)
- [Common Misunderstandings](#common-misunderstandings)

## The Simple Idea

A sandbox is a controlled world for code.

Inside the sandbox, code may run.

But the sandbox decides what the code can access.

```text
code -> sandbox -> limited behavior
```

The code may think it is calling an API.

But the host decides which APIs exist.

That is the point.

## Why Sandboxes Exist

Not all code should be trusted equally.

You may need to run:

- plugin code,
- user scripts,
- tenant logic,
- uploaded logic,
- database filters,
- automation rules,
- browser page scripts,
- serverless functions.

If that code receives full access to the machine, a mistake or attack can become
dangerous.

A sandbox reduces the surface area.

It says:

```text
you can run here, but only with these powers
```

## Sandbox vs Isolation

Sandbox and isolation are related, but not identical.

Isolation separates things.

Sandbox limits what one thing can do.

Example:

```text
isolation: tenant A cannot see tenant B
sandbox: tenant code cannot read arbitrary files
```

You often want both.

Isolation keeps worlds apart.

Sandboxing controls power inside each world.

## Sandbox vs Capability

A capability is a specific power.

A sandbox is the environment that decides which powers exist.

Example:

```text
sandbox: this code runs in a restricted world
capability: this code may read table "posts"
```

Capabilities make sandboxes more explicit.

Instead of giving code a large global environment, the host can give it narrow
abilities.

## What A Sandbox Controls

A sandbox may control:

- file access,
- network access,
- database access,
- environment variables,
- time,
- randomness,
- memory,
- CPU work,
- imports,
- host functions,
- system calls,
- sensitive secrets.

The exact controls depend on the system.

A browser sandbox is different from a VM sandbox.

A database sandbox is different from a plugin sandbox.

But the goal is similar:

```text
run code with limits
```

## Sandbox In Runtime Design

Runtime design is not only about running code.

It is about deciding the world around code.

A sandbox is one way to make that world safer.

The runtime asks:

```text
what does this code see?
what can this code call?
what happens if it loops forever?
what happens if it asks for a secret?
what happens if it touches another tenant?
```

Those questions are sandbox questions.

## A Tiny Example

Unsafe idea:

```text
run user code with full server access
```

Safer idea:

```text
run user code with only db.read("posts")
```

The second version is still powerful.

But the power is narrower.

The code can express useful intent without owning the whole host.

## My Learning Notes

I started caring more about sandboxes while thinking about custom runtimes and
multi-tenant systems.

In Kitwork, tenant logic should not feel like random code with full access to the
host machine.

It should run through a controlled runtime.

That makes sandbox thinking important:

- tenant code lives inside a boundary,
- host capabilities should be explicit,
- client-sent logic should be treated as untrusted,
- secrets should not leak into narrow execution worlds,
- gas or limits can stop runaway work.

The lesson:

```text
a sandbox is not a cage for code
it is a contract about what code is allowed to touch
```

## Common Misunderstandings

**"Sandbox means perfectly safe."**

No. A sandbox reduces risk, but its design and implementation still matter.

**"Sandbox means code cannot do anything useful."**

No. A good sandbox gives code useful powers, but only the powers it needs.

**"Sandbox and isolation are the same thing."**

They are related. Isolation separates. Sandboxing limits.

**"Sandboxing is only for browsers."**

No. Browsers use sandboxes, but servers, databases, plugins, VMs, and runtimes can
use sandboxing too.

## Related Concepts

Previous: [grant](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/grant)

Next: [isolation](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/isolation)

Related: [capability](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/capability), [gas](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/gas), [capsule](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/capsule)
