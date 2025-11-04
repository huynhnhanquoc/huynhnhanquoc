---
title: "Why Does Kit JS Exist?"
datePublished: Mon Nov 03 2025 22:37:39 GMT+0000 (Coordinated Universal Time)
cuid: cmhkhwxqv000d02i9dbr91yis
slug: why-does-kit-js-exist
cover: https://cdn.hashnode.com/res/hashnode/image/upload/v1762256322432/4b7439b1-8d0f-4839-aafb-d6fde0879979.jpeg

---


## **Comparison**

If we compare Kit JS with Alpine, Angular, React, Vue, or even HTMX, the truth is — Kit JS wasn’t born to compete.  
Honestly? It’s not as powerful as those tools.

That’s because **Kit JS isn’t trying to be a full-stack framework**.  
Its purpose is to **hydrate** HTML on the client-side, following a philosophy of **fast, light, and simple** — a mindset I “borrowed” from **Golang**, the language I’ve been exploring.

In a way, it’s similar to Web Components.  
I even developed a similar system years ago using the same philosophy — entirely written in JavaScript.

But here’s what sets Kit JS apart:

- It has a **compile system** reminiscent of **AngularJS (Angular 1)**.
- It’s written purely in JavaScript.
- It doesn’t use `eval` or `new Function`.

Many modern frameworks avoid these functions during build time.  
Kit JS? It runs **directly** — no build, no custom config.

Performance-wise, the evaluation might be slightly slower without `eval` or `new Function`.  
But in return, you get **safety, clarity, and independence from build tools**.

## **What Is Kit JS?**

**Kit JS** is a small, lightweight JavaScript framework/library built to **enhance (hydrate)** HTML elements already rendered from the server.

It doesn’t replace frameworks.  
It doesn’t recreate the DOM.  
It doesn’t require a build.

It simply **breathes life into static HTML**, making it interactive and responsive to client-side data.

In my ecosystem, the server (written in Go) handles rendering and routing like a full-stack framework.  
Kit JS focuses **solely on client enhancement**, keeping HTML dynamic without complexity.

## **Why Not** `eval` **or** `new Function`**?**

The answer is simple:  
It’s my **personal philosophy** and vision for the next step in creating (or finding) a tool that fits me.

## **Journey and Philosophy**

I’m a web developer — or someone who touches all things website-related.  
And I always ask slightly odd questions:

> “Why can’t a website run anywhere?”

I’ve tried a lot:

- **Wails**, **WebView** for running web like an app
- **PWA / TWA** to turn web into mobile apps
- Learning how **React Native** or **Flutter** build interfaces

But in the end, what I truly needed was much simpler —  
like writing a **vanilla JS Chrome Extension**.

If you’ve ever done that, you’ll know the feeling: **pure simplicity and elegance**.

It’s like putting a static website online: one `index.html` file, upload, and it works.  
For me, it’s even simpler.

> Just copy a single JS file to the server —  
> like Steve Jobs’ iconic “drag to trash” action.

For a demo, I just copy the file via **SSH in VS Code** — bam, the website comes alive.

## **Why Do This?**

If you’ve ever searched for a tool to build a personal blog, you’ll understand:  
**websites need SEO**.

Nowadays, most JS frameworks handle SEO well.  
But back when **JAMstack** was still unknown, I was transitioning from Angular to Go.

I had one goal:

> “Publish a website as **simply and quickly as possible**.”

Later, I wanted **better management for all my websites**.  
That’s when I realized:

> “Different goals require different tools.”

I’m not saying React or Vue are outdated.  
They just solve different problems.

Just like over **50% of websites still use jQuery**, and many PHP developers still find work easily.

No language is perfect.  
Only the language — or tool — **fit for your purpose**.

## **The Real Purpose**

If you know **HTMX**, you might wonder:

> “Why create this when Vue or React exists?”

The truth:  
**Every tool, library, or framework is created to serve its creator first.**

Kit JS is no different — it serves me first.

## **Target Audience**

Let me reiterate the concept of **hydration**.  
Kit JS is perfect for SSR websites like **PHP (WordPress, Laravel), Liquid, Django, Flask, Golang Templates…**  
All of these already render the DOM.  
Kit JS just makes it **smoother, more fluid, and easier to interact with**.

Need to build a Chrome Extension as quickly as a static website? Kit JS works.  
No bundling.  
No package.  
No NodeJS.

If you, like me, manage multiple small websites/products, you understand:  
**you don’t want to build and deploy each one separately.**  
You just want to copy **one file to the server and go**.

Kit JS is a package I extracted to **share the #buildinpublic story**.  
Everything else in my system is managed via **Go**.

Finally, Kit JS is for anyone who wants to **research, share, and learn**.  
I open-sourced it so others can **read, understand, customize, or clone**.

> “You don’t need to explain. Just let me read your code.”

Whatever language you write in, if I can read your code, I can rewrite it in **Golang** — my favorite language.  
Just like I once read an open-source PHP project and rewrote it in Go — not to learn PHP, but to study the algorithm inside.

That’s what I pursue.

## **And Finally — I Am a Dreamer Developer**

Why “dreamer”?  
Because experiences and circumstances differ.

I’ve coded and deleted.  
I’ve chased deadlines without pay.  
I’ve done things just to **learn**.

I’m not better than anyone.  
I’m just walking a slightly different path.

I share this story for other **builders out there** —  
those quietly creating something:

> “Keep your passion. Keep being a little foolish.”

[**https://github.com/kitmodule/kitjs**](https://github.com/kitmodule/kitjs)

### **NOTES**

- Article posted in 2025 and reposted
- AI-powered translation
- Read the original Vietnamese version here: [https://hnq.vn/blog/tai-sao-kit-js-ton-tai](https://huynhnhanquoc.com/blog/tai-sao-kit-js-ton-tai)

### **More About Me**

- **Blog:** [huynhnhanquoc.com](https://huynhnhanquoc.com)
- **GitHub:** [github.com/huynhnhanquoc](https://github.com/huynhnhanquoc)
- **Open Source:** [github.com/kitmodule](https://github.com/kitmodule)
- **Buy me a Coffee:** [buymeacoffee.com/huynhnhanquoc](https://buymeacoffee.com/huynhnhanquoc)
- **Keep me Dreaming:** [ko-fi.com/huynhnhanquoc](https://ko-fi.com/huynhnhanquoc)

Thanks for reading Huỳnh Nhân Quốc’s article! Subscribe for free to receive new posts and support my work.
