# tenant

A beginner-friendly guide to understanding tenants in software systems: what they
are, why they matter, and how they change runtime design.

A tenant is an isolated user, customer, app, site, or organization inside a shared
system.

The word often appears in multi-tenant software.

## Table of Contents

- [The Simple Idea](#the-simple-idea)
- [Why Tenants Exist](#why-tenants-exist)
- [Single Tenant vs Multi Tenant](#single-tenant-vs-multi-tenant)
- [What Must Be Isolated](#what-must-be-isolated)
- [Tenant As A Boundary](#tenant-as-a-boundary)
- [Tenant In Web Systems](#tenant-in-web-systems)
- [My Learning Notes](#my-learning-notes)
- [Common Misunderstandings](#common-misunderstandings)

## The Simple Idea

A tenant is one independent space inside a shared system.

Example:

```text
one platform
many tenants
each tenant has its own data, config, and behavior
```

The system is shared.

The tenant experience should feel separate.

## Why Tenants Exist

Multi-tenant systems let many customers or sites run on one platform.

This can reduce cost and simplify operations.

But it creates a hard design problem:

```text
how do many tenants share infrastructure without leaking into each other?
```

That question is the heart of tenancy.

## Single Tenant vs Multi Tenant

Single tenant:

```text
one customer
one isolated deployment
```

Multi tenant:

```text
many customers
one shared system
strong boundaries
```

Multi-tenancy is powerful, but boundaries become more important.

## What Must Be Isolated

A tenant may need isolated:

- data,
- configuration,
- environment variables,
- domain,
- files,
- routes,
- cache,
- permissions,
- runtime state,
- logs,
- limits,
- secrets.

If one tenant can accidentally affect another tenant, the boundary is weak.

## Tenant As A Boundary

A tenant is not only a folder or database row.

It is a boundary.

The system must know:

- which tenant owns this request,
- which files belong to this tenant,
- which config applies,
- which code may run,
- which cache may be used,
- which data may be read,
- which secrets are visible.

Tenancy is a question of identity and separation.

## Tenant In Web Systems

In a web system, a tenant may be selected by:

- domain,
- subdomain,
- path prefix,
- API key,
- account,
- organization ID.

After the tenant is known, the system can choose the correct runtime, data,
routes, templates, and assets.

That is why tenant resolution often happens early in request handling.

## My Learning Notes

I used to think a tenant was just a customer account.

Building with Kitwork made it feel more concrete.

A tenant can be a site folder.

It can have its own domain, env, routes, assets, and runtime behavior.

That changed the idea for me:

```text
tenant is not only ownership
tenant is execution context
```

Once a request belongs to a tenant, the rest of the system should respect that
boundary.

## Common Misunderstandings

**"Tenant means user."**

Not always. A tenant can be an organization, site, app, customer, workspace, or
domain.

**"Multi-tenant means shared database only."**

No. Data is one part. Runtime, config, cache, files, and permissions matter too.

**"Tenancy is just routing."**

Routing finds the tenant. The harder part is keeping the boundary correct after
that.

## Related Concepts

Previous: [native](https://github.com/huynhnhanquoc/native)

Next: [scope](https://github.com/huynhnhanquoc/scope)

Related: [runtime](https://github.com/huynhnhanquoc/runtime), [isolation](https://github.com/huynhnhanquoc/isolation), [capability](https://github.com/huynhnhanquoc/capability)

