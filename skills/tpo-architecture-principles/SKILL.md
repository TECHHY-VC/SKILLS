---
name: tpo-architecture-principles
description: technical product owner guideline module: Architecture Principles. preserves source checklists, templates, gates, and execution rules.
---

<!--
Knowledge file for Technical Product Owner Agent.
Purpose: help the agent plan architecture, modules, implementation stages, reviews, and acceptance.
Use this file as reference material, not as a rigid law. Adapt to project context.
-->

# Architecture Principles

## Purpose

This document defines the architecture principles that the Technical Product Owner Agent must use when planning a software product, reviewing an implementation, or giving tasks to an AI Developer Agent.

The goal is to create systems that are understandable, maintainable, secure, testable, observable, scalable, and aligned with product requirements.

## Core architecture principles

### 1. Start from the product goal

Architecture must be derived from the business goal, user journey, constraints, risk level, and expected scale.

Before choosing technologies, the agent must clarify:

- What user problem does the product solve?
- What is the MVP scope?
- What are the critical user flows?
- What data must be stored, protected, or synchronized?
- What integrations are required?
- What quality attributes matter most: speed, reliability, security, simplicity, cost, extensibility, compliance?

Architecture is wrong if it is technically impressive but does not serve the product outcome.

### 2. Separate domains, modules, and technical layers

The system must be decomposed into clear domains and modules.

A module should have:

- one clear responsibility
- defined inputs and outputs
- a public interface
- internal implementation hidden from other modules
- tests around its important behavior
- minimal dependency on unrelated modules

Avoid modules that are organized only by technical file type and not by product responsibility.

Bad example:

```text
controllers/
services/
utils/
helpers/
```

Better example:

```text
features/
  users/
  billing/
  onboarding/
  notifications/
shared/
  auth/
  config/
  database/
  logging/
```

### 3. High cohesion, low coupling

Each module should own a coherent part of the product. Dependencies between modules must be explicit and minimal.

The agent should reject architecture where:

- many modules directly mutate the same data
- business logic is duplicated across UI, API handlers, and database scripts
- global state controls critical behavior
- low-level infrastructure leaks into product logic
- circular dependencies exist
- one change requires editing many unrelated files

### 4. Domain logic must be protected

Business rules should not be hidden inside UI components, raw route handlers, or database queries.

Product logic should live in a clear layer, for example:

```text
domain/
application/
services/
use-cases/
```

The exact names can vary, but the rule is stable:

- UI should render and collect input
- API layer should validate, authorize, and orchestrate
- application layer should execute use cases
- domain layer should hold core rules
- infrastructure layer should integrate with external services, databases, queues, and file storage

### 5. Design for change

The architecture must allow future changes without rewriting the whole system.

Design for change by using:

- clear module boundaries
- stable interfaces between modules
- versioned APIs when external clients depend on them
- replaceable adapters for external services
- migrations for database evolution
- feature flags for risky rollouts
- explicit deprecation strategy

Do not over-engineer for imaginary scale. Build simple boundaries now so that future scale remains possible.

### 6. Prefer simple architecture first

For MVP, start with the simplest architecture that preserves correctness and maintainability.

Recommended default:

```text
modular monolith first
clear internal modules
single database
typed API contracts
automated tests
observability from the start
```

Move to microservices only when there is a real reason:

- independent scaling requirements
- independent deployment requirements
- team ownership boundaries
- reliability isolation
- regulatory separation
- performance constraints

The agent must challenge premature microservices.

### 7. Design for failure

Every production system can fail. Architecture must include:

- retries with limits
- timeouts
- idempotency for write operations
- graceful degradation
- health checks
- background job retry policy
- circuit breaker where needed
- clear error handling
- backup and restore strategy
- recovery plan for failed deployments

For each critical flow, the agent should ask:

```text
What happens if this dependency is slow, unavailable, or returns incorrect data?
```

### 8. Security by design

Security is not a final checklist. It must be included in architecture from the beginning.

Minimum requirements:

- authentication model
- authorization model
- object-level authorization
- role and permission boundaries
- input validation
- output encoding where relevant
- secrets management
- audit logging for sensitive actions
- rate limiting for public endpoints
- safe handling of third-party APIs
- dependency vulnerability checks
- least privilege for services and users

The agent must not approve architecture without an access-control model.

### 9. Data ownership must be explicit

Each data entity must have:

- owner module
- source of truth
- lifecycle
- allowed mutations
- retention requirements
- privacy sensitivity
- audit requirements
- deletion behavior
- backup requirements

Avoid multiple modules writing to the same entity without a clear ownership rule.

### 10. Observability is part of architecture

Production readiness requires observability.

Every important module should define:

- logs
- metrics
- traces where useful
- alerts
- audit events
- dashboards for critical operations
- error reporting
- business events

The agent should reject "works locally" as a completion standard.

### 11. Documentation must match implementation

Architecture must be documented in a way that helps future development.

Minimum documentation:

- high-level architecture diagram
- module map
- data model
- API contracts
- integration map
- key decisions and trade-offs
- risks and mitigations
- deployment model
- operational runbook for critical flows

Outdated documentation should be treated as product debt.

## Architecture decision record template

Use this format when the agent makes an important architecture decision.

```markdown
# ADR: [Decision title]

## Status
Proposed / Accepted / Rejected / Superseded

## Context
What problem are we solving?
What constraints exist?
What alternatives were considered?

## Decision
What did we decide?

## Rationale
Why is this the best choice now?

## Consequences
Positive outcomes:
- 

Trade-offs:
- 

Risks:
- 

## Review date
When should this decision be revisited?
```

## Architecture planning output template

When asked to plan architecture, the agent should produce:

```markdown
# Architecture Plan

## Product goal
[What the product is trying to achieve]

## Main user flows
1. 
2. 
3. 

## Quality attributes
- Reliability:
- Security:
- Performance:
- Maintainability:
- Scalability:
- Cost:
- Compliance:

## System context
- Users:
- Admins:
- External systems:
- Data sources:
- Notifications:
- Payment or billing:
- AI services:

## Proposed architecture
[Describe the architecture in plain language]

## Module map
| Module | Responsibility | Owns data | Public interface | Dependencies |
|---|---|---|---|---|

## Data model summary
| Entity | Owner module | Main fields | Lifecycle | Sensitivity |
|---|---|---|---|---|

## API surface
| API | Method | Purpose | Auth | Input | Output |
|---|---|---|---|---|---|

## Key flows
### Flow 1: [Name]
1. 
2. 
3. 

## Security model
- Authentication:
- Authorization:
- Object-level access:
- Sensitive data:
- Audit log:

## Observability
- Logs:
- Metrics:
- Alerts:
- Dashboards:

## Risks and mitigations
| Risk | Impact | Mitigation | Owner |
|---|---|---|---|

## Implementation phases
| Phase | Scope | Deliverables | Acceptance criteria |
|---|---|---|---|

## Open questions
- 
```

## Architecture review checklist

The Technical Product Owner Agent must verify:

- Does the architecture match the product goal?
- Are modules aligned with domain responsibilities?
- Are module boundaries clear?
- Is the data ownership clear?
- Are APIs explicit and typed?
- Is authorization defined for each sensitive operation?
- Are failure modes considered?
- Are external integrations isolated behind adapters?
- Are logs, metrics, and alerts planned?
- Are database migrations considered?
- Is the architecture simple enough for MVP?
- Is there a clear path to scale later?
- Are trade-offs documented?
- Can an AI Developer Agent implement the plan without guessing?

## Sources and reference standards

This template is influenced by cloud architecture design principles, Twelve-Factor App methodology, API design practices, OWASP API Security guidance, PostgreSQL documentation, React component design guidance, MDN accessibility guidance, and W3C ARIA practices.
