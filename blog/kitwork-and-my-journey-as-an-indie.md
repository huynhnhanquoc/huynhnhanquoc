---
title: "Kitwork and My Journey as an Indie Hacker Pursuing Open-Source"
subtitle: "When I wrote the very first lines in Kitwork's README, many people called me “crazy.”"
slug: "kitwork-and-my-journey-as-an-indie"
date: "2025-12-01T17:30:18.723Z"
canonical_url: "https://huynhnhanquoc.substack.com/p/kitwork-and-my-journey-as-an-indie"
cover_image: "https://substack-post-media.s3.amazonaws.com/public/images/7378e14f-4aa2-4949-9e23-6328159e23a1_4096x2304.png"
description: "When I wrote the very first lines in Kitwork's README, many people called me “crazy.”"
---

## Getting started opensource with README

For me, that was the beginning, not just of Kitwork, but of an indie path that I knew was worth pursuing.

Today, Kitwork is live at [opens.vn](https://opens.vn) with a small demo API available at [https://opens.vn/api/price-gold/pnj](https://opens.vn/api/price-gold/pnj).

If you do not see any results, it might be because you arrived late, the server is overloaded, or simply because I have not implemented caching yet.

This is also why I chose open-source. You can clone the repository and run it yourself at [https://github.com/kitwork/kitwork](https://github.com/kitwork/kitwork). Just clone the repository, run the executable for your operating system, and Kitwork will run on port 80. No Docker, no environment setup, no dependencies.

## Basic Structure of Kitwork

The folder `./tasks` contains `.work` files. Currently, these files are static, so if you edit them, you need to restart the service. I plan to add a feature to automatically watch files and reload changes, similar to Git or nodemon.

The folder `./router` can be edited directly and Kitwork will reload immediately.

Go code is optional. You can delete all `.go` files. Kitwork only needs the executable file and the configuration folders.

Many people think Kitwork is YAML that generates Go code. It is not. It is a combination of configuration and handler, similar to serverless functions and workflow engines, but extremely lightweight, self-running, and self-deploying. Kitwork allows me to deploy any service as quickly as possible.

## The Story Begins with Kitstack

A younger sibling once asked me, “Why do you not open-source the things you have built?”

I had written a fullstack framework, which I call Kitstack. It is similar to Liquid, Django, or Spring Boot but written in Go. Kitstack sustained me for years and helped me deploy websites with just creating a profile, copying the template folder to the server, and the project runs immediately.

However, Kitstack contains many customer APIs and security functions, so I could not open-source it.

That is why I created Kitwork, where I extracted the essence of five years of work. It includes DNS systems, load balancing, proxy engine, template engine, plugin architecture, and a lightweight configuration experience similar to serverless.

All of this will gradually be incorporated into Kitwork.

## What Kitwork Will Become

I do not want Kitwork to be just a repository. I want it to be the first platform for indie hackers or small startups starting their tech dreams.

You can clone a Git folder and run it. Instantly you have a backend, routing, workflow, and templates. No environment setup, Docker, or Kubernetes required.

Kitwork’s long-term vision includes running self-hosted serverless functions through `.work` files, building a low-code or no-code backend where APIs, workflows, and cron jobs can be configured without complex coding, creating a lightweight and maintainable microservice system that does not depend on the cloud or heavy infrastructure, integrating V8 using v8go to run JavaScript logic directly inside `.work` files without Node.js, querying the database directly in `.work` files without additional Go handlers if not needed, and rewriting the template engine to be more flexible and clean since Go templates are limited and do not support operators.

## Opens.vn is a playground for Testing and Sharing

I will experiment with Kitwork at [opens.vn](https://opens.vn) and open everything to the community. Services, sample APIs, workflows, and templates can all be downloaded, edited, self-hosted, and turned into your own platform.

Others sell services. I share my dream.

To many, Kitwork may seem like just a website and a GitHub repository. But anyone who clones the repo and runs it will feel what I mean: a small platform with the potential to become very large, an indie tool that could spark an entire ecosystem.

You can also view and vote for Kitwork on Product Hunt at [https://www.producthunt.com/products/kit-work](https://www.producthunt.com/products/kit-work).

Kitwork and I, as an indie hacker passionate about open-source, continue this journey. Every line of code, every workflow, is how I share my dream with the world as an indie hacker building in public.

## **Notes**

- 

Article written and reposted in 2025.

- 

AI-powered translation available.

- 

Original Vietnamese version: [https://hnq.vn/blog/xay-dung-mot-cong-cu-de-xem-lap-trinh-theo-cach-khac](https://huynhnhanquoc.com/blog/xay-dung-mot-cong-cu-de-xem-lap-trinh-theo-cach-khac)

---

## **More About Me**

- 

Blog: huynhnhanquoc.com

- 

GitHub: github.com/huynhnhanquoc

- 

Open Source: github.com/kitmodule

- 

Buy me a Coffee: buymeacoffee.com/huynhnhanquoc

- 

Keep me Dreaming: ko-fi.com/huynhnhanquoc
