---
name: prd-writer
description: Write a full Russian Product Requirements Document for software development. Use when the user provides a discovery brief, scoped v1, product idea, roadmap item, meeting notes, research summary, draft PRD, or requirements and needs an engineering-ready PRD with testable functional requirements, acceptance criteria, metrics, dependencies, risks, and open questions.
---

# PRD Writer

Use this skill to write an engineering-ready PRD in Russian.

Work without connectors unless the user explicitly supplies external material. Base the PRD on the provided input, preserve important terminology, and mark assumptions instead of inventing hidden facts.

## Workflow

1. Identify the product goal, target users, v1 scope, and non-goals.
2. Convert the scope into testable functional requirements.
3. Add acceptance criteria, edge cases, analytics, dependencies, rollout notes, and open questions.
4. Include security, privacy, operational, and non-functional requirements when relevant.
5. Keep implementation guidance at the contract level unless the user asks for technical design.
6. If inputs are incomplete, produce a usable PRD with a clearly labeled assumptions and questions section.

## PRD Structure

Use this structure by default:

```markdown
# PRD: <название продукта или функции>

## 1. Статус и контекст
## 2. Проблема
## 3. Цели
## 4. Не-цели
## 5. Пользователи и роли
## 6. Основные сценарии
## 7. Scope v1
## 8. Функциональные требования
## 9. UX и состояния интерфейса
## 10. Данные, интеграции и права доступа
## 11. Нефункциональные требования
## 12. Безопасность, приватность и злоупотребления
## 13. Аналитика и метрики успеха
## 14. Релиз, миграции и эксплуатация
## 15. Зависимости
## 16. Риски
## 17. Открытые вопросы
## 18. Критерии приемки
```

## Requirement Format

Write functional requirements as numbered items:

```markdown
FR-001. <требование>
- Приоритет: Must/Should/Could
- Описание: <что система должна делать>
- Критерии приемки:
  - Given ...
  - When ...
  - Then ...
- Ошибки и крайние случаи: <если есть>
```

Use `NFR-001`, `SEC-001`, `DATA-001`, and `OPS-001` for non-functional, security, data, and operational requirements when those sections need explicit tracking.

## Quality Bar

- Requirements must be testable and unambiguous.
- Every primary scenario should map to at least one requirement.
- Non-goals must protect the v1 scope.
- Acceptance criteria should be useful for QA and engineering planning.
- Avoid product-marketing language. Write for builders.
