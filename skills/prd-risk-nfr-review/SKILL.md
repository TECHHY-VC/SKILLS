---
name: prd-risk-nfr-review
description: review a software prd for non-functional requirements, operational readiness, security, privacy, permissions, auditability, abuse risks, and compliance-sensitive gaps. use when a draft prd exists and chatgpt needs to stress-test whether the document is safe, reliable, operable, and ready for engineering and launch planning. especially useful for workflow systems, crm, fintech, marketplaces, ai features, and trust-heavy products.
---

# PRD Risk NFR Review

## Purpose

Use this skill to review a draft PRD through the lens of risk, non-functional requirements, trust, security, privacy, auditability, and operational readiness.

This skill does not rewrite the whole PRD. It identifies gaps and recommends concrete amendments.

This skill is universal and does not require connectors or external sources.

## When to use

Use this skill when:

- a draft PRD already exists;
- the product handles sensitive data;
- the product includes identity, KYC, scoring, access, reputation, money flows, marketplace transactions, moderation, referrals, or introductions;
- the product has operator-assisted workflows;
- the PRD needs review before engineering handoff;
- the PRD may be missing security, privacy, audit, or reliability requirements.

## Main rule

Review the PRD as a launch-risk artifact, not as a writing exercise.

The goal is to find what could break trust, operations, reliability, privacy, or delivery.

## Workflow

Follow this process:

1. Read the PRD end to end.
2. Identify the product type and risk profile.
3. Check non-functional requirements.
4. Check access, permissions, security, and privacy.
5. Check auditability and explainability.
6. Check operational readiness.
7. Check failure modes.
8. Check abuse and misuse scenarios.
9. Produce a structured review in Russian.
10. Recommend concrete PRD amendments.

## Review dimensions

Always check relevant dimensions:

- security
- privacy
- permissions and access control
- sensitive data handling
- audit trail
- reliability
- performance
- observability
- recovery and rollback
- operator workload
- manual override
- moderation or abuse controls
- data retention
- explainability of automated decisions
- dependency fragility
- launch readiness

## Severity levels

Use these levels:

### Critical

A gap that can break trust, safety, money flow, permissions, sensitive data handling, auditability, or safe launch.

### Major

A gap likely to cause delivery confusion, production instability, operational overload, rework, or unsafe user experience.

### Minor

A gap that improves completeness or clarity but is unlikely to break launch by itself.

## Rules

- Do not invent risks unrelated to the product.
- Do not overstate minor issues.
- Be specific.
- Recommend exact additions to the PRD.
- Separate blocker issues from improvement suggestions.
- If a risk area is not applicable, say so briefly.

## Output format

Always answer in Russian using this structure:

# Risk and NFR Review: [Название PRD]

## 1. Overall verdict

Выберите один статус:

- acceptable with minor changes
- needs material revision
- not ready for delivery handoff

Затем объясните решение.

## 2. Critical gaps

Перечислите только серьёзные блокеры.

Для каждого:

- issue;
- why it matters;
- recommended amendment.

## 3. Major gaps

Для каждого:

- issue;
- why it matters;
- recommended amendment.

## 4. Minor gaps

Для каждого:

- issue;
- recommended improvement.

## 5. Missing or weak NFR coverage

Проверьте:

### Performance

Что отсутствует или требует уточнения.

### Reliability

Что отсутствует или требует уточнения.

### Security

Что отсутствует или требует уточнения.

### Privacy

Что отсутствует или требует уточнения.

### Auditability

Что отсутствует или требует уточнения.

### Observability

Что отсутствует или требует уточнения.

## 6. Operational readiness review

Оцените:

- review queues;
- manual override;
- exception handling;
- fallback logic;
- support burden;
- escalation paths;
- operator workload.

## 7. Abuse and misuse scenarios

Опишите:

- likely misuse cases;
- missing controls;
- recommended mitigations.

## 8. Recommended PRD amendments

Дайте конкретные блоки текста или пункты, которые нужно добавить в PRD.

## Quality bar

A strong review should:

- find launch-relevant risks;
- distinguish critical from minor;
- give practical amendments;
- improve safety and delivery readiness;
- avoid abstract or generic warnings.
