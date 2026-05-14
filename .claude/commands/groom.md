# /groom

Turn a rough project idea into implementation-ready GitHub issue drafts.

## Purpose

Use this command when the project owner gives a rough idea, problem, feature request, or epic candidate and wants it groomed before implementation.

This command preserves the staged grooming process:

1. Context
2. User story
3. Impact analysis
4. NFR sweep
5. Decomposition
6. Issue draft authoring
7. PO approval gate

## Operating rules

- Do not implement during grooming.
- Do not create GitHub issues until the project owner explicitly approves.
- Do not silently absorb scope drift.
- Do not skip stages.
- Do not invent missing decisions.
- If information is missing, surface the open question.
- Preserve confirmed decisions as locked carry-forwards from Stage 2 onward.

## Evaluator skills

During grooming, invoke relevant evaluator skills when appropriate:

- `skills/scope-drift-detection/SKILL.md`
- `skills/decomposition-quality/SKILL.md`
- `skills/definition-of-ready-validator/SKILL.md`
- `skills/anti-overengineering/SKILL.md`
- `skills/business-value-alignment/SKILL.md`
- `skills/simplicity-preservation/SKILL.md`

Skills are evaluators, not workflow controllers.

Use them to critique and strengthen proposed work, not to replace PO judgement or the staged grooming flow.

## Stage 1 — Context

Read the project anchors:

- `docs/vision.md`
- `docs/design-principles.md`
- `docs/project-operating-model.md`
- `DECISIONS.md`
- existing relevant GitHub issues if available

Output:

- closest related existing work
- possible duplicates or overlaps
- relevant decisions
- obvious scope risks
- initial recommendation: proceed / re-scope / defer

Pause for PO confirmation before Stage 2.

## Stage 2 — User story

Restate the request as:

`As a <role>, I want <capability>, so that <outcome>.`

Also identify:

- beneficiary
- business/user value
- trigger/frequency if relevant
- assumptions
- open questions
- locked carry-forwards

Pause for PO confirmation before Stage 3.

## Stage 3 — Impact analysis

Produce the 5-field impact analysis:

- **Touched files:** likely files, folders, or artefacts
- **Downstream systems:** affected users, systems, processes, integrations, or docs
- **Backwards-compat risks:** what could break or become inconsistent
- **Integration points:** where the change connects to existing project surfaces
- **Rollback plan:** how to safely return to the previous state

Also state:

`integration_surface_detected: true | false`

Set `true` if the work crosses a system boundary, changes a contract, modifies persisted data, touches external integrations, or changes automation behaviour.

Include locked carry-forwards.

Pause for PO confirmation before Stage 4.

## Stage 4 — NFR sweep

Apply `docs/grooming/nfr-sweep.md`.

For every mandatory NFR, emit one of:

- `applicable — mitigated by <specific mitigation>`
- `applicable — open risk: <specific risk>`
- `not applicable — <specific reason>`

Conditional NFRs are included only when triggered.

Include locked carry-forwards.

Pause for PO confirmation before Stage 5.

## Stage 5 — Decomposition

Decide whether the work is:

- atomic: one issue only
- parent + children: epic plus PR-sized child issues

Do not create children just to look productive.

For each child, define:

- purpose
- dependency
- touched files
- acceptance criteria
- validation evidence

Include locked carry-forwards.

Pause for PO confirmation before Stage 6.

## Stage 6 — Issue draft authoring

Draft GitHub issue body or bodies using the repo issue templates.

Each issue must include:

- problem / value
- scope
- out of scope
- acceptance criteria
- impact analysis
- NFR sweep
- validation evidence
- dependencies
- rollback plan
- child task list if parent issue

Do not create issues yet.

Include locked carry-forwards.

Pause for PO review.

## Stage 7 — PO approval gate

Before creating or editing GitHub issues:

1. show the final issue title(s)
2. show the final issue body/bodies
3. ask for explicit approval using the word `APPROVE`

Do not create issues without explicit PO approval.

After approval, create the issue(s) exactly as approved.

End with:

`READY FOR PO REVIEW`
