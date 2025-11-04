---
title: "Angular vs React vs Vue: My Indie-Stack Developer Journey"
datePublished: Sat Oct 25 2025 10:31:05 GMT+0000 (Coordinated Universal Time)
cuid: cmhkhu6xc000102jp3kp46w6p
slug: angular-vs-react-vs-vue-my-indie
cover: https://cdn.hashnode.com/res/hashnode/image/upload/v1762256194503/0997f297-e76f-4a97-88a0-fe6e5bbfd761.jpeg

---


## Angular: The Love That Lasts

Angular has been my obsession for nearly five years. I started in the summer of 2016 while exploring Ionic, and I immediately fell in love. Coming from WinForms, the transition to Ionic felt magical.

I quickly realized Ionic was built on Angular, so I dove deep. Angular stayed with me through countless projects. The real magic? **RxJS**.

At first, I didn’t understand it—but once I did, RxJS changed the way I thought about coding. It made me plan in streams: three hours thinking, one hour coding. Less code, deeper thought.

Here’s a snippet I spent an afternoon perfecting—it handles user pagination:

```
this.size$ = this.$user.size
this.page$ = this.$user.page
this.UsersCount$ = this.ReadyDelete$.pipe(filter(_ => _ == null), switchMap(_ => this.$user.count()))
this.total$ = combineLatest(this.UsersCount$, this.size$, (count: number, size: number) => Math.ceil(count / size))
this.UsersList$ = this.page$.pipe(switchMap(page => this.$user.list(page, this.size$.getValue())))
```

RxJS demands careful attention: sloppy streams can bring server chaos. But mastering it taught me to think across front-end, back-end, and database—a full-stack mindset.

## React: Simple and Modular

I haven’t coded React extensively, though I’ve touched GatsbyJS and Next.js.

React is simple, modular, and encourages focused, synchronous thinking. Perfect if you want to build reusable components.

I’m not deeply passionate about it, but I respect its elegance.

## Vue: Lightweight and Calm

Vue is fast, stable, and easy to grasp. Ideal for front-end enthusiasts or those not diving deep into back-end work.

I see it as: *“Think less, code lightly.”*  
But if you want complex back-end or database-driven apps, you might need more than light thinking.

## Which Path Should You Take?

- **New to HTML/CSS?** Start with Vue. Friendly, fast, and beginner-ready.
- **Know JavaScript or jQuery?** Explore React. Build modular, reusable components.
- **Want a full mental workout?** Dive deep into Angular. Coming from C#, I found it challenging—but rewarding.

## Advice From My Journey

- Coding for a **job**? Pick the framework in demand.
- Coding for **passion**? Pick the framework that reads easiest to you.
- Coding for **your own projects**? Pick the purest, most honest path.

## Now: Living the Indie Dream

I live in my hometown, building websites and designing. Life has its bumps, but I follow my passion. I’ve returned to create something simple, something I truly want.

I have projects in the pipeline. I don’t know where they’ll go, but I refuse to give up.  
Currently, I’m not using any JS framework—this is purely my perspective.

Forever like this: *“Keep dreaming, keep being foolish.”*

**NOTES**  
**- Article posted in 2020 and reposted**  
\- **AI-powered translation**  
**- Read the original Vietnamese version here:** [https://hnq.vn/blog/angular-react-and-vue](https://hnq.vn/blog/angular-react-and-vue)

**More about me:**

- Blog: [huynhnhanquoc.com](https://huynhnhanquoc.com)
- GitHub: [github.com/huynhnhanquoc](https://github.com/huynhnhanquoc)
- Open Source: [github.com/kitmodule](https://github.com/kitmodule)
- Buy me a Coffee: [buymeacoffee.com/huynhnhanquoc](https://buymeacoffee.com/huynhnhanquoc)
- Keep me Dreaming: [ko-fi.com/huynhnhanquoc](https://ko-fi.com/huynhnhanquoc)

Thanks for reading Huỳnh Nhân Quốc Blog’s article! Subscribe for free to receive new posts and support my work.
