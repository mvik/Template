# /end

Close the current working session cleanly before `/clear`.

The purpose of `/end` is not only to write a summary. It must leave the repository in a safe handover state or clearly say that closure is incomplete.

---

## Responsibilities

1. Summarize what was completed during the session.
2. Summarize important decisions or changed assumptions.
3. Summarize unfinished work.
4. Summarize blockers or open questions.
5. Recommend the next immediate step.
6. Create or update a short session summary in:

`docs/session-history/`

Use a filename format similar to:

`YYYY-MM-DD-session-summary.md`

Keep summaries concise, factual, and action-oriented.

Avoid:

- long narratives
- giant logs
- repetitive implementation detail
- unnecessary ceremony

---

## Git closure rules

`/end` must inspect repository state before declaring the session closed.

Run at minimum:

```bash
git status --short
git status -sb
git log --oneline origin/main..HEAD 2>/dev/null || true
```

### Required handling

1. If a session summary is written under `docs/session-history/`, it is project history and must be committed unless the user explicitly said not to commit it.
2. Do not leave new `docs/session-history/*.md` files untracked.
3. Do not silently leave edited project files uncommitted.
4. Do not commit unrelated dirty files without checking whether they belong to the current session.
5. If local commits are ahead of `origin/main`, push them if normal repo permissions allow it.
6. If pushing is blocked, fails, or is intentionally not done, say clearly that closure is incomplete and explain the exact next command/action needed.

### Completion gate

You may say `Session closure complete` only when all of the following are true:

- the session summary has been written if there was meaningful work;
- intended session changes are committed;
- there are no unexpected untracked or modified files;
- the branch is not ahead of `origin/main`, or the user explicitly requested local-only work;
- any remaining dirty files are explicitly classified as unrelated/pre-existing and listed.

If any condition is not met, say:

`Session closure incomplete`

Then list the exact reason and the next action needed. Do not recommend `/clear` until closure is complete, unless the user explicitly accepts the incomplete state.

---

## Session closure report

End with this structure:

```text
Session closure: complete | incomplete
Committed: yes/no, commit(s): <hash or n/a>
Pushed: yes/no/n/a
Working tree: clean | dirty, with explanation
Untracked files: none | listed with decision
Next step: <single immediate action>
```

Only if closure is complete, recommend executing:

`/clear`
