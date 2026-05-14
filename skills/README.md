# Skills

This folder contains small reusable evaluator skills that support high-quality grooming.

These skills are deliberately not workflow engines. They do not replace `/groom`, create issues, route work, or control execution.

Their role is to critique and strengthen proposed work before implementation.

## Included skills

- `scope-drift-detection` — catches hidden scope expansion and process creep.
- `decomposition-quality` — checks whether issue splitting is justified and sane.
- `definition-of-ready-validator` — verifies that an issue is ready for implementation.
- `anti-overengineering` — challenges unnecessary complexity and speculative machinery.
- `business-value-alignment` — keeps work tied to a user or product outcome.
- `simplicity-preservation` — protects the project from avoidable moving parts.

## Design rule

A skill should exist only when it prevents a recurring real-world failure pattern.

If a skill starts controlling workflow instead of evaluating work, it is too powerful and should be simplified.
