---
description: Morning kickoff. Sets intentions and MIT for the day. (project)
---

Read CLAUDE.md, NOW.md, and VANGUARD.md for full context.

## Context

Run: `date '+%A %B %d, %Y %H:%M'`

Read silently: CLAUDE.md (stable identity), NOW.md (current work state), VANGUARD.md (daily rituals, tracking, tasks), CALENDAR.md (key dates), PLAN-2026.md (monthly objectives).

## Ask

"What's your one thing today?"

That's it. Wait.

## After they answer

### 1. Journal Entry (ALWAYS DO THIS FIRST)

Check if `journal/YYYY-MM-DD.md` exists for today. If not, create it. If yes, update it.

```markdown
# YYYY-MM-DD (Day)

## Morning
**MIT:** [their one thing]

**Morning Rituals:**
- Breathwork [planned]
- Meditation [planned]
- Freedom Gap AM [planned]
- Cold Water (3 min) [planned]
- OYTS [planned]

## Work Tasks
[Pull work tasks from VANGUARD.md for today]

## Personal Tasks
[Pull personal tasks from VANGUARD.md for today]

## Health Tasks
[Pull health/exercise tasks from VANGUARD.md for today - gym, running, etc.]

## Evening
[Leave blank - filled by /end-day]
```

This is non-negotiable. Every /start-day must result in a journal entry for that date.

### 2. Other Updates
- Update NOW.md: Set MIT Today
- Create Apple Notes daily note (see below)
- Add Memory Log entry if pattern observed
- If any calendar events are mentioned, update BOTH `CALENDAR.md` AND `scott-calendar.ics` to keep them in sync

### Apple Notes Daily Note

Create a note in the "Daily" folder. **First check if a note for today already exists** — if so, skip creation.

Pull today's tasks, MIT, and OYTS question from VANGUARD.md based on the current day.

```bash
osascript <<'EOF'
tell application "Notes"
    set todayTitle to "[Day] [Date] [Month] [Year]"

    if not (exists folder "Daily") then
        make new folder with properties {name:"Daily"}
    end if

    tell folder "Daily"
        -- Check if note with today's title already exists
        set noteExists to false
        repeat with aNote in notes
            if name of aNote contains todayTitle then
                set noteExists to true
                exit repeat
            end if
        end repeat

        if noteExists then
            return "Note already exists for " & todayTitle
        end if

        set noteBody to "<h1>" & todayTitle & "</h1>
<h2>Morning Routine</h2>
<ul>
<li>Breathwork (box breathing)</li>
<li>Meditation (Waking Up app)</li>
<li>Freedom Gap AM (first hour tech-free)</li>
<li>Cold Water (3 min)</li>
<li>OYTS</li>
</ul>
<hr>
<h2>Work Tasks</h2>
<p><b>MIT:</b> [MIT from conversation]</p>
<ul>
<li>[Work task 1]</li>
<li>[Work task 2]</li>
</ul>
<h2>Personal Tasks</h2>
<ul>
<li>[Personal task 1]</li>
<li>[Personal task 2]</li>
</ul>
<h2>Health Tasks</h2>
<ul>
<li>[Health task 1 - gym, running, etc.]</li>
</ul>
<hr>
<h2>OYTS</h2>
<p><i>[OYTS question for today's day of week from VANGUARD.md]</i></p>
<h3>Journal Response</h3>
<p></p>
<hr>
<h2>Daily Scores</h2>
<p>Sleep: <br>
Steps: <br>
Nutrition: <br>
Hydration: <br>
Outdoors: <br>
Exercise: </p>"

        make new note with properties {body:noteBody}
    end tell
end tell
EOF
```

Fill in the bracketed placeholders with actual values before running. The script will skip creation if a note for today already exists.

## Connect (if appropriate)

If CLAUDE.md has a mission or deadline, connect briefly:
- "That moves you toward [their mission]."
- "[X] days to [deadline]."

## Close

Short:
- "Go."
- "One thing. Get it done."
- "[X] days left. Back to it."

## Observe (don't output)

Notice:
- Energy in their words
- Hesitation
- Same MIT as yesterday?
- Avoiding something?

If pattern (3x+), add to Memory Log and mention: "This is the third time you've set this. What's in the way?"
