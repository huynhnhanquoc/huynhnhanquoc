# Alt Text

> **A first-principles, deep engineering guide to understanding Alt Text in computer science and software runtimes.**

## What is it?

Alternative text descriptions added to HTML image tags to describe visual content to screen readers and search engines.

### Mental Architecture

```text
[Image: chart.png] ──► [Alt Text: "Sales increase 10% in Q2"] ──► [Screen Reader audio]
```

## Why does it matter?

It makes web applications accessible to visually impaired users and improves SEO indexing.

## Core Mechanics & Details

- WCAG guidelines require descriptive alt text on all non-decorative images.
- Helps search engines understand image context, improving search rankings.

## Code Implementation Reference

Here is a simplified code example illustrating the logic of **Alt Text**:

```javascript
<!-- Accessible image tag with alt text -->
<img src="/assets/q2-chart.svg" 
     alt="Column chart showing sales revenue increasing by 12% in Q2 2026." 
     loading="lazy" />
```

## Key Tradeoffs & Failure Modes

1. **Abstraction Overhead:** Introducing layers of translation or encapsulation for alt text logic can add execution latency and memory overhead.
2. **Resource Exhaustion:** Unbounded inputs or unconstrained operations inside alt text variables can trigger memory exhaustion under heavy load.

## Related Concepts

- [a11y](../a11y/README.md)

---

*Part of the open-source inpublic knowledge network. Managed by [inpublic.vn](https://inpublic.vn).*
