---
title: "Exploring the World of Distributed Protocols – A Self-Taught Journey"
datePublished: Sun Oct 26 2025 12:22:55 GMT+0000 (Coordinated Universal Time)
cuid: cmhkhurtt000402jp02thgwwx
slug: exploring-the-world-of-distributed
cover: https://cdn.hashnode.com/res/hashnode/image/upload/v1762256221573/01670991-83c0-4903-ba91-ccd0639abbac.jpeg

---


### Peer-to-Peer and the Spark from WebRTC

At first, I was skeptical. A system without a central server? It sounded too idealistic, even a bit naïve.

But the more I experimented, the more I realized: **WebRTC**, built on **UDP**, is one of the most elegant solutions for fast, low-latency data transmission — whether for **file sharing** or **live video calls**.

With WebRTC, every device becomes both sender and receiver, forming direct connections without going through a server. This doesn’t just make things faster — it **lightens the server’s load** dramatically.

Then I discovered something even more inspiring: **Mesh Networks**. In this model, devices interconnect directly and share data with one another, creating a decentralized web of communication. It’s an architecture especially suited for heavy tasks like **livestreaming** or **large video file sharing** — and it completely reshaped how I thought about app architecture.

The concept of using a **Signal Server** only to help peers discover each other — then letting them handle the rest — changed my mindset. I started to see a world where data didn’t have to live on central servers. Instead, **users could own their connections**, and apps could thrive without a single point of failure.

* * *

### A Shift in Perspective: Building for Distribution

For years, I had lived in the comfort of the **traditional client-server model** — one server handling all the traffic, all the logic, all the weight. But once I began experimenting with **P2P systems**, I saw a completely different world.

Here, every node was both client and server. Each device played its part in keeping the system alive.

Scaling from two devices to an entire network, though, wasn’t simple. How do you make sure data flows evenly? How do you handle interruptions and ensure synchronization when there’s no central authority?

These were the kinds of questions that kept me up at night.

And slowly, I learned: **distributed systems aren’t just about speed** — they’re about **resilience**, **autonomy**, and **trust**. Without a central controller, every node has to be self-aware, able to recover, and willing to cooperate. That’s a beautiful kind of complexity — one that demands both humility and patience to build right.

* * *

### The Beauty of Network Protocols and the Power of Go

While exploring distributed communication, I ventured beyond WebRTC — into the world of **gRPC**, **QUIC**, and other emerging networking protocols.

Each one opened new doors. Some optimized **bandwidth**, some focused on **secure communication**, others on **low latency**. But together, they painted a bigger picture of what’s possible: distributed systems that are **faster**, **smarter**, and **less centralized** than ever before.

That’s also when I fell in love with **Go (Golang)**.

Go was built for concurrency, for systems that need to talk — constantly, efficiently, and cleanly. Through **channels**, I could listen and broadcast messages between nodes effortlessly. It felt almost poetic — the way Go handled parallelism made the complexity of distributed computing… elegant.

Go became my favorite companion for building **lightweight but powerful distributed architectures** — systems that scale easily, maintain stability, and still feel beautifully simple at their core.

* * *

### Why Distributed Systems Matter

Through this long, curious journey, I learned that distributed systems aren’t just about efficiency. They’re about **freedom**.

Freedom from single points of failure.  
Freedom from overreliance on centralized storage.  
Freedom to create apps that live anywhere — or everywhere.

By distributing the workload, systems become **more fault-tolerant** and **resilient**. Data isn’t held hostage by one server. Instead, it flows — living across devices, safely encrypted through end-to-end protocols like WebRTC.

It’s a more democratic model for the web — one that mirrors the values of **open source** and **community-driven innovation**.

And that’s the future I want to keep building toward.

* * *

### A Never-Ending Learning Curve

Every time I dive deeper into distributed protocols, I realize there’s still so much more to learn.

Networking, concurrency, data synchronization — they’re all endless playgrounds of discovery. And that’s what keeps me going.

Because at the heart of this isn’t just technology — it’s **curiosity**. The desire to understand how things connect, how systems grow, how small ideas scale into networks that might just change the world.

One day, I hope to create **stronger, more sustainable distributed systems** — where everyone can connect, communicate, and share data securely, freely, and instantly.

Until then, I’ll keep learning, keep building, and keep dreaming.

Because that’s what indie developers do best.

* * *

### NOTES

- Article originally posted in 2024 and reposted
- AI-powered translation
- Read the original Vietnamese version here: [https://hnq.vn/blog/kham-pha-he-giao-thuc-phan-tan-mot-hanh-trinh-tu-hoc-va-kham-pha](https://huynhnhanquoc.com/blog/kham-pha-he-giao-thuc-phan-tan-mot-hanh-trinh-tu-hoc-va-kham-pha)

* * *

### More about me

- **Blog:** [huynhnhanquoc.com](https://huynhnhanquoc.com)
- **GitHub:** [github.com/huynhnhanquoc](https://github.com/huynhnhanquoc)
- **Open Source:** [github.com/kitmodule](https://github.com/kitmodule)
- **Buy me a Coffee:** [buymeacoffee.com/huynhnhanquoc](https://buymeacoffee.com/huynhnhanquoc)
- **Keep me Dreaming:** [ko-fi.com/huynhnhanquoc](https://ko-fi.com/huynhnhanquoc)
  
  Thanks for reading Huỳnh Nhân Quốc’s article! Subscribe for free to receive new posts and support my work.
