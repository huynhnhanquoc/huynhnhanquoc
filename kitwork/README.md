# kitwork

Technical reports on the Kitwork engine.

Fifty documents, written while building a sovereign multi-tenant runtime in Go.

Some describe what the engine does today. Others are specifications, plans, and
audits written before the work, or in the middle of it. Each one says which it is.

If you want the ideas rather than the reports, start with
[concepts](../concepts/) instead — thirty notes, in reading order, written for
someone starting from nothing.

## Architecture

What the engine is, and where it is weak.

- [Architecture Overview](architecture/architecture-overview.md)
- [Core Concepts & Glossary](architecture/core-concepts.md)
- [Execution Lifecycle](architecture/execution-lifecycle.md)
- [Security & Isolation Model](architecture/security-and-isolation.md)
- [Performance Review & Hotspot Analysis](architecture/performance-review.md)
- [Technical Risks & Vulnerability Audit](architecture/technical-risks.md)
- [Consistency Audit](architecture/consistency-audit.md)
- [System Verification & Architectural Audit (2026)](architecture/system-verification-and-engine-audit-2026.md)

## Developer experience

What it is like to actually use the thing.

- [Developer Journey Specification](developer-experience/developer-journey.md)
- [API Design Review](developer-experience/api-design-review.md)
- [CLI Evaluation & Specification](developer-experience/cli-evaluation.md)
- [Console — UI/UX Specification & Wireframe Blueprint](developer-experience/console-specification.md)
- [Error Experience & Diagnostic Catalogue](developer-experience/error-experience.md)
- [Starter Project Specification](developer-experience/starter-design.md)
- [Sample Applications Specification](developer-experience/sample-applications-spec.md)
- [Testing Strategy & Quality Assurance Plan](developer-experience/testing-strategy.md)
- [Developer Experience Backlog](developer-experience/developer-experience-backlog.md)

## Agent runtime

Running code a model wrote, under the same limits a tenant gets.

- [Agent Runtime Readiness Assessment](agent-runtime/agent-runtime-readiness.md)
- [Domain Model Specification](agent-runtime/agent-runtime-domain-model.md)
- [Engine Capability Mapping Matrix](agent-runtime/agent-runtime-capability-map.md)
- [Run Execution Lifecycle](agent-runtime/agent-run-lifecycle.md)
- [Vertical Slice 1 Specification](agent-runtime/agent-runtime-slice-1.md)
- [Skill Contract & Side-Effect Classification](agent-runtime/skill-contract.md)
- [WithAI Newsroom — Workflow Specification](agent-runtime/withai-newsroom-workflow.md)
- [WithAI Newsroom — Data Model Specification](agent-runtime/withai-newsroom-data-model.md)
- [WithAI Newsroom — Skill Manifest Register](agent-runtime/withai-newsroom-skill-list.md)
- [WithAI Newsroom — Testing & Verification Plan](agent-runtime/withai-newsroom-testing-plan.md)

## KitURL

One product, specified end to end on top of the engine.

- [MVP Product Scope Specification](kiturl/kiturl-mvp-scope.md)
- [Kitwork Capability Mapping Matrix](kiturl/kiturl-kitwork-capability-map.md)
- [Vertical Slice Implementation Plan](kiturl/kiturl-implementation-plan.md)
- [Quality Assurance & Testing Plan](kiturl/kiturl-testing-plan.md)

## Stabilization

Making it hold still long enough to ship.

- [Executive Summary](stabilization/executive-summary.md)
- [Stabilization Roadmap](stabilization/stabilization-roadmap.md)
- [Consolidated Stabilization Backlog](stabilization/stabilization-backlog.md)
- [Sprint 1 Plan](stabilization/sprint-1-plan.md)

## Release readiness

- [Release Scope Matrix (v1.0.0-RC1)](release-readiness/release-scope.md)
- [Release Candidate Plan (v1.0.0-RC1)](release-readiness/release-candidate-plan.md)
- [Public Release Checklist (v1.0.0-RC1)](release-readiness/release-checklist.md)
- [Versioning & Compatibility Strategy](release-readiness/versioning-and-compatibility.md)
- [Beta Package Checklist](release-readiness/beta-package-checklist.md)
- [Beta Participant Profile & Selection Criteria](release-readiness/beta-participant-profile.md)
- [Beta User Task Suite](release-readiness/beta-user-tasks.md)
- [Public Beta Feedback Instrument](release-readiness/beta-feedback-form.md)
- [First-User Experience Audit](release-readiness/first-user-experience-audit.md)
- [External Validation Goals & Metrics](release-readiness/external-validation-goals.md)

## Public story

How the work gets told, and whether the telling is true.

- [The Core Story: Building a Sovereign Go VM Runtime](public-story/kitwork-story.md)
- [Website Copy Drafts](public-story/website-copy-drafts.md)
- [20-Part Technical Article Series Outline](public-story/technical-articles-series.md)
- [Short Content & Build-in-Public Social Pack](public-story/short-content-pack.md)
- [Content Claims Audit](public-story/content-claims-audit.md)

## Elsewhere

The engine itself lives at [kitwork.io](https://kitwork.io/).
