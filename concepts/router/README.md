# router

A beginner-friendly guide to routers: the part of a web runtime that decides
which code or page should handle a request.

A router answers:

```text
this request came in
who should handle it?
```

## Table of Contents

- [The Simple Idea](#the-simple-idea)
- [Why Routers Exist](#why-routers-exist)
- [Route Patterns](#route-patterns)
- [Router As Runtime Boundary](#router-as-runtime-boundary)
- [Static Routes And Dynamic Routes](#static-routes-and-dynamic-routes)
- [File-Based Routing](#file-based-routing)
- [Zero-VM Routing](#zero-vm-routing)
- [My Learning Notes](#my-learning-notes)
- [Common Misunderstandings](#common-misunderstandings)
- [Related Concepts](#related-concepts)

## The Simple Idea

A router maps requests to handlers or pages.

```text
GET /about -> about page
GET /users/42 -> user handler
POST /login -> login handler
```

The router is the traffic director of a web runtime.

## Why Routers Exist

Without a router, every request would arrive as raw path and method data.

The application would need to decide everything manually.

A router gives structure:

- method,
- path,
- parameters,
- handler,
- middleware,
- error handling,
- response behavior.

It turns request matching into a clear surface.

## Route Patterns

Routes can be exact:

```text
/about
```

Dynamic:

```text
/users/:id
```

Optional:

```text
/docs/:slug?
```

Wildcard:

```text
/*
```

Patterns let one route handle many real URLs.

## Router As Runtime Boundary

A router is more than a map.

It decides when code enters the runtime.

For a request, the router may decide:

- run a handler,
- render a page,
- serve a file,
- return a cached response,
- reject the request,
- call a not-found route.

That makes routing part of runtime authority.

## Static Routes And Dynamic Routes

Some routes need logic.

Some routes only need a page.

Dynamic route:

```text
request -> VM handler -> response
```

Static page route:

```text
request -> render page -> response
```

The router can choose the cheaper path when no logic is needed.

## File-Based Routing

File-based routing maps paths to files.

Example:

```text
app/about/page.html -> /about
app/docs/runtime/page.html -> /docs/runtime
```

This can make content-heavy sites simple.

Add a page file.

The route appears.

## Zero-VM Routing

Some routes should not enter a VM.

Examples:

- pure static pages,
- static assets,
- cached snapshots,
- text files like `robots.txt`.

The router can serve these directly.

That keeps the VM for requests that need logic.

## My Learning Notes

Kitwork made routing feel like a runtime decision, not just a framework feature.

A route can:

- call tenant code,
- render a template,
- serve a file,
- use a cache,
- take a Zero-VM path,
- fall through to not-found.

The lesson:

```text
a router decides not only where a request goes
but how much runtime it needs
```

## Common Misunderstandings

**"Router is just URL matching."**

URL matching is the start. Lifecycle, guards, rendering, caching, and error
handling often live around it.

**"Every route must run application code."**

No. Some routes can be rendered or served without VM execution.

**"File-based routing and explicit routing cannot coexist."**

They can. Explicit routes can handle data-heavy pages while file routes handle
pure pages.

## Related Concepts

Previous: [native](https://github.com/huynhnhanquoc/native)

Next: [render](https://github.com/huynhnhanquoc/render)

Related: [runtime](https://github.com/huynhnhanquoc/runtime), [zerovm](https://github.com/huynhnhanquoc/zerovm), [servertruth](https://github.com/huynhnhanquoc/servertruth)

