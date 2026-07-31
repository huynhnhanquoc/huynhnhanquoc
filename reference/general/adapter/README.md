# Adapter

> **A first-principles, deep engineering guide to understanding Adapter in computer science and software runtimes.**

## What is it?

A structural design pattern that allows incompatible interfaces to collaborate by translating data formats or API signatures.

### Mental Architecture

```text
[Application Code] ──► [Target Interface] ──► [Adapter Class] ──► [Legacy Library API]
```

## Why does it matter?

It enables integrating legacy libraries or third-party APIs without modifying existing application code.

## Core Mechanics & Details

- Acts as a wrapper converting inputs into the target format.
- Enforces decouple rules, isolating system dependencies.

## Code Implementation Reference

Here is a simplified code example illustrating the logic of **Adapter**:

```javascript
// Target Interface
class TargetLogger {
  logMessage(text) {}
}

// Adaptee (Incompatible Legacy Logger)
class LegacyLogger {
  writeRawLog(msg, level) {}
}

// The Adapter
class LoggerAdapter extends TargetLogger {
  constructor(legacyLogger) {
    super();
    this.legacyLogger = legacyLogger;
  }

  logMessage(text) {
    // Translate standard call to legacy system interface
    this.legacyLogger.writeRawLog(text, "INFO");
  }
}
```

## Key Tradeoffs & Failure Modes

1. **Abstraction Overhead:** Introducing layers of translation or encapsulation for adapter logic can add execution latency and memory overhead.
2. **Resource Exhaustion:** Unbounded inputs or unconstrained operations inside adapter variables can trigger memory exhaustion under heavy load.

---

*Part of the open-source inpublic knowledge network. Managed by [inpublic.vn](https://inpublic.vn).*
