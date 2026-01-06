#!/bin/bash
# Sync life assistant files to GitHub

cd /Users/scott/claude_life_assistant

# Add all tracking files
git add CLAUDE.md NOW.md VANGUARD.md CALENDAR.md PLAN-2026.md scott-calendar.ics trips/

# Commit with timestamp
git commit -m "Sync: $(date '+%Y-%m-%d %H:%M')"

# Push
if git push; then
    echo "Synced to GitHub"
else
    echo "Push failed - check connection or auth"
fi
