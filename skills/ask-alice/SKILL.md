---
name: ask-alice
description: Map of how the alice-skills fit together: which comes next, where the work's record lives and how to explain it to the user. Use when unsure where work using these skills goes next, or when the user asks how they work.
---

These skills take work from a rough idea to done, across as many sessions as it needs. Each one is optional; small, clear work needs none of them.

## Which skill when

| Situation | Skill |
|---|---|
| The intent is vague or only partly said | `/clarify` |
| The approach is open or the territory unfamiliar | `/survey` |
| Agreed work will span sessions and has no spec yet | `/spec`, which only the user can start |
| A spec exists and the work continues | `/step` |
| The user changes the goal, scope or plan of work underway | `/steer` |

The usual path is clarify, then survey if needed, then spec, then step after step, with steer whenever the user changes their mind.

## The record

Work that spans sessions keeps its spec, handover (`next.md`), journal, a list of finished items (`done.md`) and any survey in `.work/<name>/`. The user owns the spec except its route and assumptions. `.work/knowledge.md` is shared by all work in the project, and `.work/parked.md` holds separate ideas for later. `/step` describes each file.

## Telling the user

Say what a skill will do for them, in their words rather than these names. For example:

- `/spec`: "writes a one-page plan that later sessions read, so you never have to explain this again". Tell them to type `/spec` to start it.
- `/step`: "picks up where we left off". In a new session they can type `/step` or just say to continue.
- `/steer`: they never need to name it; telling you what changed is enough.
