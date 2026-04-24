---
name: prd-risk-nfr-review
description: Review a PRD for security, privacy, non-functional requirements, auditability, operational readiness, compliance-sensitive gaps, data risks, abuse scenarios, and production failure modes. Use when the user has a draft PRD or requirements document and needs a risk/NFR review before final product quality review or engineering handoff.
---

# PRD Risk NFR Review

Use this skill to stress-test a PRD for risks that are often under-specified before engineering starts.

Do not rewrite the full PRD unless the user asks. Produce findings, missing requirements, and concrete patches that can be added to the PRD.

## Workflow

1. Identify the product domain, user roles, data classes, integrations, and operational surface.
2. Review the PRD for security, privacy, compliance, abuse, fraud, auditability, reliability, observability, performance, scalability, accessibility, support, and incident response gaps.
3. Rank findings by delivery risk and user/business impact.
4. Suggest requirement-level fixes with IDs where possible.
5. Separate blockers from improvements.
6. If the PRD lacks enough detail, list the missing decisions needed to complete the risk review.

## Output Structure

Write in Russian unless the user requests another language:

```markdown
# Risk and NFR Review: <название PRD>

## Verdict
Ready / Needs revision / Blocked

## Blockers
## High Risk Findings
## Medium Risk Findings
## Low Risk Findings
## Missing NFRs
## Missing Security and Privacy Requirements
## Abuse and Misuse Scenarios
## Operational Readiness Gaps
## Recommended PRD Patches
## Open Decisions
```

Use this finding format:

```markdown
### <severity>: <short title>
- Риск: <what can go wrong>
- Где видно: <section, requirement ID, or "not specified">
- Почему важно: <impact>
- Исправление: <specific requirement or PRD edit>
```

## Review Checklist

- Authentication, authorization, role boundaries, session handling.
- Sensitive data collection, retention, deletion, export, and access logging.
- Audit trails for security-sensitive and business-critical actions.
- Abuse paths, spam, scraping, prompt injection, fraud, quota bypass, and privilege escalation where relevant.
- Availability, latency, throughput, consistency, recovery, backup, and degradation behavior.
- Monitoring, alerting, runbooks, support workflows, and incident response.
- Accessibility and localization if user-facing.

## Quality Bar

- Focus on concrete gaps, not generic warnings.
- Prefer actionable requirement patches over abstract advice.
- Do not block on low-risk missing details.
- Be stricter for trust-sensitive, financial, healthcare, personal-data, or admin/control-plane products.
