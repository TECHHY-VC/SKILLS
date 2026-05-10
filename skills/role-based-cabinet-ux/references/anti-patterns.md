# Anti-Patterns to Block

- Creating separate accounts for investor and seller for the same person.
- Using URL contact IDs as authority instead of authenticated owner context.
- Showing internal operator reasons directly to member/public users.
- Computing business-critical next action only in UI layer without service contract.
- Hiding blocked reasons with generic "failed" text and no recovery path.
- Allowing private listing details to leak before access approval.
- Returning raw model payload in member/public endpoints.
- Letting disabled states exist without explanation.
- Skipping role-specific UAT and relying only on unit tests.

