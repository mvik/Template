# Grooming

This folder defines the reusable grooming process for this project template.

The goal of grooming is to turn a rough idea into implementation-ready issue drafts before work begins.

## Grooming stages

The standard `/groom` process has seven stages:

1. **Context** — check project anchors, existing work, decisions, duplicates, and scope risks.
2. **User story** — convert the rough request into a clear beneficiary/capability/outcome statement.
3. **Impact analysis** — identify touched files, downstream systems, compatibility risks, integration points, and rollback.
4. **NFR sweep** — assess non-functional requirements before implementation.
5. **Decomposition** — decide whether the work is atomic or needs parent/child issues.
6. **Issue draft authoring** — produce implementation-ready GitHub issue bodies.
7. **PO approval gate** — create or edit issues only after explicit project-owner approval.

## Behaviour-defining files

- `.claude/commands/groom.md` — slash-command workflow
- `.claude/agents/project-ba-groomer.md` — reusable BA/Groomer role
- `docs/grooming/definition-of-ready.md` — readiness bar for groomed work
- `docs/grooming/nfr-sweep.md` — non-functional requirement sweep
- `.github/ISSUE_TEMPLATE/` — GitHub issue body templates

## Core principles

- Groom before implementation.
- Preserve project anchors.
- Keep business/user value visible.
- Bound scope explicitly.
- Prefer the smallest safe useful implementation.
- Record important decisions lightly.
- Do not create issues without explicit approval.
- Do not let confirmed decisions drift between stages.

## Atomic vs parent/child

Not every idea needs a parent epic.

Use an atomic issue when one PR-sized change can deliver the outcome safely.

Use parent/child structure when:

- multiple PRs are needed
- dependencies must be coordinated
- different areas of the repo are affected
- different validation surfaces are required
- sequencing matters

Do not decompose work just to look structured.

## Approval rule

Issue creation or modification requires explicit project-owner approval.

The expected approval token is:

`APPROVE`
