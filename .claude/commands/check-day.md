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
- Completed tasks (items marked "done" or checked)
- Daily scores (Sleep, Steps, Nutrition, Hydration, Outdoors, Exercise values)
- OYTS journal response (text appearing after "Journal Response" header — Scott adds transcription from audio recording directly into note)

Sync to VANGUARD.md:
- Update morning rituals table for the day
- Update daily scores table for the day
- Mark completed tasks as [done] in the daily plan section
- If OYTS journal response has substantial content, add a summary to the OYTS Summaries section in VANGUARD.md with the day's date, question, and key insights

Also update journal file (`journal/YYYY-MM-DD.md`) with task completions and scores.

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
