# alice-skills

Intent-first Claude Code skills for working on code or anything else. They state what good looks like and leave the how to the model. They stay firm only at the boundaries: who may change what, and what one agent hands to the next.

```text
/clarify → /survey → /spec → /step → /step → ... → done
                               ↑
                             /steer
```

Every skill is optional. Small, clear work needs none of them.

| Skill | Purpose |
|---|---|
| `clarify` | Understand and widen the intent, asking only what matters |
| `survey` | Learn from existing tools and neighbouring problems |
| `spec` | Write the smallest spec a fresh agent can work from safely |
| `step` | Continue the work in verified steps, keeping the next one ready |
| `steer` | Fold a new idea or change of mind into work underway |
| `ask-alice` | Map of the flow, the record and how to explain both to the user |

The skills hold no domain knowledge. What the work learns about its domain, including how work there is checked, goes to `.work/knowledge.md`.

Plans are rewritten as the work teaches something. The user owns intent, commitments, "not doing" and "done means". Agents own the route.

Before adding a line to a skill, ask whether the model would go wrong without it.

## Install

In Claude Code:

```text
/plugin marketplace add aliyusufergin/alice-skills
/plugin install alice-skills@alice-skills
```

## Recommended setting

Add this to `~/.claude/settings.json` so that `step` can suggest compacting at the end of a step, once more than 150,000 tokens of context are in use:

```json
"totalTokensReminder": "countdown"
```

It shows the agent how many tokens are left in the context window. The setting is undocumented and may change; without it, `step` simply never suggests compacting.

## License

MIT
