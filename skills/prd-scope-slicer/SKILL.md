---
name: prd-scope-slicer
description: Cut broad product scope into a realistic v1, release scope, and deferred backlog for PRD work. Use when the user has a discovery brief, product idea, roadmap item, feature list, draft PRD, or broad requirements and needs a practical first release boundary before engineering.
---

# PRD Scope Slicer

Use this skill after `prd-discovery` when possible, or directly on broad product input when the user wants a realistic v1.

Work without connectors. Use only the user-provided material. If effort, team size, timeline, or technical constraints are missing, state assumptions and slice scope by product risk and learning value.

## Workflow

1. Restate the product goal and primary user outcome.
2. Identify the smallest release that creates real user value and can be tested in production or with a meaningful pilot.
3. Classify each candidate capability as `v1`, `later`, `explicitly out`, or `needs decision`.
4. Prefer thin end-to-end workflows over deep partial systems.
5. Keep trust, safety, security, data integrity, and operational basics inside v1 when they are required for safe use.
6. Call out scope creep, hidden platform work, dependencies, and decisions that can block delivery.

## Output Structure

Produce the scope slice in Russian unless the user requests another language:

```markdown
# Scope Slice: <название продукта или инициативы>

## 1. Цель v1
## 2. Принципы отсечения
## 3. Входит в v1
## 4. Не входит в v1
## 5. Отложено на следующие релизы
## 6. Сквозные пользовательские сценарии v1
## 7. Обязательные нефункциональные требования для v1
## 8. Зависимости и блокеры
## 9. Риски скоупа
## 10. Открытые решения
```

For each v1 item, include:

- user value
- why it belongs in v1
- acceptance signal
- known trade-off

## Quality Bar

- Make the cutline explicit and defensible.
- Avoid vague buckets like `admin panel` without concrete v1 responsibilities.
- Do not defer security, privacy, auditability, or abuse controls that are necessary for the v1 to be safe.
- Leave the output ready for `prd-writer`.
