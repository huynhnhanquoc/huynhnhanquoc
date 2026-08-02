# 💻 Developer Stack & Setup — Huỳnh Nhân Quốc

> **Software engineering tech stack, developer tools, VPS infrastructure, editor setup, and environment preferences.**

---

## 🛠️ Software Engineering Stack

| Domain | Preferred Technology | Reason & Philosophy |
| :--- | :--- | :--- |
| **Primary Language** | **Go (Golang)** | High performance, single static binary compilation, stdlib-first, simple concurrency. |
| **Web Runtime** | **Kitwork Engine** | Custom Go VM host + JS subset logic engine; zero V8 overhead. |
| **Database** | **SQLite (WAL Mode) & PostgreSQL** | Embedded zero-ops SQLite WAL mode for single VPS; Postgres for multi-tenant data. |
| **Front-End** | **Vanilla JS / HTML / Vanilla CSS** | Maximum control, zero node_modules bloat, fast load times (<100ms). |
| **Server & Reverse Proxy** | **Caddy Server** | AutoSSL ACME certificates, HTTP/3 QUIC out of the box, simple Caddyfile syntax. |
| **Infrastructure** | **Hetzner VPS / DigitalOcean** | High-performance CPU VPS ($5–$20/mo) delivering maximum cost efficiency. |

---

## 🧰 Developer Tools & Environment

- ⚙️ **Operating System**: Windows / Linux VPS
- 📝 **Code Editor**: VS Code / Antigravity IDE
- ⚡️ **Terminal**: PowerShell / Bash CLI
- 🐳 **Containerization**: Docker Compose
- 🌐 **Web Analytics**: Plausible / Umami (Privacy-first)

---

[← Back to Main README](./README.md)
