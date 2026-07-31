# grant

A beginner-friendly guide to grants: explicit permissions given to an identity so
a runtime can decide what code is allowed to do.

A grant answers:

```text
who is allowed to do what?
```

## Table of Contents

- [The Simple Idea](#the-simple-idea)
- [Why Grants Exist](#why-grants-exist)
- [Grant vs Capability](#grant-vs-capability)
- [Identity And Grant](#identity-and-grant)
- [Grant Checking](#grant-checking)
- [Grants And Capsules](#grants-and-capsules)
- [Good Grant Design](#good-grant-design)
- [My Learning Notes](#my-learning-notes)
- [Common Misunderstandings](#common-misunderstandings)
- [Related Concepts](#related-concepts)

## The Simple Idea

A grant is a set of powers assigned to an identity.

Example:

```text
guest: posts:read
editor: posts:read, posts:write
admin: posts:read, posts:write, posts:delete
```

The runtime can compare what code needs against what the identity has.

## Why Grants Exist

Systems need to make authority explicit.

Without grants, code may rely on vague checks:

```text
is admin?
is logged in?
is owner?
```

Those checks can work, but they become hard to reason about.

A grant gives the runtime a clearer shape:

```text
identity has these capabilities
```

## Grant vs Capability

A capability is a specific power.

A grant is a collection of capabilities assigned to an identity.

```text
capability: posts:read
grant: user has posts:read and comments:write
```

Capabilities describe powers.

Grants attach powers to identities.

## Identity And Grant

An identity may be:

- guest,
- user,
- admin,
- tenant owner,
- service account,
- API token,
- session,
- capsule sender.

The grant should come from trusted server-side authority.

The client should not be allowed to invent its own grant.

## Grant Checking

Grant checking asks:

```text
needed capabilities subset of granted capabilities?
```

Example:

```text
capsule needs: posts:read
identity grant: posts:read, comments:write
result: allowed
```

If the capsule needs `posts:delete`, the same grant should reject it.

## Grants And Capsules

Capsules make grants important.

If the client sends logic, the server must not trust it.

The runtime should inspect what the capsule needs and compare it with the
identity's grant.

```text
capsule needs capability
identity has grant
runtime intersects them
```

Only then should execution proceed.

## Good Grant Design

Good grants are:

- explicit,
- narrow,
- easy to audit,
- server-owned,
- tenant-aware,
- easy to revoke,
- simple enough to reason about.

Avoid grants that are too broad by default.

The runtime should give code only the powers it needs.

## My Learning Notes

Kitwork's capsule direction made grants feel necessary.

If logic can cross from client to server, the runtime needs a way to decide what
that logic is allowed to touch.

The lesson:

```text
identity tells who you are
grant tells what powers you have
runtime enforces the boundary
```

## Common Misunderstandings

**"Grant and capability are the same."**

They are related. A capability is a power. A grant gives powers to an identity.

**"The client can send its grant."**

No. The client can send intent. Authority should come from the server.

**"Admin checks are enough forever."**

Simple apps can start there. Larger runtimes benefit from explicit grants.

## Related Concepts

Previous: [capability](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/capability)

Next: [sandbox](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/sandbox)

Related: [capability](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/capability), [capsule](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/capsule), [sandbox](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/sandbox)
