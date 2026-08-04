---
title: "Rebuilding a Go VM to Execute 1M Ops in 58ms"
subtitle: "Zero GC was not a side effect.\nIt was a constraint."
slug: "rebuilding-a-go-vm-to-execute-1m"
date: "2026-01-24T10:09:04.399Z"
canonical_url: "https://huynhnhanquoc.substack.com/p/rebuilding-a-go-vm-to-execute-1m"
cover_image: "https://substack-post-media.s3.amazonaws.com/public/images/acbc157d-b1d7-438a-bed8-69b47f9c13fc_1536x1024.png"
description: "Zero GC was not a side effect. It was a constraint."
---

## **The Art of the Nanosecond⚡️🔥**

> 

“A screenshot doesn’t mean anything. It’s just virtual numbers.”

That comment ended the discussion.

Instead of arguing, I opened the profiler.

What followed was not optimization it was **open-heart surgery** on the Kitwork Engine: dismantling the execution loop, reworking the stack model, and rewriting the VM’s core assumptions down to the bytecode level.

The result:

**1,000,000 operations executed in 58ms (0.058s)**
A **20× speedup**, pushing a Go-based virtual machine close to its physical limits.

## **Defining the 58ms Threshold ⚡️🔥**

58 milliseconds is invisible to humans.
To a high-frequency system, it defines an entirely different performance class.

- 

**Human blink:** ~300ms
→ In a single blink, Kitwork executes **~5,000,000 instructions**.

- 

**Finger snap:** ~150ms
→ Nearly **3 million operations completed** before the sound propagates.

At **17,000,000 internal ops/sec**, this stops being a discussion about “fast software.”
It becomes a discussion about **reaction-time systems**.

## **Under the Hood: The Engineering Decisions That Made It Possible ⚡️🔥**

Achieving this throughput while maintaining **Zero GC (0 B/op)** required abandoning conventional interpreter design patterns.

Here’s what changed.

### **1. The Death of **`map[string]interface{}`

Most scripting engines rely on hash maps for variable storage.
That convenience comes with a cost: hashing, pointer chasing, and heap allocations.

**Kitwork’s approach:** *Static Slot Allocation*

- 

During compilation (AST → Bytecode), every variable is assigned a fixed **integer slot**.

- 

At runtime, values are accessed through a flat slice.

**Result:**

- 

No hashing

- 

No dynamic lookup

- 

Constant-time access with cache-friendly memory layout

### **2. A Pure Stack-Based VM**

Rather than emulating object-heavy runtimes, Kitwork commits fully to a **pre-allocated value stack**.

- 

PUSH / POP / STORE operate on a contiguous memory region

- 

Custom `Value` structs minimize pointer usage

- 

Data stays hot in **L1/L2 cache**, avoiding latency spikes caused by cache misses

This is where the VM stops behaving like a scripting engine
and starts behaving like a **tight execution core**.

### **3. Zero Allocation as a Non-Negotiable Rule**

Zero GC was not a side effect.
It was a constraint.

- 

**VM Context Pooling:** Execution contexts are recycled via `sync.Pool`

- 

Stack memory is reset, not reallocated

- 

Capacity is preserved across executions

For host ↔ VM communication:

- 

**Zero-copy data bridge**

- 

Pointer swapping and unsafe headers where required

- 

A 1MB payload costs **exactly 0 bytes** to ingest

No allocation means:

- 

No GC pressure

- 

No pauses

- 

Fully deterministic execution latency

## **Performance as a Religion ⚡️🔥**

Going from 1 second to 58ms wasn’t about “clean code.”

It came from a belief that **latency is a bug**, not a metric.

In environments like:

- 

Real-time bidding

- 

High-frequency trading

- 

Edge execution & smart gateways

Logic must execute **faster than the network itself**.

Kitwork Engine exists for that class of systems:
script-level flexibility with the behavioral predictability of a native binary.

## **Why This Matters ⚡️🔥**

People can doubt screenshots.
They can doubt benchmarks.

What they cannot doubt is the experience of a system that responds **before the request feels complete**.

If your mental model still treats *1 second* as “fast enough,”
you’re designing for the wrong decade.

Explore the engine:
👉 **github.com/kitwork/engine**

**Kitwork**
Precision in chaos.
Speed in silence.

⚡️🔥
