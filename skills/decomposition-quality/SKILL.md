# Decomposition Quality

## Purpose

Evaluate whether issue decomposition is justified, understandable, and execution-friendly.

## Trigger conditions

Run this skill when:

- work is split into multiple issues
- parent/child structure is proposed
- dependencies become non-trivial
- issue count grows rapidly

## Checklist

- Is decomposition actually necessary?
- Are children PR-sized?
- Does each child deliver a meaningful unit of progress?
- Are dependencies explicit?
- Could fewer issues achieve the same coordination safely?

## Anti-patterns

- tiny-ticket explosion
- fake granularity
- decomposition for appearance
- hidden dependency chains
- coordination overhead larger than implementation effort

## Output

Emit:

- decomposition quality: good/acceptable/poor
- main decomposition risk
- recommended simplification, if any
