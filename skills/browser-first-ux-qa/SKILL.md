---
name: browser-first-ux-qa
description: Browser-first QA workflow for local and staging web apps. Use when validating UX by role (public/member/seller/operator/admin), reproducing UI bugs, collecting screenshots, and creating actionable bug reports with evidence.
---

# Browser-First UX QA

## Overview

Use this skill when the task requires real UI verification, not only API/log checks.

Primary mode:

- in-app Browser plugin walkthrough over real user flows

Fallback mode:

- if browser automation is unavailable, run API/log-backed checks and explicitly mark UI evidence as pending.

## Workflow

1. Run preflight from [references/preflight.md](references/preflight.md).
2. Open target URL in in-app browser and authenticate test users.
3. Execute role checklists from [references/role-qa-checklist.md](references/role-qa-checklist.md).
4. Capture defects with [references/bug-report-template.md](references/bug-report-template.md).
5. Record pass/fail evidence and attach screenshot/log paths.
6. Re-test fixed flows and update status from Open -> Retest -> Closed.

## Severity Model

- P0: security, auth bypass, data leak, critical outage
- P1: major flow blocked (core task impossible)
- P2: degraded UX with workaround
- P3: cosmetic/non-blocking inconsistency

## Output Contract

For each issue include:

- role
- url
- steps
- actual vs expected
- severity
- attachment paths
- suggested fix direction

## Reference Files

- [references/preflight.md](references/preflight.md): environment and account checklist.
- [references/role-qa-checklist.md](references/role-qa-checklist.md): role-by-role smoke/UAT pass.
- [references/bug-report-template.md](references/bug-report-template.md): standardized bug ticket format.

