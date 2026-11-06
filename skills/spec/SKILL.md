---
name: spec
disable-model-invocation: true
description: Write the smallest spec that lets a fresh agent do the intended work safely. Use when clarified work will span more than one session and has no spec yet.
---

Capture what must stay true and what done means. How to get there is for the agents doing the work, who will know more than anyone knows now.

Work from the conversation, any `survey.md` and `.work/knowledge.md`. Before writing, settle open decisions: ask the user only what changes what gets made and can neither be discovered nor cheaply reversed. Take the rest as assumptions.

Keep commitments few. A decision is a commitment only when the user insists on it or a wrong call would be expensive to undo; everything else is an assumption the work may overturn. When a commitment rests on a judgement word like "certain" or "safe", show the user what you take it to cover. Describe outcomes, and name parts of the work only when something outside it depends on them. Details that whoever does the work would figure out belong to the work. Cut any line whose absence would neither mislead a fresh agent nor lose the user something they care about. A good spec fits on one screen, and its "done means" reads as a few things the user would check.

```markdown
# <Feature>

## Intent
The outcome, who it is for, why, and how big it should be, in the user's words where possible.

## Commitments
What must stay true. Changing these takes the user's approval.

## Not doing

## Done means
Check what the work is for, not only what it produced: each item with how it will be checked, as something observed rather than judged. Take the way of checking from the knowledge file when it has one.

## Assumptions
Guesses that whoever does the work could get wrong without noticing, free to change with evidence.

## Route
A rough order, coarse and honest about what is still unknown. Mark with MILESTONE the few points where the user would want to look.
```

Then have a fresh subagent that sees only the spec look for contradictions and for places where two agents would make things the user would see as different. Resolve those with as few words as possible, asking the user where the answer is theirs. Differences the user would not care about stay open for the work.

## The record

The spec lives at `.work/<feature>/spec.md`, beside `next.md` and `journal.md`, unless the project's `CLAUDE.md` names another place.

Write the first `next.md` in the `/step` handover format, with the first goal as its proposal, show the user the spec, and once they approve it, point them to `/step`.
