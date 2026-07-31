# Active Directory

> **A first-principles, deep engineering guide to understanding Active Directory in computer science and software runtimes.**

## What is it?

A directory service developed by Microsoft to manage domain networks, user accounts, and computer groups.

### Mental Architecture

```text
[Client Login] ──► [LDAP Query] ──► [Active Directory Controller] ──► [Access Token / SID]
```

## Why does it matter?

It provides a single source of identity access controls across corporate Windows networks.

## Core Mechanics & Details

- Uses LDAP (Lightweight Directory Access Protocol) for queries and Kerberos for authentication.
- Manages hierarchical group policies, file shares, and computer access rules.

## Code Implementation Reference

Here is a simplified code example illustrating the logic of **Active Directory**:

```javascript
// Conceptual LDAP query for user AD lookup
const ldap = require('ldapjs');
const client = ldap.createClient({ url: 'ldap://ad.company.local' });

function searchADUser(username) {
  client.search('ou=users,dc=company,dc=local', {
    filter: `(sAMAccountName=${username})`,
    scope: 'sub'
  }, (err, res) => {
    res.on('searchEntry', (entry) => {
      console.log('AD Account Details:', entry.object);
    });
  });
}
```

## Key Tradeoffs & Failure Modes

1. **Abstraction Overhead:** Introducing layers of translation or encapsulation for active directory logic can add execution latency and memory overhead.
2. **Resource Exhaustion:** Unbounded inputs or unconstrained operations inside active directory variables can trigger memory exhaustion under heavy load.

## Related Concepts

- [security](../../security/security/README.md)

---

*Part of the open-source inpublic knowledge network. Managed by [inpublic.vn](https://inpublic.vn).*
