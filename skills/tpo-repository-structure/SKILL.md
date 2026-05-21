---
name: tpo-repository-structure
description: technical product owner guideline module: Repository Structure. preserves source checklists, templates, gates, and execution rules.
---

# Repository Structure

## Purpose

This document defines a standard repository structure for projects supervised by the Technical Product Owner Agent.

The repository structure should make the project easy to navigate, easy to test, easy to deploy, and easy for human or AI developers to extend safely.

## Repository principles

### 1. Structure should reflect product and architecture boundaries

Files should be grouped by responsibility and module, not randomly by implementation convenience.

A developer should be able to understand:

- where the application starts
- where business logic lives
- where UI components live
- where database models and migrations live
- where tests live
- where documentation lives
- where deployment configuration lives

### 2. Keep root clean

The repository root should contain only high-value files and top-level directories.

Avoid dumping source files, random notes, generated output, temporary experiments, and local scripts in the root.

### 3. Separate source, tests, docs, scripts, and infrastructure

A clear repository separates:

- application source code
- tests
- documentation
- developer scripts
- deployment and infrastructure files
- CI/CD configuration
- generated build artifacts

### 4. Make ownership visible

Critical areas should have clear ownership through documentation, CODEOWNERS, or module owners.

This helps code review, accountability, and AI-agent supervision.

## Recommended full-stack structure

Use this as a default starting point and adapt to the actual stack.

```text
project-root/
  README.md
  CONTRIBUTING.md
  SECURITY.md
  CHANGELOG.md
  LICENSE
  .gitignore
  .env.example

  docs/
    product/
    architecture/
    api/
    operations/
    decisions/
      adr-0001-record-architecture-decisions.md

  apps/
    web/
      src/
      tests/
      public/
      package.json
    admin/
      src/
      tests/
      public/
      package.json

  services/
    api/
      src/
        routes/
        controllers/
        services/
        repositories/
        models/
        validators/
        middleware/
        integrations/
        jobs/
        config/
        utils/
      tests/
        unit/
        integration/
        contract/
      migrations/
      package.json

  packages/
    shared/
      src/
      tests/
    ui/
      src/
      tests/
    config/
      src/

  database/
    migrations/
    seeds/
    schema/
    docs/

  infra/
    docker/
    terraform/
    kubernetes/
    ci/
    monitoring/

  scripts/
    dev/
    build/
    deploy/
    maintenance/

  tests/
    e2e/
    fixtures/
    performance/
    security/

  .github/
    workflows/
    ISSUE_TEMPLATE/
    PULL_REQUEST_TEMPLATE.md
    CODEOWNERS
```

## Alternative simple structure for smaller MVPs

Use this when the project is small and does not need a monorepo.

```text
project-root/
  README.md
  CONTRIBUTING.md
  SECURITY.md
  CHANGELOG.md
  .gitignore
  .env.example

  docs/
    product.md
    architecture.md
    api.md
    roadmap.md

  src/
    routes/
    controllers/
    services/
    repositories/
    models/
    validators/
    middleware/
    integrations/
    config/
    utils/

  frontend/
    components/
    pages/
    hooks/
    services/
    styles/
    tests/

  tests/
    unit/
    integration/
    e2e/

  migrations/
  scripts/
  infra/
```

## Root files

### README.md

Must explain:

- what the project does
- how to install dependencies
- how to run locally
- how to run tests
- how to configure environment variables
- project architecture summary
- main commands
- deployment notes or link to deployment documentation

### CONTRIBUTING.md

Must explain:

- branch naming
- commit conventions
- pull request requirements
- code review process
- test requirements
- coding standards
- how to report bugs
- how to propose changes

### SECURITY.md

Must explain:

- how to report vulnerabilities
- what security checks are required
- supported versions
- secrets policy
- dependency policy
- responsible disclosure process

### CHANGELOG.md

Tracks meaningful product and technical changes.

Use it for released changes, not every internal commit.

### .env.example

Must include all required environment variables with safe placeholder values.

Never include real secrets.

### CODEOWNERS

Use when the repository has multiple modules or critical areas.

Code ownership should clarify who reviews:

- authentication
- payment or financial logic
- database schema
- production infrastructure
- security-sensitive integrations
- core product modules

## docs/ structure

### docs/product/

Product documents:

- PRD
- feature specs
- user flows
- acceptance criteria
- release notes
- roadmap

### docs/architecture/

Architecture documents:

- system overview
- module boundaries
- service diagrams
- dependency map
- architectural decision records
- scalability assumptions

### docs/api/

API documents:

- endpoint specs
- request and response schemas
- authentication rules
- error format
- webhook specs
- versioning rules

### docs/operations/

Operational documents:

- deployment process
- rollback process
- monitoring
- alerting
- incident response
- backup and restore
- runbooks

### docs/decisions/

Use Architecture Decision Records for important decisions.

ADR template:

```text
# ADR-000X: Decision title

## Status
Proposed / Accepted / Deprecated / Replaced

## Context
Why this decision is needed.

## Decision
What was decided.

## Consequences
Benefits, trade-offs, risks.

## Alternatives considered
Other options and why they were not chosen.
```

## apps/ structure

Use `apps/` for user-facing applications.

Examples:

- web application
- admin dashboard
- mobile app
- documentation site
- internal operator console

Each app should have its own source, tests, public assets, and build configuration where needed.

## services/ structure

Use `services/` for backend services.

Each service should own:

- routes or API handlers
- domain services
- data repositories
- validators
- middleware
- integrations
- background jobs
- service tests
- service-level migrations if applicable

## packages/ structure

Use `packages/` for shared libraries.

Examples:

- shared types
- API clients
- UI component library
- config utilities
- domain utilities
- validation schemas

Do not put project-specific business logic into shared packages unless multiple apps or services truly need it.

## tests/ structure

Use top-level `tests/` for cross-application tests.

Examples:

- e2e tests
- performance tests
- security tests
- shared fixtures
- test utilities

Module-level unit and integration tests may live next to the module or in a module-specific test folder, depending on stack conventions.

## scripts/ structure

Scripts should be documented and safe.

Each script should explain:

- purpose
- required environment variables
- expected input
- expected output
- whether it is safe for production
- whether it is idempotent

No destructive script should run without an explicit confirmation or environment guard.

## infra/ structure

Infrastructure configuration should be separated from application code.

Examples:

- Docker files
- Compose files
- Terraform
- Kubernetes manifests
- CI/CD helpers
- monitoring configuration
- alert rules

Infrastructure changes should be reviewed with the same rigor as application code.

## Naming conventions

### Directories

Use consistent naming:

```text
kebab-case
lowercase
plural for grouped resources when helpful
```

Examples:

```text
user-profiles/
deal-submissions/
api-clients/
```

### Files

Use stack conventions.

Common options:

```text
kebab-case.ts
PascalCase.tsx
snake_case.py
```

Pick one convention per language or framework and apply it consistently.

## Generated files

Generated files should be either:

- excluded from git, or
- clearly placed in a generated directory, or
- committed only when required by the toolchain

Do not edit generated files manually unless the repository explicitly requires it.

## Repository review checklist

The TPO Agent should check:

- Is the structure understandable?
- Are modules easy to find?
- Are source, tests, docs, scripts, and infra separated?
- Are root files complete?
- Are secrets excluded?
- Is `.env.example` present?
- Are architecture decisions documented?
- Are CI workflows visible?
- Is ownership clear for critical code?
- Are generated files handled intentionally?
- Are temporary files removed?

## AI Developer Agent instruction

When creating or modifying repository structure, the AI Developer Agent must provide:

```text
## Structure changes
List of directories and files added, moved, or removed.

## Reasoning
Why the structure supports the architecture.

## Migration impact
What imports, build paths, tests, or docs changed.

## Risks
Possible breakage or follow-up needed.
```

## References

- GitHub repository community health file practices
- Google Engineering Practices: Code Review
- NIST SSDF secure development practices
