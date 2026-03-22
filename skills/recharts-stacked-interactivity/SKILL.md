---
name: recharts-stacked-interactivity
description: Build or debug React/Recharts stacked area and pie or donut dashboards with custom hover states, legend-driven highlight and toggle behavior, tooltip ordering that matches stacked layers, synchronized chart interactions, and mobile-safe chart layouts. Use when Codex is implementing or fixing analytical dashboards in React with Recharts and the default Legend or Tooltip behavior is not enough.
---

# Recharts Stacked Interactivity

Implement interactive stacked charts with shared bucket metadata, custom HTML legends, and deterministic tooltip rendering. Prefer this skill when the chart needs hover highlight, click-to-hide series, synchronized brushes, or pie and donut hover behavior that Recharts defaults do not handle well.

## Workflow

1. Create a single metadata array for series keys, labels, colors, and any scenario-specific behavior.
2. Keep hover and hidden state keyed by chart id when several charts reuse the same buckets.
3. Render stacked series from a filtered `visibleBuckets` array, but keep the full bucket list in the legend so hidden series can be restored.
4. Use a custom tooltip component for stacked charts and reverse the Recharts payload so the text order matches the visible layer order on the chart.
5. Use a custom HTML legend when you need hover highlight, dimming, strike-through hidden states, or click-to-toggle behavior.
6. Disable pie label animation when hover causes label blinking or disappearing percentages.
7. Validate in a real browser after each interactive change.

## Core Rules

- Prefer custom legend buttons below the chart instead of Recharts' built-in `Legend` when the legend must change hover or visibility state.
- Keep hidden state per chart, not global, unless the product explicitly wants all charts to hide the same bucket together.
- Fade non-hovered stacked areas with lower `fillOpacity` and `strokeOpacity`, and optionally add a glow to the active series.
- Add a `Total` row to stacked tooltips so users do not need to sum series mentally.
- For pie and donut charts, dim non-hovered slices and matching labels together to preserve visual focus.

## Validation

- Build the project and check for chunk warnings or lint regressions.
- Use a real browser to verify hover highlight, tooltip ordering, click-to-hide, and click-to-restore.
- When the chart is responsive, test at least one desktop width and one mobile width.

## References

- Open `references/patterns.md` for code skeletons and the recommended state shape.
