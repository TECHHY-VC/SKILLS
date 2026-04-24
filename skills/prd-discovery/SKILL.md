---
name: prd-discovery
description: Convert messy product input into a structured discovery brief for PRD preparation. Use when the user provides an idea, notes, scope document, product vision, roadmap item, meeting notes, research summary, draft PRD, or scattered requirements and needs them organized before scope slicing or PRD writing.
---

# PRD Discovery

Use this skill to turn raw product material into a discovery brief that can feed `prd-scope-slicer` or `prd-writer`.

Work only from information provided in the chat or attached artifacts. Do not assume connectors or external data sources are available. If important details are missing, make explicit assumptions and list follow-up questions instead of blocking.

## Workflow

1. Identify the product, target users, intended outcome, and business context.
2. Separate facts from assumptions, guesses, and open questions.
3. Extract user problems, jobs-to-be-done, desired outcomes, and constraints.
4. Capture candidate features without deciding final scope.
5. Identify risks, dependencies, non-functional needs, and data/security concerns visible from the input.
6. Produce a concise discovery brief in Russian unless the user requests another language.

## Output Structure

Use this structure:

```markdown
# Discovery Brief: <название продукта или инициативы>

## 1. Краткое описание
## 2. Целевая аудитория и роли
## 3. Проблемы пользователей
## 4. Цели продукта
## 5. Пользовательские сценарии
## 6. Кандидатный функционал
## 7. Данные, интеграции и зависимости
## 8. Ограничения
## 9. Риски и чувствительные зоны
## 10. Метрики успеха
## 11. Явные допущения
## 12. Открытые вопросы
```

Keep feature descriptions neutral. Do not overcommit to implementation details before scope slicing.

## Quality Bar

- Preserve user intent and terminology.
- Mark uncertainty visibly with `Допущение` or `Вопрос`.
- Prefer concrete user scenarios over abstract feature lists.
- Include enough detail for a later PRD writer to create testable requirements.
