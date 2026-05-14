# Scope Drift Detection

## Purpose

Detect when work silently expands beyond the original problem or intended outcome.

## Trigger conditions

Run this skill when:

- scope grows during grooming
- new systems or abstractions appear unexpectedly
- implementation becomes platform-like
- process/governance starts multiplying
- "while we are here" work appears

## Checklist

- Does every major element support the original outcome?
- Has the work expanded into adjacent domains?
- Is a reusable platform being created prematurely?
- Are new processes being added without measurable benefit?
- Is complexity increasing faster than delivered value?

## Anti-patterns

- speculative future-proofing
- premature platformization
- process theatre
- hidden secondary objectives
- architecture for its own sake

## Output

Emit:

- drift detected: yes/no
- source of drift
- risk level: low/medium/high
- smallest safe correction
