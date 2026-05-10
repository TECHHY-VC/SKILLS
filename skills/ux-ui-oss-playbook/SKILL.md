---
name: ux-ui-oss-playbook
description: Use when you need to design or refactor UX/UI based on proven open-source practices from mature design systems (GOV.UK, USWDS, Primer, Cloudscape, PatternFly, Polaris, Ant Design). Best for cabinet/dashboard/marketplace surfaces, role-based interfaces, and accessibility-first product flows.
---

# OSS UX/UI Playbook

## Overview

Use this skill to turn scattered UI requests into a consistent, evidence-based product design flow.

This skill is optimized for:

- role-based products (investor, seller, operator, admin)
- marketplace and cabinet surfaces
- operational dashboards and queue-heavy interfaces
- accessibility-first delivery

## Workflow

1. Define the user role and job-to-be-done before touching layout.
2. Read [references/oss-pattern-catalog.md](references/oss-pattern-catalog.md) and pick 2-3 systems as primary references for the current surface.
3. Build the page structure in this order: orientation -> status -> next action -> evidence -> history.
4. Apply state coverage early: default, empty, loading, blocked, error, success, stale/expired (if domain has freshness).
5. Apply content rules from [references/shipping-checklist.md](references/shipping-checklist.md): clear labels, short action text, no duplicated navigation copy.
6. Validate accessibility and keyboard/focus flow before visual polish.
7. Validate mobile and desktop reading order; keep intent stable across breakpoints.
8. Output an evidence pack using [references/evidence-template.md](references/evidence-template.md).

## Default Rules

- Accessible component libraries are a baseline, not a guarantee of accessible UX.
- Do not expose internal notes, risk flags, or operator-only rationale in member/public payloads.
- Avoid duplicate navigation and duplicate content blocks on the same screen.
- Treat "next action" as a first-class UI artifact, not a side note.
- Prefer deterministic patterns over visual novelty for operational workflows.

## Reference Files

- [references/oss-pattern-catalog.md](references/oss-pattern-catalog.md): distilled patterns from major open-source systems.
- [references/shipping-checklist.md](references/shipping-checklist.md): release checklist for UX/UI quality gates.
- [references/evidence-template.md](references/evidence-template.md): standard scenario evidence template.
- [references/source-links.md](references/source-links.md): canonical source URLs.

