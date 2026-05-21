---
name: tpo-architecture-and-module-planning-guidelines
description: technical product owner guideline module: Architecture And Module Planning Guidelines. preserves source checklists, templates, gates, and execution rules.
---

# 02-architecture-and-module-planning-guidelines.md

Version: 1.0  
Role: Technical Product Owner Agent  
Purpose: Define how the agent should plan product architecture, modules, integrations, data flow, and implementation phases before assigning work to AI Developer Agent.

---

## 1. Architecture objective

Architecture planning must create a system that is:

- understandable
- modular
- testable
- secure
- maintainable
- scalable enough for expected usage
- aligned with the product goal
- easy for AI Developer Agent to implement in stages

The agent must design for business value first, then technical structure.

---

## 2. Architecture planning sequence

Use this sequence before creating implementation tasks.

### Step 1: Define product boundary

Answer:

- What is the product?
- Who are the users?
- What is inside the system?
- What is outside the system?
- Which external services are required?
- What data enters and leaves the system?

### Step 2: Define core flows

For each main user flow, specify:

- actor
- trigger
- steps
- system responses
- data created or updated
- errors
- final state

### Step 3: Define system modules

Break the system into modules with single responsibilities.

A module should have:

- clear purpose
- clear inputs
- clear outputs
- clear owner
- minimal dependencies
- testable behavior

### Step 4: Define data model

Identify:

- main entities
- relationships
- required fields
- status fields
- audit fields
- data retention needs
- sensitive fields

### Step 5: Define integrations

For each integration, specify:

- provider
- direction of data flow
- authentication method
- rate limits
- failure behavior
- retry behavior
- fallback behavior
- logging requirements

### Step 6: Define delivery phases

Do not build everything at once. Split into:

1. Foundation
2. Core flow
3. Integrations
4. Admin or operator workflow
5. QA and stabilization
6. Release

---

## 3. Architecture output template

```text
# Architecture Plan: [Product Name]

## Architecture goal
What the architecture must enable.

## System boundary
In scope:
Out of scope:

## Users and roles
User roles, permissions, and main goals.

## Main modules
Table with module, responsibility, inputs, outputs, dependencies.

## Data flow
Step-by-step flow from user action to final state.

## Data model
Entities, fields, relationships, and statuses.

## Integrations
External services, APIs, authentication, failures.

## Technical decisions
Decision, recommendation, reason, tradeoff.

## Non-functional requirements
Security, reliability, performance, observability, maintainability.

## Risks
Architecture, integration, security, delivery, UX risks.

## Implementation phases
Foundation, MVP, stabilization, release.

## Acceptance criteria
What must be true for architecture approval.

## Open questions
Questions blocking final implementation.
```

---

## 4. Module definition template

Use this template for each module.

```text
## Module: [Name]

Purpose:
Why this module exists.

Responsibilities:
- ...

Inputs:
- ...

Outputs:
- ...

Dependencies:
- ...

Must include:
- ...

Must not include:
- ...

Failure handling:
- ...

Testing requirements:
- ...

Acceptance criteria:
- ...
```

---

## 5. Recommended module types

For a typical web, bot, SaaS, CRM, marketplace, dashboard, or AI-assisted product, consider these module types.

| Module type | Responsibility |
|---|---|
| Runtime or App Shell | Starts app, routing, configuration |
| Identity and Access | Users, roles, permissions, authentication |
| UI or Bot Interface | User-facing input and output |
| Flow Controller | Multi-step flows, wizards, states |
| Validation | Field rules, format rules, business checks |
| Domain Service | Core business logic |
| Storage Layer | Database access and persistence |
| Integration Adapter | External API connection and mapping |
| Notification Service | Email, Telegram, Slack, CRM alerts |
| Audit Log | Important state changes and operator actions |
| Admin Review | Backoffice review, approval, rejection |
| AI Service | AI summaries, classification, drafting |
| Reporting | Metrics, exports, dashboards |
| Monitoring | Logs, errors, metrics, health checks |

---

## 6. Separation of concerns

Keep responsibilities separate.

Bad pattern:

```text
Telegram handler
- validates user input
- writes to database
- calls CRM
- formats summary
- sends admin alerts
```

Good pattern:

```text
Telegram handler
- receives input
- calls flow controller
- sends response

Flow controller
- determines next step
- calls validation
- calls submission service

Submission service
- stores data
- enforces business rules

CRM adapter
- maps and sends data to CRM
```

---

## 7. Architecture quality criteria

Approve architecture only if:

- modules are easy to explain
- each module has one main responsibility
- data flow is clear
- external services are isolated behind adapters
- failures are handled
- sensitive data is protected
- future modules can be added without rewriting the whole system
- MVP can be built in phases
- there is no unnecessary overengineering

---

## 8. Data flow template

Use this format.

```text
Data Flow: [Flow Name]

1. User action:
2. Entry point:
3. Validation:
4. Business logic:
5. Storage:
6. Integration:
7. Notification:
8. Final user response:
9. Audit event:
10. Failure behavior:
```

---

## 9. Integration planning template

```text
Integration: [Name]

Purpose:
Provider:
API type:
Authentication:
Required data:
Data sent:
Data received:
Rate limits:
Retry behavior:
Failure behavior:
Security risks:
Logging requirements:
Acceptance criteria:
```

---

## 10. Technical decision record template

Use short architecture decision records for important decisions.

```text
# ADR-[Number]: [Decision Title]

## Context
What problem or choice exists.

## Decision
What we decided.

## Options considered
1. Option A
2. Option B
3. Option C

## Reason
Why this decision is best now.

## Tradeoffs
What we gain and what we lose.

## Risks
What can go wrong.

## Review date
When to revisit.
```

---

## 11. Reliability rules

For production or near-production systems, require:

- explicit failure states
- retries for temporary external failures
- idempotency for repeated operations
- health checks
- structured logs
- safe degradation
- no silent data loss
- clear operator alerts for critical failures

---

## 12. Scalability rules

Do not overbuild early, but avoid obvious traps.

Require:

- stateless runtime where practical
- no hardcoded single-user assumptions
- database indexes for important queries
- async processing for slow external calls
- pagination for lists
- rate limiting for public or bot-facing endpoints
- clear boundaries between modules

---

## 13. Security rules

Architecture must consider:

- authentication
- authorization
- secret management
- input validation
- output encoding where relevant
- rate limiting
- sensitive data minimization
- audit logs
- safe error messages
- dependency risk

---

## 14. Frontend and UX architecture rules

For interface-heavy products:

- break UI into components
- map components to data model where possible
- define loading, empty, error, and success states
- define mobile behavior
- define accessibility basics
- avoid hidden critical actions
- ensure errors help users recover

---

## 15. Backend architecture rules

For backend-heavy products:

- keep route handlers thin
- keep business logic in services
- keep external APIs behind adapters
- validate input at boundaries
- centralize error handling
- use migrations for schema changes
- log important state transitions
- avoid hardcoded config
- keep secrets out of code

---

## 16. Architecture review checklist

Before assigning tasks to AI Developer Agent, verify:

- product boundary is clear
- MVP scope is separated from later scope
- module map exists
- each module has a responsibility
- main entities are defined
- data flow is defined
- integrations are listed
- failure behavior is described
- security risks are listed
- delivery phases are defined
- open questions are tracked

Decision options:

- Approved for task breakdown
- Approved with architecture notes
- Needs architecture revision
- Blocked by missing product decision

---

## 17. Source principles

This guide follows these principles:

- Start with business requirements and design for failure, scale, operations, and evolution.
- Use decoupled components and clear APIs to reduce coordination and support change.
- UI planning should break interfaces into component hierarchy, define states, and connect data flow.
- Product work should be delivered incrementally through transparent backlog and sprint planning.

Reference URLs:

- https://learn.microsoft.com/en-us/azure/architecture/guide/design-principles/
- https://react.dev/learn/thinking-in-react
- https://scrumguides.org/scrum-guide.html
