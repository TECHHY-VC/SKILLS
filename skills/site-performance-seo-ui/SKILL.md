---
name: site-performance-seo-ui
description: Build or review website UI with Core Web Vitals, responsive media, mobile-first rendering, and crawl-safe interaction patterns. Use when optimizing landing pages, storefronts, blogs, product sites, SSR or SPA hybrids, image-heavy pages, or any frontend where LCP, INP, CLS, lazy loading, rendering, or indexability matter.
---

# Site Performance Seo Ui

## Overview

Use this skill when a website must stay fast, stable, and indexable under real traffic, not just score well in isolated audits. It is especially useful for media-heavy pages, mobile-first layouts, SEO-sensitive marketing pages, and frontend work where JavaScript behavior can hide or destabilize core content.

## Workflow

1. Clarify whether the work is performance triage, responsive layout work, image optimization, rendering strategy, or SEO-safe UI review.
2. Open [references/core-web-vitals.md](references/core-web-vitals.md) first to choose the metric and bottleneck to attack.
3. Open [references/responsive-media-and-layout.md](references/responsive-media-and-layout.md) for responsive images, container queries, font and media decisions, and critical rendering hints.
4. Open [references/seo-safe-patterns.md](references/seo-safe-patterns.md) for semantic structure, crawl-safe JavaScript, lazy loading, pagination, and structured data constraints.
5. Prioritize field behavior over lab-only wins.
6. Optimize the main content path before decorative UI.
7. Preserve content parity between mobile and desktop experiences unless the user explicitly chooses otherwise.

## Default Operating Assumptions

- Mobile-first rendering and indexability are the baseline.
- LCP, INP, and CLS matter more than generic "speed" claims.
- Responsive media and layout decisions should reduce both bytes and layout shift.
- SEO-safe UI means important content is reachable, renderable, and not trapped behind clever patterns.
- Infinite scroll, lazy loading, and popups are implementation details that must not break discovery or interaction.

## Reference Guide

- [references/core-web-vitals.md](references/core-web-vitals.md): Triage performance work by user-visible metrics.
- [references/responsive-media-and-layout.md](references/responsive-media-and-layout.md): Build responsive media and component-level layout behavior.
- [references/seo-safe-patterns.md](references/seo-safe-patterns.md): Keep interface behavior compatible with crawling, indexing, and semantic clarity.

## Execution Notes

- Prefer the smallest fix that moves a metric for real users.
- When page speed and visual richness compete, keep the first-screen value proposition legible and stable.
- If a pattern needs heavy JavaScript to reveal primary content, consider server rendering or progressive enhancement first.
