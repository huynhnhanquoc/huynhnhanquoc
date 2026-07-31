# ACL

> **A first-principles, deep engineering guide to understanding ACL in computer science and software runtimes.**

## What is it?

An Access Control List (ACL) mapping specific objects or directories to a list of allowed users and their permissions.

### Mental Architecture

```text
[File Object] ──► [ACL File: Read = user_a, Write = user_b] ──► [Verify Action]
```

## Why does it matter?

It provides fine-grained, object-level authorization control for filesystems, databases, and networks.

## Core Mechanics & Details

- Decoupled from global roles, mapping directly to specific objects.
- Defines read, write, execute, or delete capability flags for users.

## Code Implementation Reference

Here is a simplified code example illustrating the logic of **ACL**:

```javascript
// ACL verification logic
class AccessControlList {
  constructor() {
    this.permissions = {}; // Map resourceId -> [ { userId, scope } ]
  }

  grant(resourceId, userId, scope) {
    if (!this.permissions[resourceId]) this.permissions[resourceId] = [];
    this.permissions[resourceId].push({ userId, scope });
  }

  check(resourceId, userId, requiredScope) {
    const list = this.permissions[resourceId] || [];
    return list.some(item => item.userId === userId && item.scope === requiredScope);
  }
}
```

## Key Tradeoffs & Failure Modes

1. **Abstraction Overhead:** Introducing layers of translation or encapsulation for acl logic can add execution latency and memory overhead.
2. **Resource Exhaustion:** Unbounded inputs or unconstrained operations inside acl variables can trigger memory exhaustion under heavy load.

## Related Concepts

- [security](../../security/security/README.md)
- [authorization](../../security/authorization/README.md)

---

*Part of the open-source inpublic knowledge network. Managed by [inpublic.vn](https://inpublic.vn).*
