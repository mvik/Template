# Definition of Ready Validator

## Purpose

Check whether a groomed issue is truly ready for implementation.

## Trigger conditions

Run this skill before implementation starts.

## Checklist

- Is the problem/value clear?
- Is scope bounded?
- Are acceptance criteria observable?
- Is validation evidence defined?
- Are dependencies explicit?
- Is rollback possible?
- Are important assumptions visible?
- Are unresolved blockers still present?

## Anti-patterns

- vague acceptance criteria
- hidden assumptions
- undefined validation
- missing rollback
- unresolved implementation blockers
- "we will figure it out during coding"

## Output

Emit:

- ready: yes/no
- blocking gaps
- recommended corrections
