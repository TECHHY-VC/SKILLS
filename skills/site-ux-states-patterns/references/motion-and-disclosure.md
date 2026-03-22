# Motion And Disclosure

## Use This Reference For

- transition decisions
- page and component animation
- view continuity and reduced-motion support

## Motion Rule

Use motion to clarify:

- what changed
- where content moved
- which element triggered the transition
- whether the user is entering, updating, or leaving a context

If animation only decorates, keep it short or skip it.

## Reduced Motion Baseline

- respect `prefers-reduced-motion`
- avoid parallax or large simulated camera movement
- do not block the interface behind long entrance sequences

## Safe Pattern

When using browser transitions, keep a fallback path:

```js
function transition(updateDom) {
  if (!document.startViewTransition) {
    updateDom();
    return;
  }

  document.startViewTransition(() => updateDom());
}
```

The interface should remain correct even when motion APIs are unavailable.

## Disclosure Rules

- hide complexity, not meaning
- keep section labels explicit
- preserve context when panels expand or collapse
- avoid sudden jumps that make users lose their place

## Anti-Patterns

- long decorative intro animations before the first action
- motion that competes with input responsiveness
- accordions or drawers with vague labels and hidden critical content
- transitions that break focus or scroll position
