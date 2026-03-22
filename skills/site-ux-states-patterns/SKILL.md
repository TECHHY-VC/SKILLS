---
name: site-ux-states-patterns
description: Design and implement website UX flows around loading, empty, error, success, progressive disclosure, and motion so interfaces stay understandable under real conditions. Use when working on onboarding, forms, search, filters, checkout, dashboards, content flows, page transitions, skeleton screens, or interaction states that need clear recovery paths.
---

# Site Ux States Patterns

## Overview

Use this skill when the interface must stay understandable outside the happy path. It helps turn loading, empty, error, success, reveal, and motion behavior into explicit UX contracts instead of accidental edge cases.

## Workflow

1. Identify the user journey: landing, search, browse, filter, form submit, checkout, onboarding, or post-action confirmation.
2. Open [references/state-models.md](references/state-models.md) first to define loading, empty, error, and success behavior.
3. Open [references/form-and-content-flow.md](references/form-and-content-flow.md) for progressive disclosure, error recovery, confirmation, and CTA sequencing.
4. Open [references/motion-and-disclosure.md](references/motion-and-disclosure.md) for transitions, reduced-motion support, and animation guardrails.
5. Design the recovery path before polishing visuals.
6. Treat empty states and error handling as navigational moments, not dead ends.
7. Only add motion when it clarifies change, orientation, or continuity.

## Default Operating Assumptions

- Every non-trivial component needs explicit loading, empty, error, and success states.
- A skeleton screen complements real performance work; it does not replace it.
- Empty states should explain what happened and offer the next best action.
- Error messages should shorten recovery time, not merely announce failure.
- Motion must respect reduced-motion preferences and avoid blocking interaction.

## Reference Guide

- [references/state-models.md](references/state-models.md): Define resilient state behavior for components and pages.
- [references/form-and-content-flow.md](references/form-and-content-flow.md): Shape user journeys, CTA hierarchy, validation, and recovery.
- [references/motion-and-disclosure.md](references/motion-and-disclosure.md): Use disclosure and animation to support comprehension without creating drag.

## Execution Notes

- If the user asks for a nicer UI, check whether the real gap is missing states instead of missing decoration.
- Keep state copy short, direct, and action-oriented.
- When a flow spans multiple screens, preserve user orientation with stable headings, labels, and progress cues.
