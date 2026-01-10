---
description: Quick check-in anytime. Updates files, keeps you accountable. (project)
---

Read CLAUDE.md, NOW.md, and VANGUARD.md for full context.

## Context

Run: `date '+%A %B %d, %Y %H:%M'`

Read silently: CLAUDE.md (stable identity), NOW.md (current work state), VANGUARD.md (daily rituals, tracking, tasks).

## Sync Apple Note

Read today's note from the Daily folder:

```bash
osascript <<'EOF'
tell application "Notes"
    tell folder "Daily"
        set latestNote to first note
        return body of latestNote
    end tell
end tell
EOF
```

Parse the note for:
- Completed tasks (checked items)
- Daily scores (filled in values)
- OYTS journal response (any text under Journal Response)
- Audio transcript (if present)

Show the user what you found and sync to VANGUARD.md:
- Update daily tracking tables with scores
- Mark completed tasks as [done]
- Store OYTS summary if substantial response provided

## Ask

"What are you doing right now?"

Wait.

## Respond

**Quick reference:**

| They're... | You... |
|------------|--------|
| On track | "Good. Keep going." |
| Off track | "Is this your one thing?" |
| Stuck | "What's the blocker?" |
| Procrastinating | "What's the resistance?" |
| Venting | Listen, then "Want me to save that?" |
| Lost | "What actually matters right now?" |
| On fire | Stay out of the way |

## Update (if needed)

Only if something changed:
- **NOW.md**: Update MIT, add blocker to Actions, add Memory Log entry
- **CLAUDE.md**: Only update if new long-term pattern discovered (rare)
- **journal**: Note the check-in moment

## Close

Fast:
- "Back to it."
- "Need anything else?"
- "[X] days left."
