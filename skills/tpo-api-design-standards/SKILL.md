---
name: tpo-api-design-standards
description: technical product owner guideline module: Api Design Standards. preserves source checklists, templates, gates, and execution rules.
---

<!--
Knowledge file for Technical Product Owner Agent.
Purpose: help the agent plan architecture, modules, implementation stages, reviews, and acceptance.
Use this file as reference material, not as a rigid law. Adapt to project context.
-->

# API Design Standards

## Purpose

This document defines API design standards for the Technical Product Owner Agent.

APIs must be consistent, secure, documented, versioned where needed, and easy for humans and AI agents to use correctly.

## API design goals

A good API should be:

- predictable
- resource-oriented where appropriate
- secure by default
- typed and documented
- version-aware
- easy to test
- consistent in errors
- consistent in pagination and filtering
- explicit about authentication and authorization
- stable enough for clients to rely on

## API first questions

Before designing endpoints, answer:

- Who is the client?
- What user flow does this API support?
- What resource is being accessed or changed?
- Who owns the resource?
- What permission is required?
- What input is valid?
- What output is safe to expose?
- What errors can happen?
- Is this action idempotent?
- Does it require audit logging?
- Does it require rate limiting?
- Does it expose sensitive business flows?

## Resource naming

Use nouns for resources.

Good:

```text
/users
/projects
/projects/{projectId}/tasks
/notifications
```

Avoid action-heavy endpoints when a resource model is clearer.

Less ideal:

```text
/getUser
/createProject
/doTaskUpdate
```

Actions are acceptable when the API represents a command that is not naturally CRUD.

Example:

```text
POST /projects/{projectId}:archive
POST /invoices/{invoiceId}:send
POST /ai/reports:generate
```

Use a consistent action style.

## HTTP methods

Use methods consistently.

| Method | Use |
|---|---|
| GET | Read data |
| POST | Create resource or execute command |
| PUT | Replace full resource |
| PATCH | Partially update resource |
| DELETE | Delete or archive resource |

GET must not change server state.

## Request and response contracts

Every API must define:

- endpoint
- method
- auth requirement
- authorization rule
- path parameters
- query parameters
- request body
- response body
- errors
- rate limits
- idempotency behavior if needed
- audit behavior if needed

## API contract template

```markdown
# API: [Name]

## Purpose
[What user flow this API supports]

## Endpoint
`METHOD /path`

## Authentication
Required / Not required

## Authorization
[Who can call this and on which objects]

## Path parameters
| Name | Type | Required | Description |
|---|---|---|---|

## Query parameters
| Name | Type | Required | Description |
|---|---|---|---|

## Request body
```json
{
}
```

## Response body
```json
{
}
```

## Error responses
| Status | Code | Message | Notes |
|---|---|---|---|

## Validation rules
- 

## Idempotency
- 

## Rate limits
- 

## Audit logging
- 

## Tests
- 
```

## Response format

Use a consistent response structure.

For single resource:

```json
{
  "data": {
    "id": "project_123",
    "name": "Example"
  }
}
```

For collection:

```json
{
  "data": [],
  "pagination": {
    "nextCursor": null
  }
}
```

For error:

```json
{
  "error": {
    "code": "PROJECT_NOT_FOUND",
    "message": "Project was not found or you do not have access.",
    "correlationId": "req_123"
  }
}
```

## Error standards

Errors must be safe and actionable.

Each error should include:

- stable error code
- human-readable message
- status code
- correlation ID
- retry guidance where useful

Do not expose:

- stack traces
- SQL queries
- internal provider payloads
- tokens
- secrets
- private data
- implementation internals

## Authentication and authorization

Every endpoint must explicitly state:

- whether authentication is required
- required role or permission
- object-level authorization rule
- admin-only conditions
- service-to-service conditions
- whether response fields differ by role

Object-level authorization is mandatory for endpoints that use user-controlled object IDs.

Bad:

```text
GET /projects/{projectId} checks only that user is logged in.
```

Good:

```text
GET /projects/{projectId} checks that user is logged in and is owner, member, admin, or has explicit access to this project.
```

## Pagination

Collections must define pagination.

Preferred for large datasets:

```text
cursor pagination
```

Define:

- default limit
- maximum limit
- cursor format
- sorting rule
- stable ordering
- filtering behavior

Example:

```text
GET /projects?limit=50&cursor=abc
```

## Filtering and sorting

Filtering and sorting must be explicit.

Example:

```text
GET /tasks?status=open&assigneeId=user_123&sort=created_at_desc
```

Rules:

- document allowed filter fields
- document allowed sort fields
- validate all filter values
- apply authorization before returning results
- prevent expensive unbounded queries

## Versioning

Use versioning when external clients depend on the API.

Options:

```text
/api/v1/projects
Accept: application/vnd.company.v1+json
```

Choose one versioning method and use it consistently.

Document:

- current version
- deprecated version
- migration path
- breaking changes
- sunset date

## Idempotency

Use idempotency keys for operations that may be retried.

Required for:

- payment creation
- billing updates
- order creation
- webhook processing
- imports
- AI generation requests that create persistent records
- notification dispatch

Example:

```text
Idempotency-Key: 6d9a4d7b-...
```

## Webhooks

Webhook endpoints must define:

- provider
- event types
- signature verification
- replay protection
- idempotency
- payload schema
- retry handling
- dead-letter behavior
- audit events
- failure alerts

Do not trust webhook payloads without signature verification where provider supports it.

## Rate limiting and abuse protection

Public and sensitive APIs should define:

- rate limits
- burst limits
- user limits
- IP limits where appropriate
- organization limits
- provider cost limits
- response to abuse
- monitoring

Especially protect:

- login
- password reset
- AI generation
- scraping-prone endpoints
- business-critical flows
- payment or billing flows
- invite and referral flows

## API security checklist

The Technical Product Owner Agent must verify:

- Does every endpoint define auth?
- Does every object ID have object-level authorization?
- Are sensitive fields protected?
- Are inputs validated?
- Are unknown fields handled?
- Are errors safe?
- Are rate limits defined?
- Are expensive operations bounded?
- Are external APIs treated as untrusted?
- Are deprecated APIs inventoried?
- Are admin and user functions separated?
- Are audit logs defined for sensitive actions?
- Are tests required for unauthorized access?

## API design review output

When reviewing API work, the agent should produce:

```markdown
# API Review

## Summary
Accepted / Needs changes / Rejected

## Contract completeness
- Endpoint:
- Method:
- Auth:
- Input:
- Output:
- Errors:

## Security review
- Authentication:
- Authorization:
- Object-level access:
- Sensitive fields:
- Rate limits:

## Consistency review
- Naming:
- Response format:
- Errors:
- Pagination:
- Versioning:

## Required fixes
1. 

## Acceptance criteria
- 
```

## Common mistakes to reject

Reject API design when:

- endpoints have unclear resource ownership
- endpoints are action-heavy without reason
- object-level authorization is missing
- response exposes internal fields
- errors leak internals
- pagination is missing for collections
- rate limits are missing for expensive endpoints
- API versioning is unclear
- deprecated endpoints are not inventoried
- webhook verification is missing
- tests do not cover unauthorized access
