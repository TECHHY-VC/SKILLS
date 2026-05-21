---
name: tpo-frontend-architecture
description: technical product owner guideline module: Frontend Architecture. preserves source checklists, templates, gates, and execution rules.
---

<!--
Knowledge file for Technical Product Owner Agent.
Purpose: help the agent plan architecture, modules, implementation stages, reviews, and acceptance.
Use this file as reference material, not as a rigid law. Adapt to project context.
-->

# Frontend Architecture

## Purpose

This document defines frontend architecture rules for the Technical Product Owner Agent.

The frontend must make user flows clear, accessible, responsive, maintainable, testable, and aligned with product requirements.

## Frontend architecture goals

The frontend should provide:

- clear user journeys
- fast initial experience
- predictable state management
- reusable components
- accessible interactions
- responsive layouts
- reliable form validation
- graceful loading and error states
- safe API communication
- testable UI behavior

## Recommended frontend layers

```text
App layer
  routing, layout, providers, authentication wrapper

Page layer
  route-level screens and page composition

Feature layer
  product capabilities and flows

Entity layer
  shared business entities such as User, Project, Task

Shared layer
  reusable UI, utilities, API client, config, assets
```

## Default folder structure

```text
src/
  app/
    routes/
    layouts/
    providers/
  pages/
    dashboard/
    settings/
    onboarding/
  features/
    auth/
    project-management/
    notifications/
    billing/
  entities/
    user/
    project/
    task/
  shared/
    ui/
    api/
    config/
    lib/
    hooks/
    assets/
  tests/
```

Adapt naming to the framework, but preserve the principle: product features should be easy to find.

## Component design principles

### 1. Start with the user flow

Before building components, define:

- who the user is
- what they are trying to do
- what screen they start from
- what success looks like
- what can go wrong
- what information the user needs at each step

### 2. Break UI into component hierarchy

The agent should ask the AI Developer Agent to decompose the interface into:

- page components
- section components
- reusable UI components
- form components
- stateful feature components
- presentational components

Example:

```text
ProjectDashboardPage
  ProjectSummaryCard
  ProjectStatusFilter
  ProjectTaskTable
    TaskRow
    TaskStatusBadge
  CreateTaskModal
```

### 3. Keep state minimal

State should represent only what changes and cannot be derived.

Do store:

- current user input
- selected filters
- open or closed UI state
- server data cache
- async status
- authenticated user session

Do not store:

- values that can be computed from existing state
- duplicated API data
- presentation-only values that can be derived from props
- backend truth that should be re-fetched or invalidated

### 4. Separate server state and UI state

Server state:

- comes from API
- can be stale
- needs loading, error, and refetch behavior
- may need caching

UI state:

- is local to the interface
- controls modals, tabs, filters, draft form values, selections

Do not mix server state and UI state in one uncontrolled global object.

### 5. Design loading, empty, error, and success states

Every important screen must define:

- loading state
- empty state
- permission denied state
- validation error state
- network error state
- success state
- destructive action confirmation
- retry path

The agent should reject UI work that only implements the happy path.

## Forms

Every form should define:

- field list
- labels
- helper text
- validation rules
- error messages
- disabled state
- loading state
- success behavior
- cancel behavior
- autosave behavior if relevant
- data loss warning if relevant

Form validation should exist on both frontend and backend.

Frontend validation improves user experience. Backend validation protects the system.

## API communication

Frontend API usage should be centralized through a typed client or module-level API file.

Example:

```text
features/projects/api/projectsApi.ts
shared/api/httpClient.ts
```

Each API call should define:

- request type
- response type
- error shape
- auth requirement
- loading behavior
- retry behavior if appropriate
- cache invalidation rule

Do not scatter raw `fetch` calls across components.

## Accessibility rules

Minimum frontend accessibility requirements:

- use semantic HTML first
- buttons for actions
- links for navigation
- visible focus states
- keyboard navigation
- proper labels for form fields
- alt text for meaningful images
- accessible modal behavior
- correct heading hierarchy
- color contrast checks
- do not rely only on color to communicate state
- test critical flows with keyboard

ARIA should be used carefully. Native semantic elements are preferred. Incorrect ARIA can make the interface worse.

## Performance rules

The frontend should define performance expectations.

Minimum checks:

- avoid unnecessary client-side JavaScript
- split large bundles
- lazy-load heavy views
- optimize images
- avoid blocking rendering
- measure loading, interactivity, and layout stability
- prevent unnecessary re-renders
- keep dependency count reasonable
- test on lower-end devices when the target audience requires it

Core Web Vitals to monitor:

- LCP: loading performance
- INP: interaction responsiveness
- CLS: visual stability

## Responsive design

Every screen must define supported breakpoints or responsive behavior.

Check:

- mobile layout
- tablet layout if relevant
- desktop layout
- minimum content width
- long text behavior
- overflow behavior
- touch target size
- navigation behavior
- modal behavior on mobile

## UX/UI review checklist

The Technical Product Owner Agent must check:

- Is the main user action obvious?
- Is the page hierarchy clear?
- Is the copy understandable?
- Are primary and secondary actions visually distinct?
- Are destructive actions protected?
- Are form errors specific and actionable?
- Are loading, empty, and error states implemented?
- Is the UI accessible by keyboard?
- Is semantic HTML used?
- Is responsive behavior defined?
- Does the design match the product requirement?
- Does the UI expose only authorized actions?
- Is the frontend connected to typed APIs?
- Are complex components tested?

## Frontend task template for AI Developer Agent

```markdown
# Frontend Task

## Goal
[What user-facing behavior must be implemented]

## User flow
1. 
2. 
3. 

## Screen or component scope
Included:
- 

Excluded:
- 

## Component hierarchy
- Page:
- Sections:
- Components:
- Shared UI:

## Data requirements
API calls:
- 

State:
- Server state:
- UI state:

## UX states
- Loading:
- Empty:
- Error:
- Success:
- Permission denied:

## Accessibility requirements
- 

## Responsive requirements
- 

## Performance requirements
- 

## Tests required
- Component:
- Integration:
- E2E:

## Acceptance criteria
- 
```

## Frontend implementation review

The agent must review:

- component structure
- state management
- API usage
- error handling
- loading states
- empty states
- accessibility
- responsive layout
- performance
- tests
- design consistency
- match with PRD and technical specification

The result should be accepted only if the UI works as a product flow, not only as isolated components.
