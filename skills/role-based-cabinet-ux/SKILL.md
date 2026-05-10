---
name: role-based-cabinet-ux
description: Design and validate role-based cabinet UX for CRM/marketplace systems where one identity can hold multiple roles (for example investor plus seller). Use for user journeys, status design, safe payload boundaries, and no-duplicate-account architecture.
---

# Role-Based Cabinet UX

## Overview

Use this skill when building or reviewing cabinet flows for:

- investor
- seller/broker
- operator
- moderator
- admin

Core rule: one canonical identity, multiple capabilities. Do not split the same person into duplicate accounts by role.

## Workflow

1. Start with [references/role-matrix.md](references/role-matrix.md) and map capabilities by role.
2. Build journeys from [references/journeys.md](references/journeys.md) for each role separately.
3. Merge overlapping flows for multi-role users into a single cabinet surface with role-aware modules.
4. Render status and next actions as explicit UI blocks; never hide critical blockers in logs only.
5. Apply privacy boundaries:
   - member sees only safe status and guidance
   - operator/admin sees internal context by permission
6. Validate anti-patterns from [references/anti-patterns.md](references/anti-patterns.md).
7. Produce role-by-role QA evidence.

## UX Contract

- Identity is canonical and singular.
- Roles grant capabilities, not duplicate profiles.
- Each critical process must have:
  - current status
  - safe explanation
  - next action
  - last updated
- Internal reason text is never shown to public/member surfaces unless explicitly safe-translated.

## Reference Files

- [references/role-matrix.md](references/role-matrix.md): capability matrix and visibility boundaries.
- [references/journeys.md](references/journeys.md): step-by-step journeys by role.
- [references/anti-patterns.md](references/anti-patterns.md): common failures to prevent.

