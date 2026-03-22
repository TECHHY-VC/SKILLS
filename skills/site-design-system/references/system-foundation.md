# System Foundation

## Use This Reference For

- defining the shape of a website design system
- deciding what belongs in tokens, components, and page templates
- translating visual direction into reusable frontend rules

## Core Model

Treat the system as three layers:

1. Tokens: the smallest reusable decisions such as color, spacing, typography, radius, shadow, motion, and layout scales
2. Components: reusable UI parts with structure, states, variants, and content rules
3. Templates: page-level compositions that place components into a clear information hierarchy

Do not skip straight to templates. If the same fix appears on multiple pages, it usually belongs in tokens or component contracts.

## Start With These Questions

1. What type of site is this: marketing, product, storefront, content, application shell, or hybrid?
2. Which pages need the highest consistency?
3. Which components repeat often enough to deserve a contract?
4. Which visual qualities are brand-defining and which are only decorative?
5. What constraints are non-negotiable: accessibility, mobile readability, SEO visibility, or performance budgets?

## Page Blueprint

For most sites, establish a stable page hierarchy before styling details:

1. identity and context
2. value proposition or task framing
3. primary action
4. proof or explanation
5. secondary actions
6. navigation and support

The goal is not to force every page into the same shape. The goal is to make page intent obvious within the first screen and keep lower-priority content from competing with the main action.

## System Decision Rules

- If a rule should apply everywhere, make it a token.
- If a rule changes how a reusable part behaves, make it a component contract.
- If a rule changes how whole sections are arranged, make it a template rule.
- If a fix only helps one page and cannot be generalized, keep it local.

## Density And Rhythm

Use a deliberate spacing rhythm instead of ad hoc pixel values. A small scale such as `4, 8, 12, 16, 24, 32, 48, 64` is usually enough to prevent visual drift.

Typography should also follow a scale. Avoid choosing a new font size for each section. Repeated structure is what makes pages feel designed rather than assembled.

## What To Avoid

- page-specific color values with no token mapping
- components that rely on surrounding markup to work correctly
- visually unique sections that break content priority for no clear reason
- multiple button or card patterns that solve the same job differently

## Practical Output

When using this skill, aim to produce:

- a minimal token vocabulary
- a short component inventory
- page-level hierarchy rules
- a small set of reusable layouts instead of many one-off compositions
