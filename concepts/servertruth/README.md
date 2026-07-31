# servertruth

A beginner-friendly guide to understanding server truth: the idea that the server
should own authoritative data, while the client presents and interacts with it.

`servertruth` is a one-word name for a simple design instinct:

```text
the server owns truth
the client owns interaction
```

## Table of Contents

- [The Simple Idea](#the-simple-idea)
- [Why Server Truth Exists](#why-server-truth-exists)
- [Truth vs Projection](#truth-vs-projection)
- [Server Truth In Web Apps](#server-truth-in-web-apps)
- [Server Truth And Hydration](#server-truth-and-hydration)
- [Server Truth And SEO](#server-truth-and-seo)
- [When Client State Is Still Useful](#when-client-state-is-still-useful)
- [My Learning Notes](#my-learning-notes)
- [Common Misunderstandings](#common-misunderstandings)

## The Simple Idea

Server truth means the server is the authoritative source for important data and
rules.

The client can show data.

The client can collect input.

The client can hold temporary state.

But the server decides what is real.

```text
server: source of truth
client: projection and interaction layer
```

## Why Server Truth Exists

Clients are powerful, but they are not fully trustworthy.

A browser can be modified.

Local state can be stale.

Network requests can race.

User input can be wrong.

Permissions must be checked somewhere authoritative.

Server truth keeps important decisions in a place the application controls.

Examples:

- who can read this data,
- who can update this record,
- what price is correct,
- what content is published,
- what tenant owns this request,
- what data bots should index.

## Truth vs Projection

Truth is the canonical state.

Projection is a view of that state.

Example:

```text
database row: truth
HTML page: projection
client state: temporary interaction
```

A projection can be useful.

It can be fast.

It can be optimistic.

But it should not silently become the authority.

## Server Truth In Web Apps

In web apps, server truth often means:

- routes are resolved on the server,
- permissions are checked on the server,
- first HTML can be rendered on the server,
- important data comes from server-controlled sources,
- mutations are validated on the server,
- client state is synchronized back to the server.

This does not mean every interaction needs a page reload.

It means the client should not become the final judge of important facts.

## Server Truth And Hydration

Hydration makes HTML interactive.

But hydration does not have to move truth to the client.

A page can be:

```text
server-rendered for truth
client-hydrated for behavior
```

The client runtime can handle:

- toggles,
- tabs,
- validation hints,
- optimistic UI,
- small state changes,
- live updates.

The server can still own:

- permissions,
- durable data,
- canonical results,
- tenant boundaries,
- SEO-visible content.

## Server Truth And SEO

For public pages, server truth matters because crawlers usually care about the
HTML they receive.

If important content appears only after client-side logic, it may be harder to
index, inspect, cache, or share.

Server-rendered truth gives the first response real content.

Then hydration can add interaction.

The clean split:

```text
server sends meaningful HTML
client adds behavior
```

## When Client State Is Still Useful

Server truth does not mean client state is bad.

Client state is useful for:

- form drafts,
- open panels,
- selected tabs,
- local filters,
- pending input,
- optimistic feedback,
- temporary UI state.

The question is:

```text
is this state temporary interaction, or authoritative truth?
```

That distinction keeps the architecture honest.

## My Learning Notes

Kitwork pushed me toward a server-truth mindset.

The important split is:

- SSR should produce meaningful first-paint content,
- client runtime should hydrate behavior,
- tenant boundaries should be checked by the host,
- live user-driven logic should still return to server authority,
- static assets should not pretend to be runtime truth.

The lesson:

```text
the client can feel alive
without becoming the source of truth
```

That idea connects SSR, hydration, capsules, tenants, and runtime boundaries.

## Common Misunderstandings

**"Server truth means no client interactivity."**

No. It means the server owns important facts. The client can still be highly
interactive.

**"Server truth means slow apps."**

Not necessarily. Good caching, hydration, and focused client state can keep apps
fast.

**"Everything must live on the server."**

No. Temporary UI state belongs on the client. Authority belongs on the server.

**"SEO is only marketing."**

No. SEO also reflects whether public content is available in the first meaningful
HTML response.

## Related Concepts

Previous: [isolation](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/isolation)

Next: [zerovm](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/zerovm)

Related: [render](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/render), [hydrate](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/hydrate), [template](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/template)
