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

Work that spans sessions lives in `.work/<feature>/`, unless the project's `CLAUDE.md` names another place:

- `spec.md`: intent, commitments, not doing, done means, assumptions and route. The user owns everything but the route and assumptions.
- `next.md`: the handover to the next session.
- `journal.md`: decisions and departures that are still true.
- `survey.md`: what the survey found.

`.work/knowledge.md` holds what any piece of work in the project would need to know, and `CLAUDE.md` loads it into every session. `.work/parked.md` holds separate ideas for later.

## Telling the user

Say what a skill will do for them, in their words rather than these names. For example:

- `/spec`: "writes a one-page plan that later sessions read, so you never have to explain this again". Tell them to type `/spec` to start it.
- `/step`: "picks up where we left off". In a new session they can type `/step` or just say to continue.
- `/steer`: they never need to name it; telling you what changed is enough.
