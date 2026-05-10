# OSS Pattern Catalog

## 1) Accessibility Baseline (GOV.UK, USWDS, Primer, Cloudscape, PatternFly)

- Start with semantic HTML and progressive enhancement.
- Keep functionality usable without JavaScript where feasible.
- Use WCAG POUR baseline (Perceivable, Operable, Understandable, Robust).
- Require visible focus states and predictable keyboard traversal.
- Validate with both automated checks and manual role/task scenarios.

## 2) Information Architecture for Operational Surfaces (Cloudscape, Primer)

- Keep the page structure predictable across similar screens.
- Use landmarks and stable layout regions (header/main/side/details/history).
- Separate control areas from status/evidence areas.
- Prioritize quick scanning for high-frequency operator tasks.

## 3) States and Guidance (PatternFly, Cloudscape)

- Design empty/zero-result states intentionally, not as missing data.
- Distinguish disabled vs read-only controls with clear reason text.
- Every blocked state should include safe reason + next actionable step.
- Error copy should identify what failed and how to recover.

## 4) Content and Microcopy (PatternFly UX Writing, Shopify)

- Use short, plain-language action labels.
- Avoid duplicated messages in title/body/navigation.
- Keep one primary CTA per step.
- Use conversational but precise wording for trust-sensitive flows.

## 5) Consistency and Predictability (Ant Design, Polaris)

- Optimize for certainty: users should predict outcomes before clicking.
- Keep cross-surface language and state names consistent.
- Avoid UI fragments that duplicate account identity; use one identity with multiple roles/capabilities.
- Preserve continuity between list view, detail view, and cabinet summary.

## 6) Role-Safe Data Exposure (applies to CRM/marketplace products)

- Member/public views: safe summaries only.
- Operator/admin views: internal context allowed by RBAC.
- Moderator defaults: limited access unless explicitly granted.
- Never use request-provided IDs as authority; auth context owns identity.

