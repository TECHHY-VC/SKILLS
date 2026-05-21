---
name: tpo-database-design-rules
description: technical product owner guideline module: Database Design Rules. preserves source checklists, templates, gates, and execution rules.
---

<!--
Knowledge file for Technical Product Owner Agent.
Purpose: help the agent plan architecture, modules, implementation stages, reviews, and acceptance.
Use this file as reference material, not as a rigid law. Adapt to project context.
-->

# Database Design Rules

## Purpose

This document defines database design rules for the Technical Product Owner Agent.

The database must preserve correctness, support product flows, remain maintainable, and scale in a controlled way.

## Database design goals

A good database design should provide:

- clear data ownership
- correct relationships
- data integrity
- predictable migrations
- reasonable query performance
- auditability for sensitive changes
- privacy-aware retention
- backup and recovery readiness
- understandable naming
- compatibility with application architecture

## Start with product entities

Before designing tables, identify product entities.

Example:

```text
User
Organization
Project
Task
Comment
Notification
Subscription
AuditEvent
```

For each entity, define:

- what it represents
- who owns it
- who can create it
- who can read it
- who can update it
- who can delete it
- lifecycle states
- relationships
- sensitivity level
- audit requirements

## Entity design template

```markdown
# Entity: [Name]

## Purpose
[What this entity represents]

## Owner module
[Which module owns it]

## Fields
| Field | Type | Required | Unique | Default | Notes |
|---|---|---|---|---|---|

## Relationships
| Related entity | Relationship | Required | Delete behavior |
|---|---|---|---|

## Lifecycle
States:
- 

Transitions:
- 

## Permissions
Create:
Read:
Update:
Delete:

## Audit requirements
- 

## Retention requirements
- 
```

## Naming rules

Recommended naming:

- tables: plural snake_case, for example `users`, `project_members`
- columns: snake_case, for example `created_at`, `external_id`
- primary key: `id`
- foreign key: `[entity]_id`, for example `user_id`
- join tables: `[entity_a]_[entity_b]`, for example `project_members`
- timestamps: `created_at`, `updated_at`, `deleted_at`
- status fields: clear enum-like values, for example `draft`, `active`, `archived`

Use one naming style consistently.

## Required fields

Most tables should include:

```text
id
created_at
updated_at
```

Add when needed:

```text
deleted_at
created_by
updated_by
organization_id
status
external_id
metadata
version
```

Do not add generic `metadata` as a replacement for real schema. Use it only for flexible optional data that does not need strong querying or integrity.

## Primary keys

Every table should have a primary key.

Primary keys should be:

- stable
- unique
- not reused
- not meaningful business data
- safe to expose only if the security model allows it

Use UUID, ULID, cuid, or database-generated IDs according to project needs.

## Foreign keys and relationships

Use foreign keys to protect referential integrity when using a relational database.

Define delete behavior explicitly:

- `RESTRICT` or `NO ACTION` when child data must prevent deletion
- `CASCADE` when child data cannot exist without parent
- `SET NULL` when relationship is optional after parent deletion
- soft delete when historical trace must remain

Do not leave delete behavior unclear.

## Constraints

Use database constraints to protect important invariants.

Examples:

- not-null constraints for required fields
- unique constraints for unique business rules
- check constraints for valid ranges
- foreign keys for relationships
- exclusion constraints for special cases

Application validation is useful, but database constraints protect data even when bugs or scripts bypass application logic.

## Indexing rules

Indexes should be created for:

- foreign keys used in joins
- frequently filtered columns
- frequently sorted columns
- unique lookup fields
- compound queries used by critical screens
- partial indexes for common filtered subsets

Avoid indexing every column. Indexes improve reads but add write cost and maintenance overhead.

For each index, document:

- query it supports
- fields included
- expected cardinality
- whether it is unique
- whether it is partial
- owner module

## Migrations

Every database schema change must be represented as a migration.

Migration rules:

- migrations are version controlled
- migrations are reviewed before release
- migrations must be reversible when possible
- risky migrations require rollout plan
- large tables require safe migration strategy
- data migrations require backup and verification
- destructive changes require explicit approval

## Safe migration checklist

Before approval:

- Does the migration run on production-sized data?
- Does it lock critical tables?
- Is there a rollback plan?
- Are defaults safe?
- Are new not-null fields backfilled first?
- Are old fields kept during transition when needed?
- Is the application compatible during deployment?
- Is a backup available?
- Is the migration tested in staging?

## Data privacy

For every sensitive field, define:

- sensitivity category
- who can access it
- whether it must be encrypted
- whether it can be logged
- retention period
- deletion or anonymization rule
- audit rule

Sensitive fields include:

- personal data
- emails
- phone numbers
- documents
- KYC data
- billing data
- access tokens
- authentication secrets
- private business notes

Never store raw secrets unless strictly required. Prefer secret management systems.

## Audit logs

Audit logs should exist for sensitive or high-impact actions.

Audit event fields:

```text
id
actor_id
actor_type
action
object_type
object_id
organization_id
timestamp
ip_address
user_agent
before
after
reason
correlation_id
```

Do not store more personal data than necessary in audit logs.

## Data model planning template

```markdown
# Database Design

## Entity list
| Entity | Table | Owner module | Sensitivity | Notes |
|---|---|---|---|---|

## Relationships
| From | To | Type | Required | Delete behavior |
|---|---|---|---|---|

## Tables
### [table_name]
| Column | Type | Required | Default | Constraints | Notes |
|---|---|---|---|---|---|

Indexes:
- 

Permissions:
- 

Audit:
- 

## Migrations
| Migration | Purpose | Risk | Rollback |
|---|---|---|---|

## Query patterns
| Screen or API | Query | Index needed |
|---|---|---|

## Privacy and retention
| Data | Sensitivity | Retention | Deletion behavior |
|---|---|---|---|
```

## Database review checklist

The Technical Product Owner Agent must verify:

- Is every table tied to a product entity or technical need?
- Does every table have a primary key?
- Are required fields marked not null?
- Are unique business rules enforced?
- Are foreign keys defined where appropriate?
- Is delete behavior explicit?
- Are indexes justified by query patterns?
- Are migrations safe?
- Is sensitive data identified?
- Are audit logs defined for sensitive actions?
- Are backups and restore expectations documented?
- Are data ownership rules clear?
- Can AI Developer Agent implement schema without guessing?

## Common mistakes to reject

Reject database design when:

- relationships are described only in prose and not reflected in schema
- everything is stored in JSON without strong reason
- there are no foreign keys for critical relationships
- sensitive data has no access-control rule
- indexes are guessed without query patterns
- deletes are undefined
- migrations are missing
- audit events are missing for admin and sensitive actions
- database is treated as a passive storage dump rather than a consistency layer
