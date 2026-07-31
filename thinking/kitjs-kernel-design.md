# ⚛️ KitJS Kernel Design: Re-Thinking Client-Side Reactivity (V2 Evolution)

> **"No Virtual DOM overhead. No build pipeline friction. No framework verb registries. Just semantic HTML, lexical scope islands, and native reactive directives."**

---

## 🔍 The Client Framework Fatigue

Modern frontend frameworks (React, Next.js, Vue) offer developer ergonomics but impose significant costs:

* **Massive JavaScript Bundles:** Shipping hundreds of kilobytes of runtime code simply to handle menu toggles, modals, or form validation.
* **Virtual DOM Overhead:** CPU-intensive tree-diffing on the browser's main thread, causing frame drops on mobile devices.
* **Build Pipeline Complexity:** Heavy build toolchains backed by thousands of deeply nested `node_modules` dependencies.

---

## ⚡ The KitJS V2 Core Paradigm

**KitJS V2** is the zero-eval, CSP-compliant browser kernel powering Kitwork's interactive capabilities:

```text
               KITJS V2 ARCHITECTURE PARADIGM
┌──────────────────────────────────────────────────────────┐
│                  HTML-First Reactive Island              │
├──────────────────────────────────────────────────────────┤
│ 1. Server Rendering      : {{ expression }} (Go SSR)     │
│ 2. Client Reactivity     : data-kit-*="expr" (KitJS)     │
│ 3. Scope Model           : data-kit-scope="key: val"     │
│ 4. Magic System Vars     : $this, $host, $event, $error,  │
│                            $refs, $app, $                │
│ 5. Event Pipeline        : Target ➔ Filter ➔ Prevent ➔   │
│                            Stop ➔ Timing ➔ Once ➔ Exec   │
└──────────────────────────────────────────────────────────┘
```

---

## 🛠️ Key Architectural Breakthroughs

### 1. Pure HTML Component & Lexical Scope Islands
Rather than converting every HTML element into a heavy JavaScript class, KitJS partitions the UI into **Reactive Scope Islands** using `data-kit-scope="key: val; key2: val2"`. Component behaviors are attached cleanly via `data-kit-component="name"`.

### 2. Strict Injected Magic Variables
Every inline expression receives 7 strictly scoped system variables:
- **`$this`** : Element owning the directive (`directive owner` / `event.currentTarget` equivalent).
- **`$host`** : Nearest Lexical Scope DOM Container.
- **`$event`** : Native DOM Event object.
- **`$error`** : Error Boundary context object with `$error.recover()` retry capabilities.
- **`$refs`** : Application Scoped Reference Registry (`$refs.modalName.open = true`).
- **`$app`** : Native Host & Hardware Capability Bridge (`$app.camera()`, `$app.qrcode()`).
- **`$` / `$root`** : Application Root Reactive State.

### 3. Deterministic 7-Step Event Modifier Pipeline
Event modifiers follow a deterministic execution order: `Target (:window) ➔ Filter (:outside) ➔ Prevent ➔ Stop ➔ Timing (:debounce) ➔ Once ➔ Execute`. Filter modifiers execute BEFORE `prevent` or `stop`, ensuring non-matching events continue propagating naturally.

### 4. 3-Group Property & Attribute Binding Contract
- **Reflected Boolean (`disabled`, `required`, `readonly`, `hidden`):** Mutates both DOM Property & HTML Attribute (`element.toggleAttribute(...)`).
- **Live State Property (`checked`, `value`, `selected`):** Mutates DOM Property only, preserving default state for HTML form resets.
- **Attribute-Only (`data-kit-attr:aria-expanded`):** Mutates HTML attribute (`element.setAttribute(...)`).

### 5. Single Source of Truth & Zero-Eval Security
KitJS V2 eschews `eval()` and `new Function()`. Expressions are evaluated safely using a Pratt parser and AST interpreter with a strict whitelist of 14 safe JavaScript globals (`Math`, `Date`, `JSON`, `parseInt`...).
