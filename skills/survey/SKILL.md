---
name: survey
description: Survey how others have solved this problem and its neighbours before committing to an approach. Use when the intent is clear but the approach is open or the territory unfamiliar, including an approach reopened mid-work.
---

Learn what should change the plan before anyone commits to it, including whether this needs making at all.

Look wider than an exact match: existing tools, adjacent problems whose solutions transfer, known failures, current practice, and what the project already has. Favour primary sources, and keep what a source shows apart from what you infer. Delegate the reading to subagents so this session stays light.

Stop when further reading would no longer change your recommendation.

For work that fits in one session, report in the conversation and write no file. Otherwise write `.work/<name>/survey.md`. Leave out any section with nothing that bears on a decision:

```markdown
## Intent
The intent and assumptions agreed so far.

## Bottom line
What this changes about the plan.

## Options
The approaches worth considering and their trade-offs.

## Pitfalls
What has gone wrong for others.

## Decisions this opens
Each with your recommendation.

## Sources
```

What another piece of work in the project would need to know, such as the domain's terms, how work here is checked and its traps, goes to `.work/knowledge.md` instead. When you create that file, add `@.work/knowledge.md` to the project's `CLAUDE.md`.

Report the bottom line and the open decisions to the user.
