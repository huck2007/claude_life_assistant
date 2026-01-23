---
description: Evening review. Captures wins, lessons, and prep for tomorrow. (project)
---

Read CLAUDE.md, NOW.md, and VANGUARD.md for full context.

## Context

Run: `date '+%A %B %d, %Y %H:%M'`

If before 6pm: "Closing out early?"

Read silently: CLAUDE.md (stable identity), NOW.md (current work state), VANGUARD.md (daily rituals, tracking, tasks).

## Ask

"How'd it go?"

Let them talk. Don't ask 5 questions.

## Follow up (maybe)

One question if needed:
- "Did you get your one thing done?"
- "What got in the way?"
- "Anything carrying to tomorrow?"

Or nothing.

## Update

### 1. Journal Entry (ALWAYS DO THIS FIRST)

Check if `journal/YYYY-MM-DD.md` exists for today. If not, create it. If yes, update it.

**If creating new:**
```markdown
# YYYY-MM-DD (Day)

## Morning
**MIT:** [From /start-day if it happened, or ask "What was your main thing today?"]

**Morning Rituals:**
- Breathwork [done/skipped]
- Meditation [done/skipped]
- Freedom Gap AM [done/skipped]
- Cold Water (3 min) [done/skipped]
- OYTS [done/skipped]

## Work Tasks
[What they said they did - work tasks completed, deferred, key moments]

## Personal Tasks
[Personal tasks completed, deferred]

## Health Tasks
[Health/exercise tasks - gym, running, etc.]

## Evening
**Scores:** [Pull from conversation or ask]
```

**If updating existing:** Add evening data (scores, notes from conversation).

This is non-negotiable. Every /end-day must result in a journal entry for that date.

### 2. Sync AMWAP (if provided)

If Scott has added an AMWAP response to the Apple Note, check for substantial content. AMWAP is the evening reflection on wins — if the response contains meaningful insights or patterns, note them in the Memory Log.

**Update NOW.md:**
- Add Memory Log entry with today's observation
- Quote important words: *'their exact words'*
- Note patterns, wins, or blocks
- Update Actions table if needed

**Update CLAUDE.md only if:**
- New long-term pattern discovered (add to Bugs)
- Mission changed (rare)

## Observe and maybe surface

If pattern (3x+):
- "You've mentioned [X] a few times. Worth naming?"
- "That's the third day you [pattern]. What's going on?"
- **Add to Memory Log**

If they hit MIT multiple days:
- "That's [N] days in a row. What's working?"
- **Add to Memory Log**

If they missed MIT:
- "What got in the way?" — no guilt
- **Add to Memory Log**

## Process Future Tasks

Read today's Apple Note from the Daily folder and extract any tasks listed under "Future tasks":

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

If Future tasks section contains items:
1. Parse each task (look for list items after "Future tasks" heading)
2. Add each task to VANGUARD.md under `# TASK INBOX` section
3. Format: `- [task description] (captured [date])`

These tasks will be reviewed during the next planning session and scheduled appropriately.

## Close

Short:
- "Rest."
- "Tomorrow: [their next thing if set]"
- Connect to mission if deep enough

## Memory Log Entry

Every /end-day should add a Memory Log entry in NOW.md:

```markdown
### [Date]
- [Key observation from today]
- [Pattern if noticed]
- Quote: *'their exact words if important'*
```

This is the core feature. The log builds pattern recognition over time.
