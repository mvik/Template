# NFR Sweep

The NFR sweep makes non-functional risks visible before implementation starts.

Each included NFR must be marked exactly one of:

- `applicable — mitigated by <specific mitigation>`
- `applicable — open risk: <specific risk>`
- `not applicable — <specific reason>`

Do not use bare `n/a`.

## Mandatory NFRs

These are always assessed.

### NFR-1 Cost

Assess whether the change creates meaningful cost.

Consider:

- paid services
- compute usage
- API calls
- storage growth
- manual effort
- operational maintenance

Required output:

- call volume / cost estimate:
- cost-control mechanism:
- new paid service introduced: yes/no

### NFR-2 Latency / responsiveness

Assess whether the change affects user-visible or process-visible speed.

Consider:

- slow commands
- long-running jobs
- UI/API response time
- blocking workflows
- waiting on external systems

### NFR-3 Reliability / availability

Assess whether the change can make the project less reliable.

Consider:

- scheduled jobs
- automation
- external dependencies
- retries
- partial failure
- rate limits
- degraded modes

### NFR-4 Auditability / evidence

Assess whether the change leaves enough evidence to verify what happened.

Consider:

- logs
- issue/PR links
- decision records
- before/after outputs
- reproducible commands
- reviewable artefacts

### NFR-5 Safety / idempotency

Assess whether rerunning, retrying, or partially failing the work can cause harm.

Consider:

- duplicate writes
- destructive actions
- irreversible changes
- unsafe defaults
- hidden side effects
- permission boundaries

## Conditional NFRs

Include these only when triggered.

### NFR-6 Backwards compatibility

Trigger when the change affects:

- file formats
- APIs
- CLI behaviour
- issue templates
- automation contracts
- persisted data
- public docs relied on by users or agents

### NFR-7 Integration coverage

Trigger when `integration_surface_detected: true`.

State:

- integration surface:
- planned validation:
- evidence required:

### NFR-8 Security / privacy

Trigger when the change touches:

- credentials
- secrets
- personal data
- private project information
- permissions
- external systems
- logs containing sensitive data

### NFR-9 Observability

Trigger when the change adds or modifies:

- automation
- background jobs
- integrations
- operational workflows
- failure-prone processes

State how failures will be noticed.

### NFR-10 Data integrity

Trigger when the change touches:

- stored data
- generated records
- migrations
- canonical docs
- structured outputs
- historical logs
- decision records

State how corruption, duplication, or drift is prevented.

## Example format

```text
NFR-1 Cost — not applicable — docs-only change; call volume zero; no paid service introduced.
NFR-2 Latency / responsiveness — not applicable — no runtime path changed.
NFR-3 Reliability / availability — applicable — mitigated by rollback via git revert.
NFR-4 Auditability / evidence — applicable — mitigated by PR diff and validation checklist.
NFR-5 Safety / idempotency — applicable — mitigated by docs-only scope and no destructive commands.
