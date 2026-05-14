# Definition of Ready

An issue is ready for implementation only when the following conditions are met.

## 1. Value is clear

The issue states:

- what problem is being solved
- who benefits
- why it matters now
- what outcome is expected

## 2. Scope is bounded

The issue states:

- what is included
- what is excluded
- known assumptions
- open questions, if any

Open questions that block implementation must be resolved before work starts.

## 3. Acceptance criteria are verifiable

Acceptance criteria must be observable.

Good acceptance criteria say what must be true after the work is done.

Avoid vague criteria such as:

- improve quality
- make it better
- clean up
- optimise
- handle properly

Unless they are tied to observable evidence.

## 4. Impact analysis is present

The issue includes:

- **Touched files:**
- **Downstream systems:**
- **Backwards-compat risks:**
- **Integration points:**
- **Rollback plan:**

If a field is not applicable, explain why.

## 5. NFR sweep is present

The issue includes the required NFR sweep from:

`docs/grooming/nfr-sweep.md`

Mandatory NFRs must always be assessed.

Conditional NFRs must be assessed when triggered.

## 6. Dependencies are explicit

The issue states either:

`Depends on: (none)`

or lists the dependencies.

For parent/child work, every child must state its sibling dependencies.

## 7. Validation evidence is defined

The issue states what evidence proves completion.

Examples:

- command output
- test result
- screenshot
- generated file
- documented manual check
- GitHub issue/PR link
- before/after comparison

Evidence must be available to the reviewer.

## 8. Rollback is possible

The issue must explain how to return to the previous state.

Default rollback is:

`git revert <commit>`

If rollback requires more than a revert, explain the steps.

## 9. Child task list is present for parent or atomic issues

Parent issue:

### Child task list

- [ ] Child 1
- [ ] Child 2

Atomic issue:

### Child task list

**No child tasks** — atomic work; this issue is itself the unit of execution.

## 10. PO approval is explicit

For newly groomed work, issue creation or editing happens only after explicit PO approval.

Expected approval token:

`APPROVE`
