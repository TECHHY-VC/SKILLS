---
name: tpo-backend-architecture
description: technical product owner guideline module: Backend Architecture. preserves source checklists, templates, gates, and execution rules.
---

<!--
Knowledge file for Technical Product Owner Agent.
Purpose: help the agent plan architecture, modules, implementation stages, reviews, and acceptance.
Use this file as reference material, not as a rigid law. Adapt to project context.
-->

# Backend Architecture

## Purpose

This document defines backend architecture rules for the Technical Product Owner Agent.

The backend must be reliable, secure, testable, observable, and aligned with product requirements.

## Recommended backend architecture layers

Use these logical layers even if the framework names them differently.

```text
API layer
  receives requests, validates input shape, checks authentication, returns responses

Application layer
  executes use cases, coordinates domain logic, transactions, and side effects

Domain layer
  contains core business rules and product concepts

Infrastructure layer
  database, external APIs, queues, email, file storage, AI providers, cache

Observability layer
  logs, metrics, traces, audit events, alerts
```

## Responsibilities by layer

| Layer | Responsibility | Must not do |
|---|---|---|
| API | HTTP routing, request validation, response formatting, auth handoff | complex business logic |
| Application | use cases, workflow orchestration, transaction boundaries | direct UI logic |
| Domain | business rules, invariants, decisions | database or HTTP details |
| Infrastructure | persistence, integrations, queues, cache | product decisions |
| Observability | logs, metrics, audit events | change product behavior |

## Default backend folder structure

```text
src/
  modules/
    auth/
    users/
    projects/
    tasks/
    notifications/
  core/
    config/
    database/
    errors/
    logging/
    security/
    validation/
  integrations/
    openai/
    telegram/
    email/
    payments/
  jobs/
    queues/
    workers/
  migrations/
  tests/
```

## Request lifecycle

Every backend request should follow this flow:

```text
1. Receive request
2. Parse and validate input
3. Authenticate user or service
4. Authorize action
5. Execute application use case
6. Read or write data through repository
7. Trigger side effects through adapters or events
8. Return typed response
9. Log useful operational events
10. Record audit events for sensitive operations
```

## Authentication and authorization

Authentication answers:

```text
Who is making the request?
```

Authorization answers:

```text
Is this actor allowed to do this action on this object?
```

The agent must require both.

Minimum authorization checks:

- role-level access
- object-level access
- function-level access
- property-level access for sensitive fields
- admin action separation
- service-to-service access
- audit logs for sensitive actions

Bad:

```text
User is logged in, so allow reading any object by ID.
```

Good:

```text
User is logged in and has access to this exact object through ownership, role, team membership, or explicit permission.
```

## Validation rules

Validate at the boundary.

Every public API must validate:

- required fields
- field types
- allowed enum values
- string length limits
- numeric ranges
- IDs and UUID formats
- file type and size if uploads exist
- date and timezone assumptions
- nested object shape
- unknown fields policy

Do not trust frontend validation. Frontend validation is for user experience. Backend validation is for system correctness.

## Error handling

Use structured errors.

Each error should define:

- machine-readable code
- human-readable message
- HTTP status or equivalent transport status
- safe details for the client
- internal details for logs
- whether it is retryable
- correlation ID

Example:

```json
{
  "error": {
    "code": "PROJECT_NOT_FOUND",
    "message": "Project was not found or you do not have access.",
    "correlationId": "req_123"
  }
}
```

Do not leak internal stack traces, SQL details, tokens, secrets, or provider responses to users.

## Data access

Use repositories or data access modules to isolate database logic.

A service should not scatter raw queries everywhere.

Recommended:

```text
application service -> repository -> database client
```

Repository responsibilities:

- query construction
- persistence mapping
- transaction participation
- data retrieval by use case
- database-specific behavior

Repository must not own product decisions. Product decisions belong to the domain or application layer.

## Transactions

Use transactions when a use case changes multiple records that must remain consistent.

Document:

- transaction boundary
- rollback behavior
- side effects inside or outside transaction
- retry policy
- idempotency key if repeated requests are possible

Avoid sending irreversible external side effects inside a database transaction unless the architecture explicitly handles retries and consistency.

## Background jobs

Use jobs for:

- slow operations
- external API calls that can be retried
- email or notification delivery
- AI processing
- imports and exports
- scheduled maintenance
- data synchronization

Each job must define:

- input payload
- idempotency strategy
- retry strategy
- maximum retries
- dead-letter behavior
- timeout
- logging
- metrics
- alert condition

## Idempotency

Important write operations should be idempotent.

Required for:

- payments
- billing changes
- imports
- external webhooks
- AI-generated actions that can be retried
- notification sending
- order creation
- account creation

The agent should ask:

```text
What happens if the same request is sent twice?
```

## External integrations

All external integrations should be behind adapters.

Adapter must define:

- provider name
- purpose
- input contract
- output contract
- authentication
- timeout
- retry policy
- rate limit handling
- failure mode
- mocked implementation for tests

Example:

```text
integrations/openai/
  openai.client.ts
  openai.adapter.ts
  openai.types.ts
  openai.errors.ts
  openai.test.ts
```

## Security checklist

The backend must include:

- secrets stored outside source code
- least-privilege credentials
- hashed passwords if passwords are used
- secure session or token handling
- CSRF protection where applicable
- CORS policy
- rate limiting
- request size limits
- object-level authorization
- audit logs
- input validation
- dependency vulnerability scanning
- safe file upload handling
- safe webhook verification
- safe third-party API consumption

## Observability checklist

For each important use case, define:

- structured logs
- correlation ID
- request duration
- error rate
- success rate
- queue depth if jobs exist
- external provider latency
- audit event if sensitive
- alert threshold

Do not log secrets, tokens, full personal data, or private payloads.

## Backend task template for AI Developer Agent

```markdown
# Backend Task

## Goal
[What backend behavior must be implemented]

## Scope
Included:
- 

Excluded:
- 

## Files and modules
Expected module:
- 

Expected files:
- 

## API contract
Endpoint:
Method:
Auth:
Input:
Output:
Errors:

## Data changes
Tables or entities:
Migrations:
Indexes:
Constraints:

## Business rules
- 

## Authorization rules
- 

## Side effects
- Jobs:
- Events:
- Notifications:
- External APIs:

## Observability
- Logs:
- Metrics:
- Audit events:

## Tests required
- Unit:
- Integration:
- E2E:

## Acceptance criteria
- 
```

## Backend review checklist

The Technical Product Owner Agent must check:

- Is the request validation complete?
- Is authentication required where needed?
- Is authorization object-level, not just route-level?
- Are errors structured and safe?
- Is data access isolated?
- Are transaction boundaries correct?
- Are retries and idempotency handled?
- Are external APIs behind adapters?
- Are secrets not hardcoded?
- Are logs useful and safe?
- Are tests covering success, failure, authorization, and edge cases?
- Does the implementation match the technical specification?
- Can the system be operated in production?
