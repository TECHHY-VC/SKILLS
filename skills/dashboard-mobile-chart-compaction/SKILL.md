---
name: dashboard-mobile-chart-compaction
description: Refactor analytical dashboards so chart legends, tooltips, and explanatory breakdowns stay readable on small screens without covering the plot. Use when Codex needs mobile-safe chart layouts, compact legends, touch-friendly breakdown cards, or active-series emphasis in dashboards.
---

# Dashboard Mobile Chart Compaction

Use this skill when analytical charts work on desktop but break down on phones because tooltips, legends, or breakdown panels overflow the viewport or block the data.

## What this skill is for

Use this skill when:

- chart tooltips slide off the screen on mobile
- a legend is too tall or too wide for a phone layout
- the mobile UI needs a compact breakdown card instead of a floating desktop tooltip
- the active series is hard to identify in the explanation layer
- the chart needs touch-safe behavior in addition to mouse hover

This skill pairs especially well with interactive Recharts dashboards, but the layout principles are library-agnostic.

## Workflow

1. Identify which desktop interaction is failing on mobile:
   - floating tooltip
   - side legend
   - oversized labels
   - blocked chart surface
2. Preserve the desktop behavior if it works, but create a dedicated mobile mode rather than shrinking everything blindly.
3. Move explanatory content out of the plot area on mobile. Prefer a compact breakdown card below the chart.
4. Replace tall legends with compressed chips, short labels, or multi-column layouts that fit the viewport.
5. Keep the selected series obvious in both places:
   - on the chart
   - inside the breakdown card or tooltip rows
6. Make touch interaction explicit. The mobile state should update from tap or chart focus, not only from hover.
7. Verify the smallest intended viewport, usually around 320 px wide, before shipping.

## Default design rules

- Do not let a mobile tooltip cover the data if the same information can live just below the chart.
- Keep totals visible, but do not let the total row push values off-screen.
- Shorten labels when needed, but do not remove the information needed to tell series apart.
- If a legend can hide or restore series, keep that interaction visible and tappable.
- Reduce chart height before sacrificing value readability.

## Failure modes to watch for

- shrinking the tooltip until values become unreadable
- leaving a desktop overlay in place and hoping it will fit on phones
- highlighting a series on the plot but not in the explanatory rows
- letting the legend consume more vertical space than the chart
- testing only at tablet widths and missing true phone breakpoints

## References

- Open [references/mobile-breakdown-cards.md](references/mobile-breakdown-cards.md) for the mobile tooltip replacement pattern.
- Open [references/donut-legend-compaction.md](references/donut-legend-compaction.md) for donut and pie legend strategies.
- Open [references/verification.md](references/verification.md) for a small-screen QA checklist.
