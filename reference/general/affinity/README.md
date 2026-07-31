# Affinity

> **A first-principles, deep engineering guide to understanding Affinity in computer science and software runtimes.**

## What is it?

The programmatic configuration binding execution threads or network requests to specific CPU cores or servers.

### Mental Architecture

```text
[Request: Session A] ──► [Load Balancer] ──(Session Affinity)──► [Target Web Server 1]
```

## Why does it matter?

It optimizes execution speed by maximizing local cache usage (CPU affinity) or maintaining local session states (Session affinity).

## Core Mechanics & Details

- CPU affinity binds specific OS threads to CPU cores, reducing context switching costs.
- Session affinity routes HTTP requests to the same backend server storing session states.

## Code Implementation Reference

Here is a simplified code example illustrating the logic of **Affinity**:

```javascript
// Nginx session affinity configuration (IP Hash)
// upstream backend_servers {
//     ip_hash; # Route client requests to same server based on client IP
//     server backend1.example.com;
//     server backend2.example.com;
// }
```

## Key Tradeoffs & Failure Modes

1. **Abstraction Overhead:** Introducing layers of translation or encapsulation for affinity logic can add execution latency and memory overhead.
2. **Resource Exhaustion:** Unbounded inputs or unconstrained operations inside affinity variables can trigger memory exhaustion under heavy load.

---

*Part of the open-source inpublic knowledge network. Managed by [inpublic.vn](https://inpublic.vn).*
