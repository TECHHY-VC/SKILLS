---
name: site-design-system
description: Plan, audit, or refactor website design systems using design tokens, component contracts, content hierarchy, and reusable UI patterns. Use when building or reviewing landing pages, marketing sites, product sites, SaaS frontends, storefronts, style guides, or component libraries that need visual consistency and scalable implementation.
---

# Site Design System

## Overview

Shape website UI as a system of tokens, components, and templates instead of a collection of one-off page fixes. Use this skill when the task involves visual language, reusable frontend primitives, Figma-to-code translation, or consistency across multiple pages and features.

## Workflow

1. Confirm the scope: landing page, marketing site, storefront, content site, SaaS UI, or shared component library.
2. Open [references/system-foundation.md](references/system-foundation.md) first to define the system layers and page hierarchy.
3. Open [references/design-tokens.md](references/design-tokens.md) when the task touches colors, spacing, typography, radii, shadows, motion, or themes.
4. Open [references/component-contracts.md](references/component-contracts.md) when creating or reviewing reusable components, variants, and states.
5. Prefer fixing system primitives before patching page-specific CSS.
6. Keep visual choices compatible with accessibility, responsiveness, and performance constraints.
7. If the repository already has a design language, extend it instead of silently replacing it.

## Default Operating Assumptions

- Prefer semantic HTML plus CSS variables as the lowest-friction system baseline.
- Start with a compact token set: color, type, spacing, radius, shadow, layout, and motion.
- A component is not complete until structure, states, content rules, and responsive behavior are defined.
- Optimize for consistency and maintainability before novelty.
- When design direction conflicts with clarity, accessibility, or speed, treat those constraints as authoritative.

## Reference Guide

- [references/system-foundation.md](references/system-foundation.md): Define the system layers, page blueprint, and decision rules.
- [references/design-tokens.md](references/design-tokens.md): Build a token model that can scale across pages, themes, and tools.
- [references/component-contracts.md](references/component-contracts.md): Document reusable component behavior, states, and acceptance criteria.

## Execution Notes

- If the task is only one component, extract the smallest useful system slice instead of inventing a full framework.
- When the user asks for polish, update tokens first and component details second.
- Keep naming generic and portable unless the repository already encodes a brand vocabulary.
