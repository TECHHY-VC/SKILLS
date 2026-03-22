---
name: recharts-stacked-interactivity
description: Build or debug React/Recharts stacked area and pie or donut dashboards with custom hover states, legend-driven highlight and toggle behavior, tooltip ordering that matches stacked layers, synchronized chart interactions, and mobile-safe chart layouts. Use when Codex is implementing or fixing analytical dashboards in React with Recharts and the default Legend or Tooltip behavior is not enough.
---

# Recharts Stacked Interactivity

Implement interactive stacked charts with shared bucket metadata, custom HTML legends, and deterministic tooltip rendering. Prefer this skill when the chart needs hover highlight, click-to-hide series, synchronized brushes, or pie and donut hover behavior that Recharts defaults do not handle well.

## What this skill is for

Use this skill when the user asks for richer chart behavior than a default Recharts chart provides. Typical requests include:

- make legend hover highlight the matching stacked series
- hide or restore a series by clicking a legend item
- make tooltip ordering match the visible stack order
- add `Total` rows to stacked tooltips
- stop pie labels from flickering or disappearing on hover
- keep interactive charts understandable on mobile

This skill is especially useful when several charts share the same series metadata and should behave consistently.

## Quick start

Start from one shared series array and derive areas, legends, tooltips, and tables from it. If the dashboard has more than one chart, keep interaction state keyed by chart id so one chart does not accidentally affect another unless that is a deliberate product decision.

## Workflow

1. Create a single metadata array for series keys, labels, colors, and any scenario-specific behavior.
2. Keep hover and hidden state keyed by chart id when several charts reuse the same buckets.
3. Render stacked series from a filtered `visibleBuckets` array, but keep the full bucket list in the legend so hidden series can be restored.
4. Use a custom tooltip component for stacked charts and reverse the Recharts payload so the text order matches the visible layer order on the chart.
5. Use a custom HTML legend when you need hover highlight, dimming, strike-through hidden states, or click-to-toggle behavior.
6. Disable pie label animation when hover causes label blinking or disappearing percentages.
7. Validate in a real browser after each interactive change.

## Implementation sequence

Use this order when building or refactoring:

1. Normalize bucket or series metadata first.
2. Make the static chart render correctly before adding interaction.
3. Add tooltip customization and verify ordering.
4. Add legend hover behavior.
5. Add click-to-hide or click-to-restore behavior.
6. Add responsive and mobile adjustments last.

This keeps the debugging surface small and makes regressions easier to isolate.

## Core Rules

- Prefer custom legend buttons below the chart instead of Recharts' built-in `Legend` when the legend must change hover or visibility state.
- Keep hidden state per chart, not global, unless the product explicitly wants all charts to hide the same bucket together.
- Fade non-hovered stacked areas with lower `fillOpacity` and `strokeOpacity`, and optionally add a glow to the active series.
- Add a `Total` row to stacked tooltips so users do not need to sum series mentally.
- For pie and donut charts, dim non-hovered slices and matching labels together to preserve visual focus.

## Common failure modes

- Tooltip payload order does not match the visible stack order.
- Hidden series disappear from both the chart and the legend, making them impossible to restore.
- Pie labels flicker because hover and animation fight each other.
- One global hover state leaks across several independent charts.
- Legend interactions work on desktop but become cramped or unreadable on smaller screens.

When debugging, solve these one at a time instead of changing legend, tooltip, and responsiveness all at once.

## Validation

- Build the project and check for chunk warnings or lint regressions.
- Use a real browser to verify hover highlight, tooltip ordering, click-to-hide, and click-to-restore.
- When the chart is responsive, test at least one desktop width and one mobile width.
- If the chart is used on production or in an investor-facing deck, verify the exact visible text order and totals, not just whether the chart renders.

## References

- Open `references/patterns.md` for code skeletons and the recommended state shape.
