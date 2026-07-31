# Guardrails

> **A first-principles, deep engineering guide to understanding Guardrails in AI and software runtimes.**

## What is it?

An active runtime middleware layer surrounding model calls to validate inputs and outputs against policies.

### Mental Architecture

```text
[User Request] ──► [Input Guard] ──► [Model Inference] ──► [Output Guard] ──► [Response]
                             │                                           │
                             └──────────── (Safety Triggered) ◄──────────┘
```

## Why does it matter?

It guarantees that software behavior remains safe, compliant, and correctly formatted, regardless of model errors.

## Core Mechanics & Details

- Intercepts prompts to scan for SQL injections, toxic text, or system prompt leaks.
- Validates output schemas (e.g., ensuring output JSON matches a target API format).

## Code Implementation Reference

Here is a simplified code example illustrating the logic of **Guardrails**:

```javascript
class OutputGuardrail:
    def __init__(self, target_schema):
        self.schema = target_schema

    def validate_output(self, response_text):
        import json
        try:
            data = json.loads(response_text)
            # Verify fields match target schema
            for field in self.schema:
                if field not in data:
                    return False, f"Missing field: {field}"
            return True, data
        except json.JSONDecodeError:
            return False, "Output is not valid JSON."
```

## Key Tradeoffs & Failure Modes

1. **Tradeoff between speed and accuracy:** Probabilistic calculations inside guardrails flows may increase latency if execution loops are not rate-limited.
2. **Context Leakage:** Unbounded inputs can exceed limits or trigger memory exhaustion in high-throughput applications.

## Related Concepts

- [safety](../safety/README.md)
- [security](../security/README.md)

---

*Part of the open-source inpublic knowledge network. Managed by [inpublic.vn](https://inpublic.vn).*
