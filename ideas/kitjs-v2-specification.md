# 🚀 KitJS V2: Pure HTML Component & Client Reactive Kernel Specification

> **Author & Principal Architect:** Huynh Nhan Quoc  
> **Project:** `@kitwork/kitjs`  
> **Ecosystem:** Kitwork Engine  
> **Status:** Official Frozen Architectural Specification

---

## 📌 Executive Summary

**KitJS V2** is a lightweight, zero-eval, CSP-compliant client reactive kernel designed specifically for the **Kitwork Engine**. 

It eliminates heavy JavaScript build pipelines, Virtual DOM reconciliation overhead, and custom framework verb dispatchers (`data-kit-action`). Instead, KitJS V2 elevates pure HTML into a first-class component architecture.

```text
               KITJS V2 ARCHITECTURE PARADIGM
┌──────────────────────────────────────────────────────────┐
│                  HTML-First Reactive Island              │
├──────────────────────────────────────────────────────────┤
│ 1. Server Rendering      : {{ expression }} (Go SSR)     │
│ 2. Client Reactivity     : data-kit-*="expr" (KitJS)     │
│ 3. State Scope           : data-kit-scope="key: val"     │
│ 4. System Magic Vars     : $this, $host, $event, $error,  │
│                            $refs, $app, $                │
│ 5. Event Pipeline        : Target ➔ Filter ➔ Prevent ➔   │
│                            Stop ➔ Timing ➔ Once ➔ Exec   │
└──────────────────────────────────────────────────────────┘
```

---

## ⚙️ Core Architectural Principles

### 1. HTML-First Reactive Islands
Interfaces are partitioned into self-contained reactive islands defined by **Lexical Scope boundaries** (`data-kit-scope`) rather than requiring every DOM node to become a heavyweight component class.

### 2. Strict Server-Client Responsibility Boundary
- **`{{ expression }}`** = Handled exclusively on the Server by the Go Engine SSR.
- **`data-kit-*="expression"`** = Handled exclusively on the Client by the KitJS Kernel.
- Direct `${expr}` interpolation inside text nodes is rejected to eliminate visual ambiguity with JavaScript template literals, currency symbols (`$`), and un-hydrated text flashes.

### 3. Zero-Eval & Strict CSP Compliance
KitJS V2 completely eschews `eval()` and `new Function()`. Expressions are evaluated using a sandboxed Pratt parser and AST interpreter with a strict whitelist of 14 safe JavaScript global objects (`Math`, `Date`, `JSON`, `parseInt`...).

---

## 🔮 Injected Magic System Variables

Every inline expression receives 7 strictly scoped system variables:

| Variable | Architectural Semantics | Target Scope | Helper Methods |
| :--- | :--- | :--- | :--- |
| **`$this`** 🏆 | Element owning the directive (`directive owner`) | Current DOM element (`<button>`) | Equivalent to `event.currentTarget` in direct listeners |
| **`$host`** 🏆 | Nearest Lexical Scope DOM Boundary | Outer Scope container (`<section>`) | Accesses the container element of the current scope |
| **`$event`** | Native DOM Event object | Triggered DOM event (`click`, `input`) | `$event.target`, `$event.preventDefault()`, `$event.submitter` |
| **`$error`** | Error Boundary context object | Parent `data-kit-error` element | `$error.cause`, `$error.directive`, `$error.element`, **`$error.recover()`** |
| **`$refs`** | Scoped Reference Registry | Application Component Registry | `$refs.paymentModal.open = true` |
| **`$app`** | Native Host Capability Bridge Portal | Device & Browser Bridge | `$app.camera()`, `$app.qrcode()`, `$app.clipboard()`, `$app.storage()` |
| **`$` / `$root`** | Application Root Reactive State | Global Application Scope | `$.cartCount++` or `$root.cartCount++` |

---

## ⚡ Deterministic Modifier Pipeline Order

Event modifiers (`data-kit-click:outside:stop:prevent="save()"`) follow a **deterministic 7-step execution pipeline**:

```text
  [ Native DOM Event Triggered ]
               │
               ▼
   1. Target Modifier          (:window, :document)   ➔ Attach listener to Window or Document
               │
               ▼
   2. Filter Modifier          (:outside, :escape)    ➔ Evaluate filter. If FALSE ➔ ABORT PIPELINE
               │
               ▼
   3. Prevent Default          (:prevent)             ➔ Execute event.preventDefault()
               │
               ▼
   4. Propagation Control      (:stop)                ➔ Execute event.stopPropagation()
               │
               ▼
   5. Timing Control           (:debounce, :throttle) ➔ Evaluate timer / debounce callback
               │
               ▼
   6. Lifecycle Control        (:once)                ➔ Mark listener for unbinding after run
               │
               ▼
   7. Execute Expression                              ➔ Evaluate JS expression / Component Method
```

---

## 🎨 3-Group Property & Attribute Binding Contract

Binding strategies are selected based on property metadata rather than a naive blanket rule:

1. **Reflected Boolean (`disabled`, `required`, `readonly`, `hidden`, `open`):**
   Mutates BOTH the DOM property and toggles the HTML attribute (`element.toggleAttribute(...)`) to preserve CSS selector compatibility.
2. **Live State Property (`checked`, `value`, `selected`, `indeterminate`):**
   Mutates ONLY the live DOM property (`element.checked = val`), preserving default state for HTML form resets.
3. **Attribute-Only (`data-kit-attr:aria-expanded="open"`):**
   Mutates ONLY the HTML attribute via `element.setAttribute(...)`.

---

## 📦 List & SSR Blueprint Contract (`data-kit-for`, `data-kit-item`, `data-kit-key`)

```html
<!-- SOURCE CODE (Author Syntax) -->
<ul>
  <li data-kit-for="item, index of items" data-kit-key="item.id">
    <span data-kit-text="item.name"></span>
  </li>
</ul>

<!-- SSR OUTPUT (Go Engine Rendered Output) -->
<ul>
  <!--kit-for:start id=items-1-->
  <li data-kit-item="items-1" data-kit-key="a">
    <span data-kit-text="item.name">Item A</span>
  </li>
  <li data-kit-item="items-1" data-kit-key="b">
    <span data-kit-text="item.name">Item B</span>
  </li>
  <!--kit-for:end id=items-1-->
</ul>
```

- **`data-kit-for`**: Source declaration blueprint (compiled into Go Server IR).
- **`data-kit-item="<loop-id>"`**: Materialized DOM item identity emitted by SSR.
- **`data-kit-key="<id>"`**: Stable data identity for reconciliation during insert, remove, or reorder operations.

---

## 🛠️ Complete Production HTML Example

```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>{{ page.title }}</title>
  <script src="/kit.js" defer></script>
</head>
<body data-kit-app="mainApp" data-kit-scope="{ cartCount: 0 }">

  <!-- Inline Reactive Scope -->
  <section class="cart-item" data-kit-scope="qty: 1; price: 250">
    <p>Product A - Unit Price: $250</p>
    <button type="button" data-kit-click:stop="qty = qty > 1 ? qty - 1 : 1">-</button>
    <strong data-kit-text="qty">1</strong>
    <button type="button" data-kit-click="qty = qty + 1">+</button>
    <p>Total: $<strong data-kit-text="qty * price">{{ initialTotal }}</strong></p>
  </section>

  <!-- Payment Modal Component -->
  <section
    data-kit-component="payment-modal"
    data-kit-alias="$paymentModal"
    data-kit-ref="paymentModal"
    data-kit-scope="{ open: false, loading: false, title: 'Payment Confirmation', amount: 500, error: null }"
    data-kit-error="handleError($error)"
  >
    <div class="modal-backdrop" data-kit-show="open">
      <div class="modal-box" data-kit-click:outside="open = false" data-kit-keydown:window:escape="open = false">
        <h2 data-kit-text="title">Payment Confirmation</h2>
        <p>Amount: $<strong data-kit-text="amount">500</strong></p>
        
        <button type="button" data-kit-click="scanQRCode()" data-kit-bind:disabled="loading">Scan QR Code</button>

        <form data-kit-submit:prevent="$event.submitter.disabled = true; submitPayment()">
          <button type="submit" data-kit-bind:disabled="loading">Confirm Order</button>
          <button type="button" data-kit-click="open = false">Cancel</button>
        </form>

        <p data-kit-show="error" data-kit-text="error.cause.message"></p>
      </div>
    </div>
  </section>

  <!-- Keyed List (SSR Format) -->
  <ul data-kit-scope="{ items: [] }">
    <!--kit-for:start id=items-1-->
    <li data-kit-item="items-1" data-kit-key="a">
      <span data-kit-text="item.name">Product A</span>
      <button type="button" data-kit-click="remove(item.id)">Remove</button>
    </li>
    <!--kit-for:end id=items-1-->
  </ul>

</body>
</html>
```
