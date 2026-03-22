# Core Web Vitals

## Use This Reference For

- performance triage
- prioritizing frontend optimization work
- choosing the smallest change that improves user experience

## Metric Baseline

- LCP: how quickly the main content becomes visible
- INP: how quickly the interface responds to user input
- CLS: how stable the layout remains during loading and interaction

Use these metrics to reason about user-visible quality, not just technical neatness.

## Triage Order

1. identify the page's primary user-visible content
2. find which metric is failing for real users or the target environment
3. reduce the bottleneck closest to that experience
4. confirm the fix does not regress another vital metric

## Common Causes

### LCP

- slow server response
- render-blocking CSS or JavaScript
- oversized hero images
- low-priority loading of the main visual or heading block

### INP

- long JavaScript tasks on the main thread
- expensive input handlers
- large rerenders triggered by small interactions
- animation work tied to the main thread

### CLS

- images or embeds without reserved size
- late-injected banners or controls
- font swaps that change layout too much
- placeholders that do not match final content dimensions

## Practical Rule

Do not optimize everything at once. Fix the bottleneck on the primary page path first, then move to secondary enhancements.

## Performance Budget Mindset

Use lightweight budgets for:

- first-screen image weight
- initial JavaScript execution
- font count and font file size
- third-party scripts

Budgets help prevent design or marketing requests from gradually eroding the experience.
