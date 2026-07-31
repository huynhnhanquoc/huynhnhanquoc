# Blockchain

> **A first-principles, deep engineering guide to understanding Blockchain in computer science and software runtimes.**

## What is it?

A decentralized, immutable ledger composed of cryptographically linked blocks of transaction records.

### Mental Architecture

```text
[Block 1 (Hash: 00a1)] ◄── [Block 2 (PrevHash: 00a1, Hash: 00b2)] ◄── [Block 3 (PrevHash: 00b2)]
```

## Why does it matter?

It enables trustless transactions and data records without centralized authority.

## Core Mechanics & Details

- Blocks store transaction payloads, timestamps, and hashes of previous blocks.
- Secured via consensus protocols like Proof-of-Work (PoW) or Proof-of-Stake (PoS).

## Code Implementation Reference

Here is a simplified code example illustrating the logic of **Blockchain**:

```javascript
const crypto = require('crypto');

class Block {
  constructor(index, previousHash, timestamp, data) {
    this.index = index;
    this.previousHash = previousHash;
    this.timestamp = timestamp;
    this.data = data;
    this.hash = this.calculateHash();
  }

  calculateHash() {
    return crypto.createHash('sha256')
      .update(this.index + this.previousHash + this.timestamp + JSON.stringify(this.data))
      .digest('hex');
  }
}
```

## Key Tradeoffs & Failure Modes

1. **Abstraction Overhead:** Introducing layers of translation or encapsulation for blockchain logic can add execution latency and memory overhead.
2. **Resource Exhaustion:** Unbounded inputs or unconstrained operations inside blockchain variables can trigger memory exhaustion under heavy load.

## Related Concepts

- [security](../../security/security/README.md)

---

*Part of the open-source inpublic knowledge network. Managed by [inpublic.vn](https://inpublic.vn).*
