---
name: step
description: Advance multi-session work through verified steps, keeping the next one ready. Use when continuing work that has a spec.
---

Move the work toward the spec's intent one verified step at a time, so that any fresh agent can continue from what is on disk. Without a spec, small work can simply be done and larger work starts with `/spec`. When unsure what comes next, or how to explain the flow to the user, load `ask-alice`.

## The record

`.work/<name>/` holds the work's record:

- `spec.md`: what the user wants and what done means.
- `next.md`: the handover, overwritten every step.
- `journal.md`: decisions and departures from the route that are still true, a line or two each.
- `done.md`: finished route items, one line each, so progress shows at a glance.

`.work/knowledge.md` holds what another piece of work in the project would need to know: the domain's terms, how work here is checked, its traps, lasting facts about the user. Each fact lives in one place. When you create the file, add `@.work/knowledge.md` to the project's `CLAUDE.md`, and keep it short, since every session loads it.

## Authority

The route, assumptions and `next.md` are yours: change them as you learn and report what you decided. Intent, commitments, "not doing" and "done means" belong to the user; changes they bring go through `/steer`, and when the work conflicts with one, stop and ask. The spec changes only when these do; plans, findings and status go to the journal, `next.md` or the work.

## A step

1. **Orient.** Read the record and the work's recent history, and check the current state in proportion to how much will rest on it. The handover is one agent's claims and proposal, not instructions.
2. **Choose** the smallest coherent progress you can verify. Journal why when you depart from the proposal.
3. **Do and verify.** Work to the scale the spec describes, and check the result the way "done means" says and its user would. A defect in this work, or in what it rests on, belongs to this step. Name for the user what you cannot check here.
4. **Hand over.** Move finished items from the route to `done.md`, update the journal and knowledge file, overwrite `next.md`, then save the work and the record together as a checkpoint you could return to:

   ```markdown
   ## Facts
   What now exists, how its size compares with the spec's scale, how to verify it, what you learned that the work does not show, and anything you told the user you would do.

   ## Proposal
   The next goal and why. Leave the how open.
   ```

## Continue or stop

Continue without asking unless you reach:

- a conflict with intent or a commitment
- an action that is hard to reverse
- a milestone named in the spec
- the work outgrowing the spec's scale
- a step that needs the user's answer or action

Stay in this session while the work continues; after a compaction, trust the record over the summary. Suggest a fresh session only when the user turns to work that would have its own spec; the next step of the route is the same work.

If the session shows how many tokens are left and that count has dropped by more than 150,000 since the session or the last compaction began, suggest `/compact` at the end of the step, at most once per step. Without that count, never suggest it. The count only times the suggestion; it never changes how much a step does.

## Independent check

At every milestone, at the end, and at any step you judge risky, have a fresh subagent that sees only the spec and what changed since the last check look for where the work falls short of the spec or of what the user was told exists, could realistically lose or corrupt what the user trusts it with, or has grown beyond the spec's scale. Run it before handing over. Fix those, preferring fixes that make the work smaller, and report other findings unfixed. Repeat the check only when your fixes were substantial.

The work is done when every item in "done means" is verified and the final check's findings are fixed. A known way to lose or corrupt what the user trusts it with keeps the work open. Then remove `next.md` and report the result, naming what you could not verify and any ideas in `.work/parked.md`.
