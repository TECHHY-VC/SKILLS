---
name: dashboard-reading-flow
description: Plan, audit, or refactor analytical dashboards so snapshot cards, controls, interpretation layers, and deeper charts appear in a clear reading sequence. Use when reshaping dashboard information hierarchy, swapping section order, grouping KPI cards, improving button affordance, or separating control zones from summary zones.
---

# Dashboard Reading Flow

## Overview

Use this skill when a dashboard feels technically complete but hard to read. The goal is to make the interface explain itself in the right order: what the user is looking at, what changes it, what it currently means, and where to inspect deeper evidence.

This skill is especially useful for tokenomics dashboards, analytics views, BI pages, monitoring surfaces, and any interface where cards, charts, legends, and controls compete for attention.

## Workflow

1. Confirm the primary user question: compare scenarios, understand the current state, inspect trends, or validate a model.
2. Open [references/section-order.md](references/section-order.md) first to choose a reading sequence for the page.
3. Open [references/snapshot-controls-balance.md](references/snapshot-controls-balance.md) when deciding whether snapshot cards or controls should come first, or how to separate them.
4. Open [references/interaction-affordance.md](references/interaction-affordance.md) when buttons, chips, legends, or filter controls read like labels instead of actions.
5. Move or regroup whole sections before tuning individual typography or color values.
6. Keep the desktop and mobile reading order intentional. Let layout adapt by breakpoint, but keep the narrative sequence stable.
7. After structure changes, validate the result with a visual pass instead of trusting code alone.

## Default Operating Assumptions

- Dashboards should front-load interpretation, not only raw data.
- Snapshot cards answer "where are we now?"
- Controls answer "what can I change?"
- Current reading or narrative cards answer "what does this mean?"
- Charts and tables answer "show me the evidence."
- If two blocks serve different cognitive jobs, separate them with spacing, surface changes, or dividers.

## Reference Guide

- [references/section-order.md](references/section-order.md): Choose a stable top-to-bottom dashboard sequence.
- [references/snapshot-controls-balance.md](references/snapshot-controls-balance.md): Decide how snapshot and control zones should relate.
- [references/interaction-affordance.md](references/interaction-affordance.md): Make interactive dashboard elements visibly actionable.

## Execution Notes

- When the user asks to "swap blocks," change information hierarchy first and styling second.
- If the first screen contains both snapshot and controls, make their roles explicit with headings or different surfaces.
- Prefer one strong button pattern over a mix of chips, pills, and ghost buttons that solve the same job differently.
- When chart legends are interactive, style them as controls, not as passive captions.
