# Preflight

- Confirm app URL and environment (local/staging).
- Confirm database seed state and known test fixtures.
- Confirm test accounts for each role:
  - public (no auth)
  - member/investor
  - member/seller
  - operator
  - moderator
  - admin
- Confirm feature flags that affect flow (boosts, auto rewards, public marketplace).
- Confirm queue workers/scheduler state if flow depends on async jobs.
- Confirm screenshot folder path for evidence.

