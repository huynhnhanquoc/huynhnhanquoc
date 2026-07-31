# Hi, I'm Huynh Nhan Quoc 👋

📍 Da Nang, Vietnam | 🚀 Solo founder, building Kitwork | 🧠 AI runtime engineer

⏳ A decade programming | 🐹 5+ years with Go and self-hosted systems | ⚙️ Building runtimes, developer tools, and AI infrastructure in Go

I am building [Kitwork](https://kitwork.io/), a runtime with its own JavaScript subset, bytecode compiler, and stack-based virtual machine written by hand in Go.

**Not V8. Not Node.js. Not a wrapper around either.**

I have been programming for about a decade, including more than five years working with Go, Linux servers, multi-tenant systems, and self-hosted infrastructure.

Today, I am using that foundation to build [seoer.ai](https://seoer.ai/) and explore safer execution for software written by AI agents.

> My work is not only about writing code. It is about reducing helplessness in front of the systems I depend on.

## Start Here

* ⚙️ [Kitwork](https://kitwork.io/): deploy a folder, get an isolated application
* 🔎 [seoer.ai](https://seoer.ai/): an AI SEO engineer designed to work continuously
* 🧩 [KitJS](https://kitjs.org/): plain HTML with a few friendly attributes
* 📚 [Concepts](https://huynhnhanquoc.com/concepts): the ideas I had to understand while writing a runtime
* 📗 [Build in Public Guide](https://buildinpublic.guide/): share unfinished work without turning life into content
* 🏠 [huynhnhanquoc.com](https://huynhnhanquoc.com/): my work, writing, and full story

## What I Am Building

### Kitwork

[Kitwork](https://kitwork.io/) is a runtime-first platform written in Go.

A folder becomes an isolated application with its own routes, secrets, limits, and runtime state. Source code is compiled into bytecode and executed by a virtual machine written specifically for Kitwork.

The platform includes:

* A small JavaScript-like language
* A lexer, parser, and bytecode compiler
* A stack-based virtual machine
* Isolated runtimes for multiple tenants
* Server-side rendering
* Scheduling and background execution
* Capability and resource limits
* A browser runtime without a frontend build step

The goal is simple:

**Keep infrastructure small, understandable, and operable by one person.**

Every active product I operate is also a real Kitwork tenant. When the runtime breaks, I am the first user affected.

### seoer.ai

[seoer.ai](https://seoer.ai/) is an AI SEO engineer designed to behave like someone responsible for an ongoing system, not another chatbot waiting for prompts.

It reviews a website, identifies opportunities, prepares changes for approval, and verifies the result after deployment.

The intended workflow is:

1. Observe the website and its search visibility
2. Identify technical and content opportunities
3. Prepare changes for human approval
4. Apply approved changes
5. Verify the result after deployment

The product has no chat-first interface, on purpose.

### Runtime Infrastructure for AI

When a human writes code, we usually ask:

> What does this code do?

When a model writes code, more questions become important:

> What may it do?
> Who granted that permission?
> What can it access?
> How much can it consume?
> When must it stop?

These are familiar problems in a multi-tenant runtime. I am applying the same primitives to AI-generated programs:

* 🎟️ [capability](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/capability): the right to perform an action
* ✍️ [grant](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/grant): where that permission came from
* 📦 [sandbox](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/sandbox): the boundary around untrusted logic
* 🧱 [isolation](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/isolation): preventing one tenant or agent from reaching another
* 💊 [capsule](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/capsule): portable logic that still executes under defined limits
* ⛽ [gas](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/gas): a measurable cost that prevents unlimited execution

## Selected Work

### KitJS

[KitJS](https://kitjs.org/) is the browser-side runtime for Kitwork.

It adds behavior to plain HTML through a small collection of attributes without requiring a framework, bundler, compilation step, or `eval`.

Approximately 6 KB. No build step.

### Concepts

[Concepts](https://huynhnhanquoc.com/concepts) is a collection of small repositories documenting the ideas I had to understand while writing a runtime. They are organized in the order I needed to learn them.

* 🌍 The ground: [runtime](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/runtime) · [host](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/host) · [native](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/native) · [tenant](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/tenant)
* 🔤 Reading and compiling: [lexer](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/lexer) · [ast](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/ast) · [compiler](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/compiler) · [bytecode](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/bytecode) · [opcode](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/opcode) · [vm](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/vm)
* 🧮 What the language means: [expression](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/expression) · [evaluate](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/evaluate) · [scope](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/scope)
* 🔐 Permission to run: [capability](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/capability) · [grant](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/grant) · [sandbox](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/sandbox) · [isolation](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/isolation)
* 🎯 Where truth lives: [servertruth](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/servertruth) · [zerovm](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/zerovm) · [capsule](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/capsule) · [gas](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/gas)
* 🚦 Answering a request: [router](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/router) · [render](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/render) · [template](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/template) · [prewarm](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/prewarm) · [directive](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/directive)
* 🖱️ The browser side: [behavior](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/behavior) · runtime-js · [hydrate](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/hydrate) · [jit](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/jit)
* 📐 The plan: [blueprint](https://github.com/huynhnhanquoc/huynhnhanquoc/tree/main/concepts/blueprint)

**The order is part of the lesson.**

### Build in Public Guide

[buildinpublic.guide](https://buildinpublic.guide/) is a practical guide to sharing unfinished work and shipping consistently without turning an entire life into content.

Related publishing projects:

* 📰 [theinpublic.com](https://theinpublic.com/): independent editorial for builders
* 🇻🇳 [inpublic.vn](https://inpublic.vn/): Vietnamese products and the people building them

## Everything I Run

### Kitwork Core

* ⚙️ [kitwork.io](https://kitwork.io/): the runtime. A JavaScript subset, a bytecode compiler, and a hand-written Go VM
* 🇻🇳 [kitwork.vn](https://kitwork.vn/): Kitwork for Vietnam
* 📖 [kitwork.org](https://kitwork.org/): the open-source face
* 🧩 [kitjs.org](https://kitjs.org/): the client half. No bundler, no `eval`
* 🗄️ [kitdata.vn](https://kitdata.vn/): data APIs behind one key
* 📦 [kitmodule.com](https://kitmodule.com/): module registry
* 🧱 [kitnext.com](https://kitnext.com/): modular SaaS on the runtime

### Build in Public

* 📗 [buildinpublic.guide](https://buildinpublic.guide/): share unfinished work, 30-day practice included
* 📰 [theinpublic.com](https://theinpublic.com/): independent editorial for builders
* 🇻🇳 [inpublic.vn](https://inpublic.vn/): Vietnamese products going out to the world
* 🔗 [bip.guide](https://bip.guide/) · [bipguide.com](https://bipguide.com/): short links home

### Communities

* 💬 [bytecode.vn](https://bytecode.vn/): compilers, runtimes, and the layers under the frameworks
* 🧑‍💻 [builders.vn](https://builders.vn/): builders and solo founders in Vietnam
* 🤝 [with.vn](https://with.vn/): communities by topic
* 🤖 [withai.vn](https://withai.vn/): AI in Vietnamese
* 🔓 [opens.vn](https://opens.vn/): open source and the people who contribute
* 🌉 [danang.it](https://danang.it/): the tech community where I live

### Kit Products

* 🔎 [seoer.ai](https://seoer.ai/): AI SEO engineer. [seoer.vn](https://seoer.vn/) for Vietnam
* 📤 [kitsend.com](https://kitsend.com/): send a file, fast
* 🔳 [kitqrcode.com](https://kitqrcode.com/): QR codes, made and managed
* 💳 [kitpay.vn](https://kitpay.vn/): payment QR
* ✍️ [kitblog.vn](https://kitblog.vn/): write and publish
* 🛒 [kitbuy.vn](https://kitbuy.vn/): search products, compare prices
* 🔗 [kiturl.com](https://kiturl.com/): short links, tracked properly
* 🎟️ [kitvoucher.com](https://kitvoucher.com/): vouchers and deals

### Not Code

* 🌸 [hoahouse.com](https://hoahouse.com/): the coffee shop I opened when affiliate work finally paid. We sell dreams there
* 🎧 [lofiwithme.com](https://lofiwithme.com/): rain, coffee, soft keys. I write the music too
* 🏙️ [tamky.city](https://tamky.city/): the town I come from

### Registered, Not Built Yet

A domain is not a product, so here is the difference, in the open:

[hnq.me](https://hnq.me/) · [hnq.vn](https://hnq.vn/) · [kitmodule.com](https://kitmodule.com/) · [kitnext.com](https://kitnext.com/) · [bip.guide](https://bip.guide/) · [bipguide.com](https://bipguide.com/) · [builders.vn](https://builders.vn/) · [with.vn](https://with.vn/) · [withai.vn](https://withai.vn/) · [opens.vn](https://opens.vn/) · [danang.it](https://danang.it/) · [seoer.vn](https://seoer.vn/) · [kitsend.com](https://kitsend.com/) · [kitqrcode.com](https://kitqrcode.com/) · [kitpay.vn](https://kitpay.vn/) · [kitblog.vn](https://kitblog.vn/) · [kitbuy.vn](https://kitbuy.vn/) · [kiturl.com](https://kiturl.com/) · [kitvoucher.com](https://kitvoucher.com/) · [tamky.city](https://tamky.city/) · [hoahouse.com](https://hoahouse.com/)

## Past Work

### Samdy

Samdy was a price-comparison platform written in Go.

It reached Vietnam's top 100 e-commerce websites while running on a small server. It later lost most of its search visibility after being de-indexed by Google, and the infrastructure eventually failed under load.

That project taught me that technical performance alone is not enough when a product depends heavily on infrastructure and distribution controlled by someone else.

### Kitstack

Before Kitwork, I spent around five years building and operating a private platform called Kitstack.

It powered customer websites, APIs, routing, templates, affiliate systems, and internal tools.

Kitstack contained too much private business logic to release cleanly. Kitwork is the smaller, more deliberate, and teachable part of what I learned from operating it.

## Proof of Work

* Built and operated a multi-tenant platform in Go
* Wrote a JavaScript subset, bytecode compiler, and virtual machine
* Ran real products as isolated tenants on the runtime
* Built Samdy into a top-100 Vietnamese e-commerce website
* Maintained self-hosted production systems for more than five years
* Published open repositories explaining the concepts behind the runtime

## What I Am Doing Now

* 🔎 Shipping the first useful version of seoer.ai
* ⚙️ Developing Kitwork's compiler, VM, scheduler, and isolation model
* 🧠 Exploring capability-based execution for AI-generated programs
* 🍚 Running products on the infrastructure I write
* 🇻🇳 Publishing technical decisions and unfinished ideas in public

## Writing

📮 [Substack](https://huynhnhanquoc.substack.com/) ·
✍️ [Medium](https://medium.com/@huynhnhanquoc) ·
👩‍💻 [Dev.to](https://dev.to/huynhnhanquoc) ·
🔷 [Hashnode](https://huynhnhanquoc.hashnode.dev/) ·
📖 [Articles](https://huynhnhanquoc.com/articles) ·
🧭 [My Story](https://huynhnhanquoc.com/story)

## In This Repository

* 📚 [concepts/](./concepts): the runtime notes I wrote by hand, in reading order
* 🧠 [thinking/](./thinking): technical decisions I could not find explained clearly elsewhere
* 💡 [ideas/](./ideas): unfinished arguments and experiments; some will turn out wrong
* 🖥️ [command/](./command): server commands and scripts I use in real work
* 📗 [build-in-public/](./build-in-public): the Build in Public framework, templates and checklists
* 🗂️ [reference/](./reference): generated lookup entries, kept separate from the writing

## Connect

[![Website](https://img.shields.io/badge/huynhnhanquoc.com-E8173A?style=for-the-badge&logo=googlechrome&logoColor=white)](https://huynhnhanquoc.com)
[![Kitwork](https://img.shields.io/badge/Kitwork-04040A?style=for-the-badge&logo=go&logoColor=00ADD8)](https://kitwork.io)
[![seoer.ai](https://img.shields.io/badge/seoer.ai-0EA5E9?style=for-the-badge&logoColor=white)](https://seoer.ai)

[![GitHub](https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=github&logoColor=white)](https://github.com/huynhnhanquoc)
[![X](https://img.shields.io/badge/X-000000?style=for-the-badge&logo=x&logoColor=white)](https://x.com/huynhnhanquoc)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white)](https://linkedin.com/in/huynhnhanquoc)
[![Facebook](https://img.shields.io/badge/Facebook-0866FF?style=for-the-badge&logo=facebook&logoColor=white)](https://facebook.com/huynhnhanquoc)
[![Threads](https://img.shields.io/badge/Threads-000000?style=for-the-badge&logo=threads&logoColor=white)](https://threads.net/@huynhnhanquoc)
[![Instagram](https://img.shields.io/badge/Instagram-E4405F?style=for-the-badge&logo=instagram&logoColor=white)](https://instagram.com/huynhnhanquoc)
[![TikTok](https://img.shields.io/badge/TikTok-010101?style=for-the-badge&logo=tiktok&logoColor=white)](https://tiktok.com/@huynhnhanquoc)
[![YouTube](https://img.shields.io/badge/YouTube-FF0000?style=for-the-badge&logo=youtube&logoColor=white)](https://youtube.com/@huynhnhanquoc)

## Support

[![GitHub Sponsors](https://img.shields.io/badge/Sponsors-EA4AAA?style=for-the-badge&logo=githubsponsors&logoColor=white)](https://github.com/sponsors/huynhnhanquoc)
[![Ko-fi](https://img.shields.io/badge/Ko--fi-FF5E5B?style=for-the-badge&logo=kofi&logoColor=white)](https://ko-fi.com/huynhnhanquoc)
[![Buy Me a Coffee](https://img.shields.io/badge/Buy%20Me%20a%20Coffee-FFDD00?style=for-the-badge&logo=buymeacoffee&logoColor=black)](https://buymeacoffee.com/huynhnhanquoc)
[![PayPal](https://img.shields.io/badge/PayPal-003087?style=for-the-badge&logo=paypal&logoColor=white)](https://paypal.me/huynhnhanquoc)

## Philosophy

**Own the ground you build on.**

I build the tools I need, then open the parts worth teaching.

The goal is not to control everything or reject the tools built by others. It is to understand enough to build, operate, repair, and trust the systems that shape my work.
