---
name: prd-writer
description: write a full software prd in russian from a discovery brief, scope memo, strategy note, product blueprint, or draft requirements. use when chatgpt needs to produce a professional product requirements document with clear sections, release scope, user flows, requirements, metrics, risks, and rollout logic. suitable for new products, modules, workflows, internal tools, crm systems, marketplaces, saas products, and operator-assisted software.
---

# PRD Writer

## Purpose

Use this skill to write a full Product Requirements Document in Russian for software development.

The skill turns structured or semi-structured input into a delivery-oriented PRD that can be used by product, design, engineering, QA, operations, and business stakeholders.

This skill is universal and does not require connectors or external sources.

## When to use

Use this skill when the user asks to:

- write a PRD;
- create product requirements;
- turn a scope document into a PRD;
- turn a discovery brief into a PRD;
- prepare a development-ready document;
- formalize a software module;
- write requirements for CRM, marketplace, SaaS, AI product, internal tool, bot, workflow system, or operator-assisted product.

## Main rule

Write for execution, not inspiration.

The PRD should reduce ambiguity for development.

## Required behavior

When writing the PRD:

- write in Russian;
- keep the structure professional and clear;
- avoid marketing language;
- separate facts, assumptions, and open questions;
- make in-scope and out-of-scope explicit;
- make requirements testable or reviewable;
- include operator workflows if the process is not fully self-serve;
- include security, privacy, permissions, auditability, and reliability when relevant;
- include success metrics and rollout logic;
- do not over-specify technical implementation unless needed for clarity.

## Workflow

Follow this process:

1. Identify the initiative name.
2. Normalize the input into a release-level scope.
3. Identify the primary problem.
4. Identify users and roles.
5. Define in-scope and out-of-scope.
6. Describe current workflow.
7. Describe proposed future workflow.
8. Write functional requirements.
9. Write non-functional requirements.
10. Define data and analytics requirements.
11. Define dependencies and constraints.
12. Identify risks and failure modes.
13. Define success metrics.
14. Define rollout approach.
15. List open questions.
16. Add appendix if useful.

## Canonical PRD structure

Always use this structure unless the user explicitly requests another format.

# PRD: [Название инициативы]

## 1. Executive summary

Кратко опишите:

- что создаётся;
- для кого;
- какую проблему решает;
- почему это важно сейчас;
- какой ожидается результат.

## 2. Problem statement

Опишите:

- текущую проблему;
- где ломается текущий процесс;
- какие последствия это создаёт;
- почему проблему нужно решать.

## 3. Product goal and strategic fit

Опишите:

- product goal;
- business goal;
- strategic fit;
- связь с общей продуктовой стратегией.

## 4. Target users and roles

Опишите:

- primary users;
- secondary users;
- internal roles;
- operators / moderators / reviewers, если применимо;
- external actors, если применимо.

## 5. In-scope for this release

Перечислите явно, что входит в релиз.

Формат:

- [Item 1]
- [Item 2]
- [Item 3]

## 6. Out of scope

Перечислите явно, что не входит в релиз.

Формат:

- [Item 1]
- [Item 2]
- [Item 3]

## 7. Current workflow

Опишите:

- как процесс работает сейчас;
- какие ручные действия существуют;
- где возникают ошибки, задержки, потери данных или потери доверия.

## 8. Proposed future workflow

Опишите будущий процесс:

- main user journey;
- operator journey, если применимо;
- reviewer journey, если применимо;
- exception handling;
- failure states.

## 9. Functional requirements

Разбейте требования на логические блоки.

Для каждого блока используйте структуру:

### 9.x [Название блока]

**Purpose:**  
Кратко объяснить назначение блока.

**Main behavior:**  
Что система должна делать.

**Business rules:**  
Какие правила применяются.

**Permissions and roles:**  
Кто может делать какие действия.

**Edge cases:**  
Какие важные исключения нужно обработать.

## 10. Non-functional requirements

Опишите только релевантные категории:

### 10.1 Performance

Ожидания по скорости, объёму, нагрузке.

### 10.2 Reliability

Ожидания по устойчивости, retry, fallback, recovery.

### 10.3 Security

Ожидания по защите, доступам, ролям.

### 10.4 Privacy

Ожидания по персональным данным, чувствительным данным, retention.

### 10.5 Auditability

Что должно логироваться и быть проверяемым.

### 10.6 Explainability

Если есть автоматические решения, как объяснять причины.

### 10.7 Localization and accessibility

Если применимо.

## 11. Data and analytics requirements

Опишите:

- key entities;
- required events;
- required dashboards or reports;
- data retention expectations;
- success measurement logic.

## 12. Dependencies and constraints

Разделите на:

- technical dependencies;
- product dependencies;
- data dependencies;
- operational dependencies;
- legal / compliance constraints;
- staffing or resource constraints.

## 13. Risks and failure modes

Опишите:

- product risks;
- delivery risks;
- operational risks;
- abuse / misuse risks;
- data or privacy risks;
- mitigation ideas.

## 14. Success metrics

Разделите на:

### Leading metrics

Ранние сигналы успеха.

### Lagging metrics

Итоговые бизнес-метрики.

### Quality metrics

Метрики качества.

### Operational metrics

Метрики операционной эффективности.

## 15. Rollout approach

Опишите:

- pilot;
- internal beta;
- phased release;
- launch criteria;
- rollback or fallback logic.

## 16. Open questions

Перечислите только вопросы, которые реально влияют на scope, delivery, launch readiness или risk.

## 17. Appendix

Можно включить:

- assumptions;
- glossary;
- decision log;
- additional notes.

## Special handling rules

### Operator-assisted products

If the product has operators, reviewers, moderators, admins, or manual workflows, include:

- queues;
- manual review;
- manual override;
- escalation;
- exception handling;
- recovery flow;
- operator audit trail.

### Trust-sensitive products

If the product involves trust, identity, KYC, scoring, reputation, access, finance, moderation, introductions, or marketplace transactions, include:

- access control;
- audit trail;
- trust signals;
- decision explainability;
- abuse prevention;
- sensitive data handling.

### Workflow-heavy products

If the product is workflow-heavy, include:

- states;
- transitions;
- handoffs;
- failure states;
- notifications;
- ownership of each step.

## Quality bar

A strong PRD should:

- define one release-level initiative;
- have a clear problem statement;
- have explicit scope;
- have testable requirements;
- include metrics;
- include risk and NFR thinking;
- reduce guessing for engineering, design, QA, and operations.
