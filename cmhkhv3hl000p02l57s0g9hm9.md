---
title: "JavaScript and the Dream of Controlling Reactivity"
datePublished: Mon Nov 03 2025 08:26:56 GMT+0000 (Coordinated Universal Time)
cuid: cmhkhv3hl000p02l57s0g9hm9
slug: javascript-and-the-dream-of-controlling
cover: https://cdn.hashnode.com/res/hashnode/image/upload/v1762256236530/ed895ff3-25c0-411e-af8c-cff1fd1142f7.jpeg

---


## 🌱 The Journey Begins

About five years ago, I shared a deeply personal approach to building web components — one rooted in **Web Components** and **custom elements**.

My idea was simple:  
Define a new element, give it its own behavior, and interact directly with it — without re-rendering the entire DOM.

If you’ve ever opened **YouTube → View Source**, you’ll see how they structure their custom elements and attach isolated logic to each.  
That’s what inspired me when I started.

So I built a tiny “engine” that allowed interaction with each element independently — minimizing DOM reflows, maximizing control.  
The goal was clear: **maximum control, minimal interference.**

## 🤔 When Doubt Creeps In

At first, it all seemed to work perfectly.  
But as projects grew, I faced an inevitable truth:

Direct DOM manipulation — while powerful — isn’t always scalable or optimal.

When I needed to extend or reuse components, I found myself repeating a lot of manual steps.  
That made me question:

> “Is there a way to keep my control philosophy, but also benefit from what modern JS frameworks offer?”

## 🔁 Rewriting with a New Philosophy

I started experimenting again — combining my own understanding with the strengths of existing frameworks.

When I learned about **Virtual DOM**, I saw how it solved certain problems — but it wasn’t what I truly needed.  
I wanted something simpler.

And then a new philosophy emerged:

> **Write less. Do more.**

My old process was:

1. Mark the DOM.
2. Use JS to find and bind elements.
3. Write interactive logic directly on them.

It gave me 100% behavioral control — but at a high cost in time and maintainability.

## 🧩 The Solutions I Studied

I explored several libraries with similar philosophies:

- **Alpine.js** – lightweight, easy to integrate, HTML-like syntax.
- **Web Components** – standards-based, framework-free, but verbose.
- **HTMX** – minimal JavaScript, great for server-driven UI.
- **AngularJS 1.x** – early reactive pioneer, but too heavy for small features.
- **Petite-vue** – a compact version of Vue, lovely but still limited.

Each had its strengths, yet I still longed for something smaller, tighter, more controllable.

## ⚡ Discovering Proxy and My First Reactive Engine

A turning point came last year, while developing a **data table component** for a client.  
To optimize data updates, I discovered **JavaScript Proxy** — a surprisingly elegant tool for creating reactive data without relying on a complex virtual DOM.

Proxy felt smooth.  
But then, the same old pain returned: every new feature meant rewriting parts of the engine from scratch.  
The dev loop became: **build → fix → rewrite → repeat.**

So I decided to go deeper — to **build my first true reactive engine**, designed around how I naturally structure components.

## 🚫 Why I Didn’t Choose Mainstream Frameworks

I didn’t go with **React**, **Angular**, or **Vue (full)** because:

- They were too heavy for my needs.
- Not optimized for **SSR** (Server-Side Rendering) in my workflow.
- They often required rewriting backend logic — I use **Golang**, and I didn’t want that friction.

**jQuery** still survives today because it solves practical problems quickly.  
But I needed something even **lighter**, **modern**, and **controllable**.

## 🧠 The Development Philosophy: Micro Component

I imagine **Micro Components** like **Microservices**:

- Each component does exactly one thing.
- It can run independently.
- It can hydrate anywhere, anytime.

This lets me embed **mini JavaScript apps** into mobile or web environments — without affecting other modules.  
Since SEO is already handled by the server, I can focus purely on **enhancing user experience** on the client.

## ⚙️ Example: How It Works

```
<div
  data-kitmodule-component=”counter”
  data-counter-state=”count: 0”
>
  <input data-counter-model=”count” />
  <button data-counter-event=”click:count++”>+</button>
  <span data-counter-bind=”count”></span>
</div>
```

**Explanation:**

- `data-kitmodule-component` — identifies the component.
- `data-counter-state` — declares the initial state.
- `data-counter-model` — two-way data binding with input.
- `data-counter-event` — attaches event handlers directly via attributes.
- `data-counter-bind` — updates the DOM when the state changes.

The result:  
A **lightweight, framework-free**, yet **fully reactive component**.

## 🌸 What I Learned

This journey taught me that **simplicity is often the ultimate sophistication**.  
Reactive doesn’t have to mean Virtual DOM or complex syntax.

Sometimes, all you need is:

- a small engine,
- readable, HTML-based syntax,
- and a sprinkle of smart JavaScript.

In the next part, I’ll share the detailed architecture of this **reactive engine** —  
how it parses expressions, binds events, and syncs state with the DOM *without* using `eval` or `Function` constructors — ensuring **CSP safety** and **XSS protection**.

**open: [https://github.com/kitmodule/kitjs](https://github.com/kitmodule/kitjs)**

### 📝 NOTES

- Originally written in **2025**, reposted with updates.
- **AI-powered translation** from Vietnamese.
- Read the original Vietnamese version here: \[LINK\_TO\_ORIGINAL]

### ☕ More about me

- **Blog:** [huynhnhanquoc.com](https://huynhnhanquoc.com)
- **GitHub:** [github.com/huynhnhanquoc](https://github.com/huynhnhanquoc)
- **Open Source:** [github.com/kitmodule](https://github.com/kitmodule)
- **Buy me a Coffee:** [buymeacoffee.com/huynhnhanquoc](https://buymeacoffee.com/huynhnhanquoc)
- **Keep me Dreaming:** [ko-fi.com/huynhnhanquoc](https://ko-fi.com/huynhnhanquoc)

Thanks for reading Huỳnh Nhân Quốc’s article! Subscribe for free to receive new posts and support my work.
