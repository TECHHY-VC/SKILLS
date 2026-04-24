---
name: prd-scope-slicer
description: cut large software initiatives into a realistic release scope before prd writing or during prd refinement. use when a product idea, platform plan, roadmap block, or draft prd is too broad, mixes v1 and future phases, or risks scope creep. helps define must-have vs later, release slices, dependencies, exclusions, and a clean v1 cut line.
---

# PRD Scope Slicer

## Purpose

Use this skill to reduce a broad product initiative into a realistic release scope.

The goal is to define what belongs in v1, what should move to later phases, what is explicitly out of scope, and what dependencies or risks affect the release.

This skill is universal and does not require connectors or external sources.

## When to use

Use this skill when:

- the initiative is too broad;
- the PRD mixes v1 and phase 2;
- a product scope feels like a wishlist;
- there are too many modules in one release;
- engineering needs a clearer delivery boundary;
- the team needs to protect the critical path;
- the product is becoming too complex before launch.

## Main rule

Cut scope by preserving the smallest coherent user journey.

Do not keep features just because they are useful. Keep them only if they are needed for:

- the primary user outcome;
- trust and safety;
- operational viability;
- technical dependency;
- coherent launch.

## Workflow

Follow this process:

1. Identify the initiative boundary.
2. Extract all capabilities mentioned in the input.
3. Group capabilities into logical blocks.
4. Identify the main user journey.
5. Define the smallest coherent v1.
6. Move non-critical capabilities to later.
7. Mark explicit out-of-scope items.
8. Identify dependencies.
9. Identify scope creep risks.
10. Produce a scope slicing memo in Russian.

## Scope categories

Use these categories:

### Must have for v1

Required for the release to work safely and coherently.

### Should have if capacity allows

Useful, but not essential for launch.

### Move to later phase

Important for the product vision, but not required for v1.

### Explicitly out of scope

Not part of this release and should not be discussed as delivery work now.

## Prioritization rules

Keep in v1 if the item:

- unlocks the primary user outcome;
- is required for end-to-end workflow completion;
- is required for trust, security, auditability, or safe operations;
- is a hard dependency for other v1 items;
- prevents serious operational failure.

Move to later if the item:

- improves experience but does not unlock the core workflow;
- adds personalization, automation, or advanced recommendations;
- increases complexity without reducing core risk;
- supports edge cases that are not common enough for v1;
- belongs to growth, engagement, or optimization rather than launch.

Mark out of scope if the item:

- solves a different problem;
- belongs to a different product layer;
- creates major launch risk;
- requires infrastructure not available in the current phase;
- cannot be supported operationally.

## Output format

Always answer in Russian using this structure:

# Scope Slicing Memo: [Название инициативы]

## 1. Initiative boundary

Опишите, что именно является границей текущей инициативы.

## 2. Full capability inventory

Перечислите все capabilities, которые были найдены во входных материалах.

## 3. Proposed release cut

### Must have for v1

Список обязательных элементов.

### Should have if capacity allows

Список полезных, но не критичных элементов.

### Move to later phase

Список элементов для следующих фаз.

### Explicitly out of scope

Список элементов, которые не входят в этот релиз.

## 4. Release logic

Объясните:

- почему такая граница v1 логична;
- какой основной пользовательский путь сохраняется;
- какие элементы были отложены и почему.

## 5. Key dependencies

Разделите на:

- technical dependencies;
- data dependencies;
- product dependencies;
- operational dependencies;
- legal / trust dependencies, если применимо.

## 6. Scope creep risks

Опишите:

- что может раздуть релиз;
- какие темы нужно защищать от расширения;
- какие решения могут потребовать отдельного PRD.

## 7. Recommended PRD scope statement

Дайте готовый текст секции scope, который можно вставить в PRD.

## Quality bar

A strong scope slicing memo should:

- make the release smaller;
- keep the core journey coherent;
- protect trust and operational safety;
- make later-phase items explicit;
- remove ambiguity for engineering and design.
