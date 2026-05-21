---
name: tpo-module-structure-guidelines
description: technical product owner guideline module: Module Structure Guidelines. preserves source checklists, templates, gates, and execution rules.
---

<!--
Knowledge file for Technical Product Owner Agent.
Purpose: help the agent plan architecture, modules, implementation stages, reviews, and acceptance.
Use this file as reference material, not as a rigid law. Adapt to project context.
-->

# Module Structure Guidelines

## Purpose

This document defines how the Technical Product Owner Agent should plan and review module structure for a software project.

The goal is to make the project understandable for humans and AI agents, easy to change, easy to test, and safe to scale.

## What is a module?

A module is a bounded part of the system that owns a specific responsibility.

A good module has:

- a clear product or technical purpose
- its own internal files
- a defined public interface
- minimal dependency on other modules
- tests for important behavior
- documentation for non-obvious decisions
- ownership of specific data, flows, or capabilities

A module is not just a folder. A folder becomes a module only when it has a responsibility and a boundary.

## Recommended default structure

For most MVP and early-stage products, use a modular monolith with clear feature modules.

```text
src/
  app/
    routes/
    layout/
    providers/
  features/
    auth/
    users/
    onboarding/
    dashboard/
    notifications/
  shared/
    api/
    config/
    database/
    logging/
    permissions/
    ui/
    utils/
  integrations/
    openai/
    telegram/
    email/
    payments/
  jobs/
    queues/
    workers/
  tests/
    unit/
    integration/
    e2e/
  docs/
```

This structure is flexible enough for MVP and strong enough to become a larger system later.

## Feature module structure

Each feature module should contain what it needs to function.

Example:

```text
features/users/
  README.md
  index.ts
  types.ts
  permissions.ts
  validation.ts
  api.ts
  service.ts
  repository.ts
  components/
  hooks/
  tests/
```

Not every module needs every file. The agent should avoid empty structure for structure's sake.

## Backend module structure

For backend-heavy projects:

```text
src/
  modules/
    users/
      users.controller.ts
      users.service.ts
      users.repository.ts
      users.types.ts
      users.validation.ts
      users.permissions.ts
      users.events.ts
      users.test.ts
    billing/
    notifications/
  core/
    config/
    database/
    errors/
    logging/
    auth/
  integrations/
  jobs/
  migrations/
```

## Frontend module structure

For frontend-heavy projects:

```text
src/
  app/
  pages/
  features/
    user-profile/
      components/
      hooks/
      api/
      state/
      validation/
      tests/
    dashboard/
  entities/
    user/
    project/
    task/
  shared/
    ui/
    lib/
    config/
    assets/
```

Use a structure where UI, state, validation, and API calls for a feature are easy to locate.

## Module boundary rules

### Rule 1: Import inward, not everywhere

Modules should not import each other's internals.

Allowed:

```text
features/billing imports features/users public API
```

Not allowed:

```text
features/billing imports features/users/internal/private-file.ts
```

Each module should expose a public API through an `index.ts` or equivalent entry file.

### Rule 2: Shared is not a trash bin

The `shared` folder should contain stable reusable utilities, not random product logic.

Allowed in `shared`:

- generic UI components
- configuration helpers
- logging utilities
- date formatting
- API client base
- permission helpers
- database connection

Not allowed in `shared`:

- business logic specific to one feature
- temporary hacks
- product decisions hidden as utility functions
- data mutations for a specific module

### Rule 3: Infrastructure stays behind adapters

External services should be isolated.

Bad:

```text
features/users/service.ts directly calls Stripe, Telegram, OpenAI, and database clients
```

Better:

```text
features/users/service.ts calls billingAdapter, notificationAdapter, aiAdapter
integrations/stripe implements billingAdapter
integrations/telegram implements notificationAdapter
integrations/openai implements aiAdapter
```

### Rule 4: Dependencies must have a direction

Pick and document a dependency direction.

Recommended:

```text
UI -> feature API -> application service -> repository/integration
```

Avoid circular dependencies:

```text
users -> billing -> notifications -> users
```

If a circular dependency appears, create a domain event or shared abstraction.

### Rule 5: One module owns one data area

Each data entity should have one owner module.

Example:

| Entity | Owner module | Other modules can |
|---|---|---|
| User | users | read public profile through users API |
| Subscription | billing | request billing status through billing API |
| Notification | notifications | enqueue messages |
| Project | projects | request project access through projects API |

## Module README template

Each important module should include a `README.md`.

```markdown
# Module: [Name]

## Responsibility
What this module owns.

## Public interface
What other modules can call.

## Owned data
What entities or tables this module owns.

## Important flows
1. 
2. 
3. 

## Dependencies
- Internal:
- External:

## Events
Published events:
- 

Consumed events:
- 

## Permissions
Who can access what?

## Tests
- Unit:
- Integration:
- E2E:

## Known risks
- 
```

## Module planning template

When creating a module plan, the agent should produce:

```markdown
# Module Plan

## Module list
| Module | Type | Responsibility | Data owner | Dependencies | Priority |
|---|---|---|---|---|---|

## Dependency map
[Plain-language explanation or diagram]

## Public interfaces
| Module | Public methods or APIs | Consumers |
|---|---|---|

## Shared components
| Component | Purpose | Used by |
|---|---|---|

## Integration adapters
| Adapter | External service | Used by | Failure handling |
|---|---|---|---|

## Risky boundaries
| Boundary | Risk | Mitigation |
|---|---|---|
```

## When to split a module

Split a module when:

- it has more than one clear responsibility
- changes for unrelated reasons happen inside the same module
- tests are hard to write because many dependencies are mixed
- different teams or agents need to work on separate parts
- the module has too many public functions
- business logic is duplicated to avoid touching the module
- performance or scaling requirements differ from the rest of the system

Do not split a module only because it has many files. Split because responsibility is unclear.

## When to merge modules

Merge modules when:

- they always change together
- one module is only a thin wrapper around another
- the boundary creates more complexity than clarity
- the split causes excessive coordination
- there is no independent product responsibility

## Module review checklist

The Technical Product Owner Agent must check:

- Is each module name clear?
- Does each module have one responsibility?
- Is there an owner for each data entity?
- Are dependencies one-directional?
- Are circular dependencies avoided?
- Is shared code truly shared?
- Are integrations isolated behind adapters?
- Are public interfaces documented?
- Are private internals protected?
- Are tests located close to the logic they validate?
- Can the AI Developer Agent implement one module without needing hidden context?
- Can a future developer understand the module from its README?

## Output quality bar

A module structure is acceptable only if a new AI Developer Agent can answer:

```text
Where should this feature live?
Which module owns this data?
Which public interface should I call?
Where do I add tests?
What should not be imported directly?
```
