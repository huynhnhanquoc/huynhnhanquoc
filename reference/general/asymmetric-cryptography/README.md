# Asymmetric Cryptography

> **A first-principles, deep engineering guide to understanding Asymmetric Cryptography in computer science and software runtimes.**

## What is it?

A cryptographic system utilizing a pair of mathematically linked keys: a Public Key (to encrypt) and a Private Key (to decrypt).

### Mental Architecture

```text
[Plaintext] ──► [Encrypt with Public Key] ──► [Ciphertext (Safe for transit)]
                                                 │
[Plaintext] ◄── [Decrypt with Private Key] ◄─────┘
```

## Why does it matter?

It enables secure communication over public networks without requiring sharing secret keys beforehand.

## Core Mechanics & Details

- Includes algorithms like RSA, ECC, and Diffie-Hellman.
- Used to establish secure TLS connections, sign git commits, and verify JWT tokens.

## Code Implementation Reference

Here is a simplified code example illustrating the logic of **Asymmetric Cryptography**:

```javascript
// RSA key generation and encryption using Node.js crypto
const crypto = require('crypto');

const { publicKey, privateKey } = crypto.generateKeyPairSync('rsa', {
  modulusLength: 2048
});

function encryptPublic(text) {
  return crypto.publicEncrypt(publicKey, Buffer.from(text));
}

function decryptPrivate(buffer) {
  return crypto.privateDecrypt(privateKey, buffer).toString();
}
```

## Key Tradeoffs & Failure Modes

1. **Abstraction Overhead:** Introducing layers of translation or encapsulation for asymmetric cryptography logic can add execution latency and memory overhead.
2. **Resource Exhaustion:** Unbounded inputs or unconstrained operations inside asymmetric cryptography variables can trigger memory exhaustion under heavy load.

## Related Concepts

- [security](../../security/security/README.md)

---

*Part of the open-source inpublic knowledge network. Managed by [inpublic.vn](https://inpublic.vn).*
