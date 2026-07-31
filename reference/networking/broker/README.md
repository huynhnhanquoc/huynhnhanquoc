# Broker

> **A first-principles, deep engineering guide to understanding Broker in computer science and software runtimes.**

## What is it?

An intermediary server routing, validating, and queueing messages between producers and consumers (e.g. RabbitMQ, Kafka).

### Mental Architecture

```text
[Publisher Node] ──(Message)──► [Message Broker (Queue)] ──► [Subscriber Node]
```

## Why does it matter?

It decouples microservices, allowing independent scaling and handling of spike traffic.

## Core Mechanics & Details

- Manages message delivery guarantees (at-least-once, exactly-once).
- Stores messages durably when consumer systems go offline.

## Code Implementation Reference

Here is a simplified code example illustrating the logic of **Broker**:

```javascript
// Conceptual message broker broker dispatch loop
class SimpleMessageBroker {
  constructor() {
    this.topics = {};
  }
  
  subscribe(topic, consumer) {
    if (!this.topics[topic]) this.topics[topic] = [];
    this.topics[topic].push(consumer);
  }
  
  publish(topic, message) {
    for (const consumer of this.topics[topic] || []) {
      consumer(message);
    }
  }
}
```

## Key Tradeoffs & Failure Modes

1. **Abstraction Overhead:** Introducing layers of translation or encapsulation for broker logic can add execution latency and memory overhead.
2. **Resource Exhaustion:** Unbounded inputs or unconstrained operations inside broker variables can trigger memory exhaustion under heavy load.

## Related Concepts

- [queue](../../general/queue/README.md)

---

*Part of the open-source inpublic knowledge network. Managed by [inpublic.vn](https://inpublic.vn).*
