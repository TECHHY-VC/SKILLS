# Component Contracts

## Use This Reference For

- documenting reusable components
- reviewing component quality before scaling usage
- preventing fragile UI built from implicit assumptions

## Component Contract Template

Each reusable component should define:

1. purpose
2. semantic structure
3. variants
4. states
5. content rules
6. responsive behavior
7. accessibility requirements
8. failure or recovery behavior

If a component has no state model, it is not production-ready.

## State Baseline

At minimum, decide whether the component can enter:

- loading
- empty
- error
- success
- disabled or unavailable

Not every component needs every state, but each omitted state should be intentional.

## Example Review Questions

- What happens if the title is two lines longer than expected?
- What happens when no data exists?
- What happens while data is still loading?
- What happens when the component appears in a narrower container?
- What happens with keyboard focus and screen readers?

## Content Rules

Document what the component can safely contain:

- heading length
- body copy length
- image aspect ratio
- CTA count
- icon optionality

These rules help implementation stay stable when real content replaces placeholders.

## Acceptance Checklist

- structure uses meaningful HTML
- variants are named by intent
- states are visible and testable
- spacing and colors come from tokens
- responsive rules do not depend on page-specific hacks
- component can be understood without surrounding context

## When To Split A Component

Split when:

- variants solve different jobs
- markup diverges significantly
- the content model is incompatible
- accessibility behavior differs enough to require a different contract

Do not split just because styling differs slightly. That is usually a variant or token problem, not a component taxonomy problem.
