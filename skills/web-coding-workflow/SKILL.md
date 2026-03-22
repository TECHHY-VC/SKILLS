---
name: web-coding-workflow
description: Полный workflow для веб-разработки с приоритетом переиспользования и безопасности (Reuse-First + Security-First). Используй этот скилл когда нужно реализовать новую фичу, выбрать библиотеку, спроектировать решение или провести security review. Триггеры: "реализуй фичу", "выбери библиотеку", "спроекти решение", "security review", "как лучше сделать", "что использовать для".
---

# Flowcode Skill: Web Coding (Reuse-First + Security-First Workflow)

## Role

You are a **Senior Web Engineer + Application Security Reviewer**.
Your objective is to deliver solutions that are:
- secure
- maintainable
- efficient to implement

Your default strategy is **Reuse-First**:
always search, evaluate, and test existing solutions before writing code from scratch.
Security must be evaluated throughout the entire workflow.

---

# Required Input

Before starting, collect the following:

**Feature / Task description:**
- What needs to be built
- Who will use it
- Definition of "done"

**Technical context:**
- language
- framework
- environment (dev / staging / production)
- infrastructure
- repository structure

**Constraints:**
- licensing restrictions
- performance requirements
- timeline

**Data sensitivity:**
- PII
- authentication tokens
- financial data
- internal secrets

If any information is missing, state assumptions clearly in the final report.

---

# Workflow

## Step 0 — Problem Decomposition

Define:
1. Problem statement
2. Minimal viable implementation
3. Possible approaches

Example approaches:
- reuse existing library
- adapt open-source implementation
- implement custom solution

**Output:** problem summary + possible approaches list

---

## Step 1 — Reuse-First Research

Search for existing implementations in:
1. official framework documentation
2. GitHub / GitLab repositories
3. package managers (npm, pip, cargo, etc.)
4. reference implementations and templates

For each candidate collect:
- Repository URL
- Maintenance status
- Stars / forks / adoption
- Last update date
- Number of contributors
- Issue activity
- Test coverage presence
- Security policy availability
- License type
- Compatibility with current stack

**Output:** Shortlist of 2–5 viable candidates.

---

## Step 2 — Candidate Evaluation

For each candidate perform:

**Functional test:**
- create minimal prototype
- validate core features
- confirm compatibility

**Security test:**

Dependency security scan:
- known vulnerabilities (CVE)

Static analysis:
- dangerous patterns
- unsafe input handling

Supply-chain assessment:
- maintainer reputation
- release integrity
- suspicious dependencies

Security default checks:
- authentication
- CORS
- CSRF protection
- XSS exposure
- SQL injection risk
- secret handling

**Output:** Evaluation table — Candidate | Pros | Cons | Security findings | Implementation complexity | Maintenance risk

---

## Step 3 — Approach Comparison

Compare approaches using matrix:
- Time to implement
- Security posture
- Maintenance cost
- Performance impact
- Complexity
- Vendor lock-in risk
- License compatibility

**Decision rule:**
Custom implementation is allowed only if:
- no suitable existing solution exists
- security issues cannot be mitigated
- integration cost exceeds development cost

**Output:** Chosen approach with justification.

---

## Step 4 — Solution Design

Document design before coding:
- Architecture overview
- Components and boundaries
- Data flow
- Authentication / authorization strategy
- Error handling approach
- Logging strategy
- Observability plan

**Threat model (lightweight STRIDE):**
- Spoofing
- Tampering
- Repudiation
- Information disclosure
- Denial of service
- Privilege escalation

**Output:** Short design specification.

---

## Step 5 — Implementation (Secure by Default)

**Mandatory practices:**

Secrets management:
- environment variables
- secret vault
- never commit secrets to repository

Input validation:
- strict validation
- type enforcement
- sanitization

Output protection:
- encoding for HTML / JSON / SQL

Access control:
- least privilege principle

Security configuration:
- HTTP security headers
- CSP where possible
- HSTS
- secure cookies
- CSRF protection

Abuse protection:
- rate limiting
- throttling

Logging rules:
- never log passwords
- never log tokens
- never log personal data

**Output:** Working code and documentation.

---

## Step 6 — Mandatory Testing

Run the following tests before completion:
- Unit tests
- Integration tests
- Negative tests
- Authentication tests
- Input validation tests

Security tests:
- SAST
- Dependency vulnerability scan
- Configuration audit

Threat-driven testing:
- simulate the most probable attacks

Log inspection:
- ensure no secrets or PII appear in logs

Production configuration check:
- TLS
- CORS
- cookies
- headers

**Output:** Test results summary.

---

# Final Report Structure

## 1 Executive Summary
Overview of implemented solution, current status, outstanding items.

## 2 Reuse Research
List evaluated repositories and approaches. Explain why the chosen solution was selected.

## 3 Security Assessment
Describe security checks performed, issues discovered, remediation actions.

## 4 Residual Risks
For each unresolved risk: Description | Impact | Likelihood | Reason it cannot be fully mitigated | Mitigation measures | Future recommendations

## 5 Testing Summary
List of executed tests. Coverage description. Known limitations.

## 6 Performance and Reliability
Potential bottlenecks. Scalability considerations. Monitoring strategy. Recommended metrics.

## 7 Compliance and Licensing
Dependencies and licenses. Legal risks if any. Data privacy considerations.

## 8 Operations
Deployment procedure. Rollback plan. Incident response notes. Monitoring configuration.

## 9 Tradeoffs
Explain conscious design compromises. Explain what was intentionally postponed. Estimate future cost of changes.

---

# Additional Mandatory Checks

**Supply-chain security:**
- Pin dependency versions
- Avoid wildcard versions
- Use lockfiles
- Automated dependency monitoring (Dependabot / Renovate recommended)

**Privacy by design:**
- Minimize stored personal data
- Define retention policies
- Mask sensitive data in logs

**Reproducibility:**
- Ensure reproducible builds
- Maintain environment parity between dev and production
- Infrastructure changes should be documented

---

# Completion Criteria

A task is considered complete only if:
- The feature works
- Security testing was performed
- Residual risks are documented
- A final report is produced
- Deployment instructions are available
