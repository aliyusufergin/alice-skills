---
name: step
description: Advance multi-session work through verified steps, keeping the next one ready. Use when continuing work that has a spec.
---

Move the work toward the spec's intent, one verified step at a time, so that any fresh agent can continue from what is on disk.

## The work record

Lives in `.work/<feature>/`, unless the project's `CLAUDE.md` names another place.

- `spec.md`: intent, commitments, not doing, done means, assumptions, and a rough route with milestones.
- `next.md`: the handover. Overwritten every step.
- `journal.md`: decisions and departures from the route that are still true, one or two lines each. Correct or remove an entry when it stops being true.

`.work/knowledge.md` is shared by all work in the project: what another piece of work here would need to know, such as the domain's terms, how work here is checked, its traps, and lasting facts about the user and their situation. Each fact lives in one place: here, or in the spec, journal or `next.md`. When you create it, add `@.work/knowledge.md` to the project's `CLAUDE.md` so every session loads it; keep it short for the same reason.

No spec means this skill does not apply yet: small work can simply be done, larger work starts with `/spec`. When unsure where this work goes next, or how to explain the flow to the user, load `ask-alice`.

## Authority

The route, assumptions and `next.md` are yours to change as you learn; decide these yourself and report what you decided. Changes the user brings go through `/steer`. Intent, commitments, "not doing" and "done means" belong to the user: record their decisions in the words they used, and when the work conflicts with one, stop and ask. The spec changes only when one of these does; plans, findings and status go to the journal, `next.md` or the work itself.

## A step

1. **Orient.** Read the record, the knowledge file and the work's recent history. Check the current state yourself, in proportion to how much will rest on it. The handover's facts are claims to confirm; its proposal is one agent's opinion, so weigh it against what you find.
2. **Choose.** Pick the smallest coherent progress you can verify. When you depart from the proposal, journal why.
3. **Do and verify.** Work to the scale the spec's intent describes. Check the result the way "done means" says, and the way its user would. A defect you find in this work, or in what it rests on, is part of this step. When you cannot check something here, say so and tell the user what to check.
4. **Hand over.** Update the route, journal any decisions, add to the knowledge file what another piece of work would need, overwrite `next.md`, then save the work and the record together as a checkpoint you could return to:

   ```markdown
   ## Facts
   What now exists, how its size compares with the spec's scale, how to verify it, and what you learned that the work itself does not show.

   ## Proposal
   The next goal and why it comes next. Leave the how open.
   ```

## Continue or stop

Continue to the next step without asking, unless you reach one of these stops:

- a conflict with intent or a commitment
- an action that is hard to reverse
- a milestone named in the spec
- the work outgrowing the scale the spec describes
- a step that needs the user's answer or action

Keep what you say to the user at a stop short enough to read at a glance.

Stay in this session while the work continues; after a compaction, re-read the record and trust it over the summary. Suggest a fresh session when the topic changes. The record is current after every step, so ending costs nothing.

## Independent check

At every milestone, at the end of the work, and at any step you judge risky, start a fresh subagent that sees only the spec and what changed since the last check (at the end, the whole work), never your reasoning. Run it before handing over. Ask it to find where the work falls short of the spec or of what the user has been told exists, could realistically lose or corrupt what the user trusts it with, or has grown beyond the spec's scale. Fix those, preferring fixes that make the work smaller, then report to the user at a milestone. Other findings go in your report, unfixed, for the user to weigh.

A check is settled once its findings are fixed. Repeat it only when your fixes were substantial.

The work is done when every item in "done means" has been verified and the final check is settled. A known way to lose or corrupt what the user trusts it with keeps the work open, however well it is documented. Remove `next.md` and report the result, naming anything you could not verify and any ideas waiting in `.work/parked.md`.
