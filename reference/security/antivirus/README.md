# Antivirus

> **A first-principles, deep engineering guide to understanding Antivirus in computer science and software runtimes.**

## What is it?

A security program that monitors files, memory, and processes to detect and block malicious software.

### Mental Architecture

```text
[File Write request] ──► [Antivirus Scanner (Hash check / Heuristics)] ──► [Allow / Quarantine]
```

## Why does it matter?

It protects operating systems from malware, trojans, and ransomware execution.

## Core Mechanics & Details

- Identifies threat signatures using file hash lists (MD5/SHA256).
- Monitors running processes for anomalous system calls (heuristics).

## Code Implementation Reference

Here is a simplified code example illustrating the logic of **Antivirus**:

```javascript
// Simple signature scanner
const crypto = require('crypto');

function checkFileSignature(fileBuffer, knownMalwareHashes) {
  const hash = crypto.createHash('sha256').update(fileBuffer).digest('hex');
  return knownMalwareHashes.includes(hash);
}
```

## Key Tradeoffs & Failure Modes

1. **Abstraction Overhead:** Introducing layers of translation or encapsulation for antivirus logic can add execution latency and memory overhead.
2. **Resource Exhaustion:** Unbounded inputs or unconstrained operations inside antivirus variables can trigger memory exhaustion under heavy load.

## Related Concepts

- [security](../security/README.md)
- [safety](../safety/README.md)

---

*Part of the open-source inpublic knowledge network. Managed by [inpublic.vn](https://inpublic.vn).*
