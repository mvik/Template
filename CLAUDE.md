# Claude Instructions

This repo uses a lightweight AI-native operating model.

## Core discipline

- **Groom before you implement.** Understand intent, constraints, and acceptance criteria before writing code.
- **Source of truth.** `docs/vision.md` and `docs/design-principles.md` are the anchors. Check them before proposing changes.
- **Business value first.** Every change should trace back to a user or product outcome.
- **Scope-drift alert.** If a request would expand scope beyond the current issue or epic, flag it explicitly before proceeding.

## Anti-overengineering principle

Before introducing a new process, workflow, abstraction, governance layer, or automation, ask:

1. What concrete problem does this solve?
2. Can an existing mechanism solve it more simply?
3. Does the complexity reduce enough future time, risk, or rework to justify itself?

**Default: smallest safe useful implementation.**

## Evidence-first

Prefer observable facts over assumptions. If validation is possible, propose it before committing to an approach.

## Decision logging

Record key decisions in `DECISIONS.md`. One line of context is enough. No ceremony required.
