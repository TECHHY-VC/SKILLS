# Section Order

## Use This Reference For

- deciding which dashboard blocks belong above the fold
- choosing the order of snapshot cards, controls, interpretation, charts, and breakdown tables
- fixing dashboards that feel visually busy or narratively flat

## Default Reading Sequence

For most analytical dashboards, use this order:

1. identity and context
2. snapshot or orientation layer
3. primary controls
4. current reading or interpretation layer
5. primary evidence chart
6. secondary charts
7. breakdown table or detailed drill-down

This order keeps the dashboard readable even when the user lands on it cold.

## Sequence Decision Rule

Ask one question first:

What does the user need before interacting?

- If they need context before trusting the controls, place snapshot first.
- If they must choose a scenario before any number is meaningful, place controls first.
- If both matter, keep both near the top but separate them into clearly named zones.

## What Belongs In Each Zone

- Snapshot: KPI cards, short framing hints, orientation copy, "how to read this" cards
- Controls: filters, ranges, toggles, scenario selectors, period selectors
- Current reading: short interpretation sentence, top drivers, phase labels, next question
- Evidence: charts, legends, plots, benchmarks, cohorts, detailed series
- Drill-down: tables, per-bucket breakdowns, raw values, downloadable detail

## Anti-Patterns

- charts above any framing or controls when the chart needs explanation
- controls visually merged into KPI cards
- multiple narrative sections competing above the fold
- a table before the user understands what metric matters

## Practical Output

After using this reference, the dashboard should answer:

1. what am I looking at?
2. what can I change?
3. what does the current state suggest?
4. where do I inspect the underlying detail?
