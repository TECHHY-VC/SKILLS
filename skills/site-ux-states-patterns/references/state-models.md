# State Models

## Use This Reference For

- resilient component design
- dashboards, filters, lists, and search results
- defining behavior outside the happy path

## Default State Set

For any non-trivial component or screen, decide whether it needs:

- loading
- empty
- error
- success

Explicitly omitting a state is better than forgetting it.

## State Intent

### Loading

Show that progress is happening and preserve spatial expectations.

### Empty

Explain why nothing is shown and what the user can do next.

### Error

Describe what failed and how to recover.

### Success

Confirm the result and point to the next useful action.

## Skeleton Guidance

Skeletons are most useful when they:

- match the eventual layout
- appear briefly while real content is on the way
- reduce uncertainty without introducing visual noise

Do not use skeletons to hide slow architecture or repeated unnecessary fetches.

## Empty State Checklist

- what happened?
- why is the result empty?
- what is the best next action?
- is there an example, reset path, or import path?

## Error State Checklist

- what failed?
- can the user retry?
- can the user change input or filters?
- does the message avoid blaming the user?

## Output Rule

When implementing or reviewing UI, write state requirements next to the component contract instead of leaving them implicit.
