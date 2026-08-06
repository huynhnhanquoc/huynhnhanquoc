# ideas

Proposals and design records, published before they were settled.

Two of these are historical: the shipped contract has moved past them, and each
document states so at the top rather than quietly pretending otherwise. The third
is a live specification for work that is not built yet.

- [RFC: 3-Tier Architecture & Secure Logic Capsules](logic-capsules-rfc.md) —
  client-triggered logic executed inside the host VM under explicit identity
  grants and gas metering. A proposal, not a shipped feature.
- [Ideaship: Evolution of the KitJS Hydration & Prerender Engine](kitjs-ideaship-kernel.md) —
  design dialogue on hydration, DOM morphing, and the server-client bridge.
  Historical; predates the current `kit.<service>.<method>()` contract.
- [KitJS V2: Pure HTML Component & Client Reactive Kernel Specification](kitjs-v2-specification.md) —
  the V2 specification in full. Superseded by the noun-first `kit.*` services.

Keeping a superseded specification online is a small cost. Deleting one removes
the only evidence of why the current design is shaped the way it is.
