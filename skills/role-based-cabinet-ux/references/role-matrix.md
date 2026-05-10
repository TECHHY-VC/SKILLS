# Role Matrix (Cabinet and Marketplace)

## Canonical Rule

- One person -> one canonical contact/member identity.
- Roles are attached as capabilities.
- Multi-role user (investor + seller) switches context/modules, not accounts.

## Visibility Baseline

### Public

- Can view only published public-safe listing data.
- Cannot see private/gated details, internal notes, or operator comments.

### Member (Investor/Seller)

- Sees own cabinet summary and own request/listing statuses.
- Sees safe reasons and next actions.
- Cannot see another member's private records.

### Moderator

- Can review moderation incidents.
- No default access to raw KYC internals or ledger correction internals.

### Operator

- Can process operational queues and review actions.
- Can see internal decision context required for operations.

### Admin

- Full access, including irreversible actions and corrections.

## Required Status Modules for Multi-Role Cabinet

- Identity and profile completeness
- Trust/access/restriction safe summary
- Marketplace access requests
- Seller readiness and listing freshness
- Intro requests and outcomes
- Notifications and failed delivery safe state
- Referral/reward/moderation safe status (if enabled)

