# Hallucination

> **A first-principles, deep engineering guide to understanding Hallucination in AI and software runtimes.**

## What is it?

The generation of facts, citations, or data that appear plausible but are incorrect or unsupported by source documents.

### Mental Architecture

```text
[Query] ──► [Static Weight Lookup] ──► [Hallucination risk: high]
[Query] ──► [Search index / RAG]  ──► [Context Injection] ──► [Fact-grounded Output]
```

## Why does it matter?

It is the primary blocker for deploying generative AI in mission-critical environments (medicine, finance, legal).

## Core Mechanics & Details

- Stems from predictive next-token probability heuristics without verification.
- Mitigated by RAG, verification models, and low inference temperatures.

## Code Implementation Reference

Here is a simplified code example illustrating the logic of **Hallucination**:

```javascript
def verify_hallucinations(response, source_documents):
    # Extract assertions and verify them against ground-truth docs
    assertions = extract_assertions(response)
    for assertion in assertions:
        if not find_source_support(assertion, source_documents):
            # Flag or rewrite hallucinated claim
            response = rewrite_claim(response, assertion)
    return response
```

## Key Tradeoffs & Failure Modes

1. **Tradeoff between speed and accuracy:** Probabilistic calculations inside hallucination flows may increase latency if execution loops are not rate-limited.
2. **Context Leakage:** Unbounded inputs can exceed limits or trigger memory exhaustion in high-throughput applications.

## Related Concepts

- [reliability](../../runtime/reliability/README.md)

---

*Part of the open-source inpublic knowledge network. Managed by [inpublic.vn](https://inpublic.vn).*
