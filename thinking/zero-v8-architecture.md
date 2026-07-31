# 🛠️ Zero-V8 Architecture: Custom Stack-Based Go VM for Multi-Tenancy

> **"Why Kitwork eschewed embedding V8, Node.js, or Deno in favor of a hand-written JavaScript bytecode Virtual Machine written entirely in Go."**

---

## 🛑 The Structural Bottlenecks of V8 for Multi-Tenancy

V8 (powering Chrome and Node.js) is an engineering marvel, but it poses severe architectural constraints for multi-tenant micro-hosting:

1. **Heavy Memory Footprint:** Each V8 Isolate or worker process consumes megabytes of baseline memory, rendering high-density multi-tenant hosting cost-prohibitive.
2. **Cold-Start Latency:** Instantiating new V8 execution contexts incurs non-trivial startup latency, unsuited for sub-millisecond edge invocation.
3. **Complex Isolation Boundaries:** Preventing cross-tenant memory leakage or side-channel attacks within shared V8 processes requires complex, resource-heavy wrapper sandboxes.

---

## 🎯 The Solution: Hand-Written Stack-Based Go VM

Kitwork engineered a dedicated **JavaScript subset compiler & stack-based VM** in standard Go (`stdlib`-only, zero external dependencies).

### Core Architectural Invariants:

1. **Sub-Millisecond Isolation:**
   * Every tenant (site folder) runs in its own isolated VM instance.
   * Baseline memory overhead is measured in kilobytes rather than megabytes per instance.
2. **Instant Prewarmed Execution (Zero Cold-Start):**
   * Tenant bytecode is pre-compiled and cached across RAM and disk.
   * Execution triggers instantly upon HTTP request arrival.
3. **Deliberately-Constrained JS Subset:**
   * Unbounded control structures (`while`) and error-swallowing constructs (`try-catch`) are intentionally omitted to prevent CPU exhaustion.
   * Arrow functions only (`u => ({ ... })`); strict syntactic rules enforce clean, deterministic execution.
   * Built-in Gas Limit metering halts run-away tenant scripts safely.
