# command

Server setup scripts I actually run, kept here so I stop rewriting them from
memory on every new machine.

All four provision PostgreSQL on a fresh VPS and lock it to a single address.
They differ only in how much they explain themselves.

- [postgresql-fast-vps.bash](postgresql-fast-vps.bash) — the commented version.
  Read this one first.
- [postgresql-short-vps.bash](postgresql-short-vps.bash) — the same commands with
  the commentary removed.
- [postgresql-ip-security.bash](postgresql-ip-security.bash) — the IP-restricted
  variant, annotated step by step.
- [postgresql-short-security.bash](postgresql-short-security.bash) — that variant
  as a single paste-able chain.

## Before running any of them

Each script contains `[YOUR_PASSWORD]` and `[YOUR_IP]` placeholders. They are
placeholders, not defaults — a script run unedited will create an account whose
password is the literal string.

The `pg_hba.conf` line grants access to exactly one address, written as `/32`.
Widening it to `0.0.0.0/0` exposes port 5432 to the internet, where it is scanned
continuously and found within hours. That single character is the whole security
model of these scripts.

Password storage is set to `scram-sha-256`; `md5` has been deprecated since
PostgreSQL 10 and should not be used for a new install.

These are notes from my own machines, offered as-is. Read a script before you run
it — that applies to mine as much as to anyone else's.
