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

- Update NOW.md: Set MIT Today
- Create/update journal (`journal/YYYY-MM-DD.md`)
- Create Apple Notes daily note (see below)
- Add Memory Log entry if pattern observed

Journal:
```markdown
# YYYY-MM-DD (Day)

## Morning
**MIT:** [their one thing]

## Notes

## Evening
```

### Apple Notes Daily Note

Create a note in the "Daily" folder using this AppleScript template. Pull today's tasks, MIT, and OYTS question from VANGUARD.md based on the current day.

```bash
osascript <<'EOF'
tell application "Notes"
    if not (exists folder "Daily") then
        make new folder with properties {name:"Daily"}
    end if

    tell folder "Daily"
        set noteBody to "<h1>[Day] [Date] [Month] [Year]</h1>
<h2>Morning Routine</h2>
<ul>
<li>Breathwork (box breathing)</li>
<li>Meditation (Waking Up app)</li>
<li>Freedom Gap AM (first hour tech-free)</li>
<li>Mobility</li>
<li>OYTS</li>
</ul>
<hr>
<h2>Today's Tasks</h2>
<p><b>MIT:</b> [MIT from conversation]</p>
<ul>
<li>[Task 1]</li>
<li>[Task 2]</li>
<li>[etc]</li>
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

Fill in the bracketed placeholders with actual values before running.

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
