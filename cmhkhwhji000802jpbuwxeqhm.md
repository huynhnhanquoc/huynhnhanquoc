---
title: "The Return of Server-Side Rendering"
datePublished: Sat Oct 25 2025 11:05:48 GMT+0000 (Coordinated Universal Time)
cuid: cmhkhwhji000802jpbuwxeqhm
slug: the-return-of-server-side-rendering
cover: https://cdn.hashnode.com/res/hashnode/image/upload/v1762256301486/87e3e7e3-3cf2-4d25-9d66-5dda63ec86b4.jpeg

---


## ☕ A Little Context

Lately, I’ve seen a lot of conversations about **YouTube ads**, tracking systems, and the mysterious role of **server-side rendering** on YouTube’s backend.

This isn’t another technical doc or SEO article.  
This is my story — and what I’ve learned about **Server-Side Rendering (SSR)** and **Client-Side Rendering (CSR)** through my own experiments.

## ⚙️ Client-Side Rendering (CSR)

**Client-Side Rendering** means that your **browser (the client)** downloads all necessary JavaScript files and executes them locally to render the page.

Everything — from fetching data via APIs to building the DOM — happens inside your machine.

This became incredibly popular over the past decade, thanks to the rise of frameworks like **Angular**, **React**, and **Vue**.

Later, “meta-frameworks” such as **Next.js** and **Nuxt.js** evolved the idea with **pre-rendering** — blending SSR and CSR to balance performance and dynamic interactivity.

Pre-rendering is a hybrid approach: part static, part dynamic, but still built on the foundation of JavaScript frameworks.

## 💡 Server-Side Rendering (SSR)

**Server-Side Rendering**, on the other hand, pushes rendering to the **server** — your hosting or cloud infrastructure.

The heavier the server, the faster it can pre-generate and send HTML to clients.  
But if your traffic spikes and your server can’t keep up, bottlenecks happen.

Classic examples:

- **PHP** (WordPress, Laravel)
- **Java** (Spring Boot)
- **C#** (ASP.NET)
- **Python** (Django, Flask)
- **Ruby on Rails**

These frameworks have powered the web for years. SSR isn’t new — it’s the foundation of everything modern frameworks are trying to reimagine.

## ⚖️ CSR vs. SSR — My Take

Let’s be real: both have pros and cons.

### CSR

- **Pros:** Lightens the server load.
- **Cons:** Depends heavily on the client’s hardware and network.

### SSR

- **Pros:** Great for SEO and security.
- **Cons:** Heavy on the server and can become a performance bottleneck if scaled poorly.

But for me, it’s not about which is *better*.  
It’s about **what you’re trying to achieve**.

## 🔍 SEO: The Invisible War

If you build websites, you already know this:

> A site without visitors is just another lonely file on the internet.

**SEO (Search Engine Optimization)** is what keeps your project alive.

SSR handles SEO beautifully because crawlers can instantly index pre-rendered HTML.  
CSR often requires pre-rendering tricks or workarounds for that.

Sure, **Pre-rendering** frameworks like Next.js are powerful —  
but real SEO success depends on **strategy** and **long-term system thinking**.

When you deeply understand your rendering stack, you can do clever optimizations only possible on the server level.  
So yes — *SSR wins in SEO, but only if you know how to optimize it.*

## 🧠 Popularity and Trends

In the last ten years, **JavaScript frameworks** have taken over the web.  
The endless *React vs Vue vs Angular* debates still go on.

Meanwhile, **WordPress** quietly dominates the internet — proof that “old tech” can still be incredibly effective.

But remember: **framework ≠ language**.

If you need a quick blog, landing page, or store — go ahead, use WordPress.  
If you’re building a system meant to grow, you’ll want something more structured, like **Laravel** or a modern JS stack.

And yes — **Facebook still runs on PHP**.  
No matter how much they innovate, their *core language* remains.

So the future?  
**Hybrid JavaScript frameworks** powered by **Server-Side Rendering**.

## 🔐 Security Matters

Let’s be honest:

> “When you give away your code, you give away part of your security.”

With **Server-Side Rendering**, sensitive logic stays hidden on the server.  
Only processed data is sent to the client.

That alone gives SSR a clear advantage in **security**.

But in the end, it all depends on your **developer mindset** — and how you connect the front-end and back-end.

> “The more popular something becomes, the harder it is to secure.”

## 🏢 Companies Using Each

This isn’t a deep audit — just a few quick observations:

### Client-Side Rendering

- **Tiki** (Vietnam) — reportedly uses **Next.js**.
- **Shopee** — mostly CSR-based, with some hybrid features.

### Server-Side Rendering

- **Thế Giới Di Động** and **Điện Máy Xanh** — both rely heavily on SSR.  
  You can see how well it works for their SEO and performance.

## 🌐 The Future: Hybrids and AI

CSR compensates with **pre-rendering** to overcome SEO limits.  
SSR evolves by offloading some logic to the client to reduce server stress.

But as **AI systems** grow stronger, CSR faces new challenges.  
AI can decompile, analyze, and exploit client-side logic faster than ever before.

At some point, the balance of **client vs. server** may redefine itself — and we’ll all have to adapt.

## 🧩 My Own Stack

Personally, I use **Server-Side Rendering**,  
but I mix in **client-side components** (vanilla JS) for fast, interactive tasks.

Every component is modular, built from scratch, and rendered securely on the server —  
especially for sensitive keys and operations.

## 🔭 Where My Ideas Come From

I started with **Angular**, then explored **JAMstack**.

After years of trial and error, I built my own mini-architecture — combining **Web Components**, **custom JS**, and my own server rendering system.

It’s not a framework.  
It’s a mindset:

> *Control the client, control the server, control the API.*

## 🧠 Building for Technological Independence

Hi, I’m **Huỳnh Nhân Quốc** —  
a dreamer chasing *technological independence*.

I’m building my own modular ecosystem — one piece at a time.

### Modules I Build

- Blog posts
- Job boards
- Authentication
- URL shorteners
- QR payment systems

Each module can be deployed, rented, and reused.  
My long-term vision?

> A cloud-based **SaaS ecosystem** — “rentable tech modules.”

## ☁️ SaaS and Headless API

**SaaS (Software as a Service)** means offering your product as a service —  
like Google Workspace, Adobe Creative Cloud, or Notion.

You pay for what you use, and everything lives online.

**Headless APIs** take it further.  
Developers can build only the front-end and pay based on **API usage** —  
reducing initial costs for startups.

A perfect modern example?  
**ChatGPT’s API pricing** — pay per request token.

This is the future: **Headless SaaS ecosystems** where every service is modular, rentable, and interconnected.

## ✍️ Final Thoughts

Thank you for reading about **Client-Side Rendering vs Server-Side Rendering** —  
and my small dream of building my own path between them.

This article also marks a personal milestone —  
the birth of my first **Blog Module**.

I’m still learning, still building, and still dreaming.  
If you share this mindset — let’s build something independent together.

* * *

### NOTES

- Article originally posted in **2023** and reposted
- **AI-powered translation**  
  Read the original Vietnamese version here: [https://hnq.vn/blog/su-tro-lai-cua-server-side-rendering](https://huynhnhanquoc.com/blog/su-tro-lai-cua-server-side-rendering)

* * *

### More about me

- **Blog:** [huynhnhanquoc.com](https://huynhnhanquoc.com)
- **GitHub:** [github.com/huynhnhanquoc](https://github.com/huynhnhanquoc)
- **Open Source:** [github.com/kitmodule](https://github.com/kitmodule)
- **Buy me a Coffee**: [buymeacoffee.com/huynhnhanquoc](https://buymeacoffee.com/huynhnhanquoc)
- **Keep me Dreaming**: [ko-fi.com/huynhnhanquoc](https://ko-fi.com/huynhnhanquoc)
  
  Thanks for reading Huỳnh Nhân Quốc’s article! Subscribe for free to receive new posts and support my work.
