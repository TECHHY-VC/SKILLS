# Forms And Feedback

## Use This Reference For

- labels and hints
- validation and recovery
- long forms and multi-step flows

## Form Defaults

- Every input needs a programmatically associated label.
- Help text should appear before failure, not only after it.
- Required fields and input format expectations should be obvious.
- Validation messages should explain how to recover.

## Error Strategy

For forms with multiple fields, use both:

- inline field errors near the affected control
- a page-level error summary that links to invalid fields

This shortens recovery time and helps users who miss inline errors while scrolling.

## Example Pattern

```html
<div class="error-summary" role="alert" aria-labelledby="error-title" tabindex="-1">
  <h2 id="error-title">Fix the following errors</h2>
  <ul>
    <li><a href="#email">Enter a valid email address</a></li>
  </ul>
</div>

<label for="email">Email</label>
<input id="email" name="email" aria-describedby="email-error" aria-invalid="true">
<p id="email-error">Enter a valid email address</p>
```

## Recovery Principles

- Put focus on the summary after failed submit when several fields are invalid.
- Keep field-level messages specific and short.
- Preserve valid user input whenever possible.
- Follow success with a clear next step, not a vague confirmation.

## Content Rules

- Avoid jargon in error text.
- Prefer action verbs over passive warnings.
- Do not require memorization when the interface can surface context instead.

## Common Mistakes

- placeholder text used as the only label
- generic "invalid input" messages
- success states that give no next action
- disabled submit buttons with no explanation
