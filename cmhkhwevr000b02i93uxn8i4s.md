---
title: "The Perimeter of a Rounded Square"
datePublished: Sat Oct 25 2025 13:02:50 GMT+0000 (Coordinated Universal Time)
cuid: cmhkhwevr000b02i93uxn8i4s
slug: the-perimeter-of-a-rounded-square
cover: https://cdn.hashnode.com/res/hashnode/image/upload/v1762256298296/ed01731b-f013-4921-85b9-3cb41a68607a.jpeg

---


### A 300,000 Đồng Story About Geometry and Code

Yesterday, I ran into a strange problem — an algorithmic one.

How do you calculate the **perimeter** of a **square with rounded corners**, and properly **offset** the compensation distance so the visual result remains balanced?

It sounds simple — a square is square, and a circle is circle — but somewhere in between, things get oddly interesting.

* * *

### When Geometry Meets Curiosity

I started the usual way: searching online, reading documentation, even asking a bot for help.  
But, as always, the final answer had to come from *me*.

Let’s recall:

- The perimeter of a square is `4 × l` (where `l` is the side length).
- The perimeter of a circle is `2πR` (where `R` is the radius).

Now, what happens if you **round each corner** of the square by, say, **1 or 2 cm**?  
What is the new perimeter?

So… I did what any developer lost in thought would do — opened Excel, ran a few tests, even asked the bot again (and again).  
Still, no clear answer.

* * *

### Drawing the Shape That Felt “Right”

Luckily, I’ve had a background in **design and SVG**, so I decided to draw it myself — a *very round* square.  
After applying a bit of corner radius, it became even rounder.

And then it hit me: **the border is the perimeter**.

From the visual pattern, the derived formula turned out to be:

```
Perimeter = 4 × side − 8 × radius + 2π × radius
```

* * *

### Why This Formula Works

When you round each corner slightly, each corner contributes one-fourth of a circle.  
Imagine combining four such corners — you get one complete circle’s worth of curve, while still preserving most of the square’s edges.

So, the formula essentially *subtracts* the extra straight-line portions replaced by the curves, and *adds back* the circular sections using `2πr`.

* * *

### Dashes, Offsets, and Beautiful Symmetry

But the journey didn’t stop there.

In SVG, when you split a border into equal parts, you can use **stroke-dasharray** — creating segments or “dashes” along the perimeter.

When those dashes meet the rounded corners, something interesting happens:  
They don’t distribute evenly.  
Some corners end up slightly “off.”

To fix this, we apply an **offset** — shifting the dash pattern so each segment aligns symmetrically around the corners.

This offset ensures every dash appears balanced — both on the flat edges *and* around the curved corners.

* * *

### From Geometry to Code

All of this exploration wasn’t just for curiosity’s sake.

I was working on the **QR Code SVG generator** inside my system, and I wanted users to **customize their QR codes** — change the shapes, borders, and radii smoothly, without breaking the design.

This formula and the offset logic now power that system, helping each QR code feel alive — perfectly balanced between geometry and aesthetics.

* * *

### Reflections in the Code

Sometimes, what starts as a small algorithmic question turns into a late-night philosophical journey.  
The kind where math meets design, and logic meets art.

Like Xiaomi’s $300,000 logo story — mine just happened to cost a few cups of coffee and an evening of curiosity.

But perhaps, that’s the beauty of being an indie hacker:  
You don’t just solve problems — you *understand* them, shape them, and make them yours.

* * *

### NOTES

- Article originally posted in 2022 and reposted.
- AI-powered translation.
- Read the original Vietnamese version here: [https://hnq.vn/blog/chu-vi-cua-hinh-vuong-bi-bo-tron](https://huynhnhanquoc.com/blog/chu-vi-cua-hinh-vuong-bi-bo-tron)

* * *

### More About Me

- **Blog:** [huynhnhanquoc.com](https://huynhnhanquoc.com)
- **GitHub:** [github.com/huynhnhanquoc](https://github.com/huynhnhanquoc)
- **Open Source:** [github.com/kitmodule](https://github.com/kitmodule)
- **Buy me a Coffee:** [buymeacoffee.com/huynhnhanquoc](https://buymeacoffee.com/huynhnhanquoc)
- **Keep me Dreaming:** [ko-fi.com/huynhnhanquoc](https://ko-fi.com/huynhnhanquoc)

Thanks for reading Huỳnh Nhân Quốc’s article! Subscribe for free to receive new posts and support my work.
