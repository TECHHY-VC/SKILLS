---
name: site-accessibility-layout
description: Build or review website layouts, templates, forms, navigation, and custom interactions with WCAG 2.2-aware semantics, focus management, keyboard support, and touch-safe targets. Use when working on HTML templates, CSS layout, modals, menus, forms, skip links, landmarks, or accessibility audits for websites.
---

# Site Accessibility Layout

## Overview

Treat layout accessibility as a first-class implementation constraint, not a polish pass at the end. Use this skill when a page template, form, menu, dialog, tab set, drag interaction, or custom widget must remain semantic, keyboard-safe, and screen-reader legible.

## Workflow

1. Identify whether the task is page-level structure, navigation, form behavior, or a custom interactive widget.
2. Open [references/wcag-22-baseline.md](references/wcag-22-baseline.md) first for the semantic page skeleton and practical acceptance criteria.
3. Open [references/navigation-and-focus.md](references/navigation-and-focus.md) for focus order, landmarks, menus, dialogs, keyboard flow, or drag-and-drop alternatives.
4. Open [references/forms-and-feedback.md](references/forms-and-feedback.md) for labels, hints, validation, inline errors, and error summaries.
5. Prefer native HTML semantics before adding ARIA.
6. Define the full keyboard path before finalizing visuals or animation.
7. If a custom interaction cannot meet the accessibility contract, simplify the pattern instead of shipping a partial imitation.

## Default Operating Assumptions

- Semantic HTML is the default. ARIA is a supplement, not a substitute.
- Focus must remain visible, logical, and unobscured.
- Interactive targets should be touch-friendly and forgiving.
- Every key action must have a complete keyboard path.
- Multi-field forms need both local field errors and page-level recovery guidance.

## Reference Guide

- [references/wcag-22-baseline.md](references/wcag-22-baseline.md): Practical accessibility baseline for layouts and components.
- [references/navigation-and-focus.md](references/navigation-and-focus.md): Focus handling, landmarks, dialogs, menus, and alternative input paths.
- [references/forms-and-feedback.md](references/forms-and-feedback.md): Accessible form structure, validation, and recovery patterns.

## Execution Notes

- Pair automated accessibility checks with manual keyboard testing.
- When reviewing existing code, fix semantic structure before tuning ARIA attributes.
- Preserve visible focus unless the user explicitly requests a redesign, and then replace it with an equally strong pattern.
