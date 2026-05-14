# AI-Native Project Template

Reusable starter template for future AI-assisted projects.

This repository provides a lean project operating system focused on:

- vision and design anchors
- structured grooming before implementation
- clear issue drafting
- lightweight governance
- decision visibility
- evaluator skills that protect against scope drift and overengineering

The template is intentionally domain-neutral.

## What this is

This template helps start new projects with:

- reusable `/groom` workflow
- GitHub issue templates
- Definition of Ready
- NFR sweep
- lightweight decision logging
- evaluator skills for scope, decomposition, simplicity, and business value

The goal is to create a strong starting point for future projects without introducing unnecessary process machinery.

## How to start a new project

1. Create a new repository from this template.
2. Fill this `README.md` with the project-specific context.
3. Fill `docs/vision.md`.
4. Fill `docs/design-principles.md`.
5. Review `docs/project-operating-model.md`.
6. Use `/groom` before implementation work begins.

## Core workflow

Idea
→ `/groom`
→ issue draft
→ PO approval
→ implementation

## Key docs

- [Vision](docs/vision.md) — what success means and the direction anchor
- [Design Principles](docs/design-principles.md) — engineering and architectural truths
- [Operating Model](docs/project-operating-model.md) — how grooming and implementation work
- [Grooming](docs/grooming/README.md) — staged grooming workflow and supporting artefacts
- [Decisions](DECISIONS.md) — lightweight decision log
- [Skills](skills/README.md) — reusable evaluator skills

## Design philosophy

- Groom before implementation.
- Prefer the smallest safe useful implementation.
- Complexity must justify itself.
- Preserve business/user value visibility.
- Keep scope explicit.
- Use evaluator skills to critique work, not control workflow.
- Avoid unnecessary process and orchestration layers.
