# thinking

Longer arguments, written to decide something rather than to explain it.

Where [concepts](../concepts/) defines a term and [kitwork](../kitwork/) reports
on a system, these are the pieces that had to be reasoned through before either
could be written. They argue a position, and some of them argue with an earlier
version of themselves.

- [Why Kitwork? The First-Principles Cloud Runtime Platform](why-kitwork.md) —
  the case for collapsing a fragmented cloud stack into one runtime, and what
  that costs.
- [Zero-V8 Architecture: Custom Stack-Based Go VM for Multi-Tenancy](zero-v8-architecture.md) —
  why the engine embeds neither V8, Node, nor Deno, and writes its own JavaScript
  bytecode VM in Go instead.
- [KitJS Kernel Design: Re-Thinking Client-Side Reactivity](kitjs-kernel-design.md) —
  the client kernel's second design pass. Kept as a record of how the contract
  evolved; the shipped API has since moved on, and the document says where.

Superseded documents stay here on purpose. A design is easier to judge when the
version it replaced is still readable.
