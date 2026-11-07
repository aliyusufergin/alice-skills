#!/bin/sh
# Keeps work recorded in .work/ intact across a compaction. Prints nothing when there is none.
dir="${CLAUDE_PROJECT_DIR:-$PWD}"
work=""
for f in "$dir"/.work/*/next.md; do
  [ -f "$f" ] && work="$work $(basename "$(dirname "$f")")"
done
[ -z "$work" ] && exit 0
case "$1" in
  pre) echo "Work in progress is recorded in .work/ (${work# }). Name it in the summary and note that its record there is the source of truth." ;;
  post) echo "This session was just compacted. Work in progress is recorded in .work/ (${work# }). Before continuing it, re-read its spec.md, journal.md and next.md, and trust them over the summary." ;;
esac
