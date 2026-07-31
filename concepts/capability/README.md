# capability

A beginner-friendly guide to understanding capabilities in software: what they
are, why they matter, and how they help control what code is allowed to do.

A capability is a specific power.

If code has the capability, it can do the thing.

If it does not, it cannot.

## Table of Contents

- [The Simple Idea](#the-simple-idea)
- [Why Capabilities Exist](#why-capabilities-exist)
- [Permission vs Capability](#permission-vs-capability)
- [Capability As A Handle](#capability-as-a-handle)
- [Capabilities In Runtimes](#capabilities-in-runtimes)
- [Why This Matters For Untrusted Code](#why-this-matters-for-untrusted-code)
- [My Learning Notes](#my-learning-notes)
- [Common Misunderstandings](#common-misunderstandings)

## The Simple Idea

A capability is permission plus access.

It is not just:

```text
you are allowed
```

It is more like:

```text
here is the specific tool you may use
```

Example:

```text
read this file
send this HTTP request
query this database
render this template
write this response
```

The code can only do what the host gives it the ability to do.

## Why Capabilities Exist

Software often runs code that should not have unlimited power.

Examples:

- plugins,
- scripts,
- tenants,
- user-defined logic,
- serverless functions,
- workflow steps,
- browser extensions,
- sandboxed modules.

If that code can access everything, the system is fragile.

Capabilities make access explicit.

## Permission vs Capability

Permission is often a rule.

Capability is often the actual handle.

Permission:

```text
this script is allowed to read images
```

Capability:

```text
this script receives an image reader object
```

The difference matters.

If code never receives the handle, it cannot use the power.

## Capability As A Handle

Think of a capability like a key.

If you have the key, you can open the door.

If you do not have the key, knowing the door exists is not enough.

In software:

```text
no database handle
no database query
```

```text
no network function
no network request
```

The host controls which keys are handed out.

## Capabilities In Runtimes

A runtime can expose capabilities through APIs.

For example:

- `env` for environment values,
- `db` for database access,
- `http` for outbound requests,
- `render` for templates,
- `response` for output,
- `file` for controlled file access.

The important part is that these are not ambient powers.

They are provided by the host.

## Why This Matters For Untrusted Code

If a runtime executes code from many tenants, plugins, or users, capability design
becomes critical.

The question is not only:

```text
can this code run?
```

The question is:

```text
what can this code reach while it runs?
```

A capability model helps keep the answer small and explicit.

## My Learning Notes

I used to think about runtime mostly as execution.

Capabilities changed that.

When code runs inside a host, the host must decide what powers are visible.

In Kitwork, this idea appears when tenant logic receives controlled APIs instead
of direct access to the whole machine.

That changed the mental model:

```text
runtime is not only where code runs
runtime is where authority is handed out
```

The lesson:

```text
capability is power made explicit
```

## Common Misunderstandings

**"Capability means role."**

Not exactly. A role may decide what capabilities are granted, but a capability is
the specific power or handle.

**"If code is trusted, capabilities do not matter."**

They still help architecture. Explicit access is easier to reason about than
ambient access.

**"Capabilities are only for security systems."**

Security is one use. Capabilities also make systems clearer and easier to test.

## Related Concepts

Previous: [scope](https://github.com/huynhnhanquoc/scope)

Next: [grant](https://github.com/huynhnhanquoc/grant)

Related: [sandbox](https://github.com/huynhnhanquoc/sandbox), [capsule](https://github.com/huynhnhanquoc/capsule), [runtime](https://github.com/huynhnhanquoc/runtime)

