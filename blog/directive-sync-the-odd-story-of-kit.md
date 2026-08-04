---
title: "Directive Sync – The “Odd” Story of Kit JS"
subtitle: "In the world of JavaScript, we’re used to concepts like bind, model, class, or style. They all revolve around one philosophy: data flows down, view reacts."
slug: "directive-sync-the-odd-story-of-kit"
date: "2025-11-03T22:39:36.000Z"
canonical_url: "https://huynhnhanquoc.substack.com/p/directive-sync-the-odd-story-of-kit"
cover_image: "https://substack-post-media.s3.amazonaws.com/public/images/aeccade4-d0fc-4942-b50f-69a685de847e_1560x877.jpeg"
description: "In the world of JavaScript, we’re used to concepts like bind, model, class, or style. They all revolve around one philosophy: data flows down, view reacts."
---

## The Idea Emerges

When I started developing **Kit JS**, I ran into a problem that most JS frameworks tend to ignore.

My website was **SSR-rendered** (server-side rendering). Everything was already in the HTML; SEO was ready. But when I tried to pass state or scope from the client back into these rendered elements, the entire component would **re-render**.

And I realized: I didn’t want to redraw the world. I just wanted to **sync the data**.

From that realization, **Directive Sync** was born.

## Sync – A Different Rhythm of Data

If a model is the way a framework pushes state to the view, **sync is the way the view talks back to the state** — a closed loop without destroying or rebuilding the DOM.

In other words, sync doesn’t “recreate,” it **listens and records**.

Directive Sync wasn’t designed to oppose the model; it’s a **natural evolution** in the SSR context.
It allows server-rendered pages to behave like lightweight SPAs, without sacrificing **SEO, speed, or the static nature of the page**.

## Why Sync is Needed

In most frameworks, if you want **two-way binding**, the framework must control the entire DOM.

This means that when HTML is rendered from the server, the framework must **re-render on the client** to establish bindings. The result:

- 

SEO bots see the raw HTML, not the actual state.

- 

Users see a “flash” during re-render.

- 

We end up running client and server as two separate worlds.

**Sync solves this** by injecting values from the already-rendered DOM back into the scope.
No re-render, no DOM diffing — just reading the **real data from the server** and keeping it consistent.

## The Philosophy Behind Kit JS and Directive Sync

Kit JS wasn’t created to replace other frameworks.
It emerged from a very specific need: to **bridge the static and dynamic worlds**, SSR and reactive UI.

It’s not a “new framework idea” — it’s a **counterflow mindset**:

> 

If the data is already there, why redraw it?

Sync embodies that philosophy — **simple, practical, and respectful of what already exists**.
It doesn’t claim DOM ownership or force you to “rerun” your app. It quietly synchronizes everything so that it continues to work as it should.

## A Small Piece of a Larger Journey

For me, **Kit JS** isn’t a framework race.
It’s a personal journey to **rediscover minimalism in web development**.

Directive Sync is just one piece — a slightly “odd” piece because it doesn’t follow pure reactivity. Instead, it blends **static rendering with dynamic data life**.

And perhaps, in that “oddness,” we find another path — a place where the web is **fast, real, and still soulful**.

**[https://github.com/kitwork/kitjs](https://github.com/kitmodule/kitjs)**

---

**NOTES**

- 

Article posted in 2025 and reposted

- 

AI-powered translation

- 

Read the original Vietnamese version here: [https://hnq.vn/blog/directive-sync-cau-chuyen-di-cua-kit-js](https://huynhnhanquoc.com/blog/directive-sync-cau-chuyen-di-cua-kit-js)

**More about me:**

- 

Blog: [huynhnhanquoc.com](https://huynhnhanquoc.com)

- 

GitHub: [github.com/huynhnhanquoc](https://github.com/huynhnhanquoc)

Thanks for reading Huỳnh Nhân Quốc Substack! Subscribe for free to receive new posts and support my work.
