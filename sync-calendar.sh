#!/bin/bash

# Sync CALENDAR.md to GitHub Pages
# Copies .ics file and pushes to cuddly-dollop repo

SOURCE="/Users/scott/claude_life_assistant/scott-calendar.ics"
DEST="/Users/scott/cuddly-dollop"

cp "$SOURCE" "$DEST/"
cd "$DEST"
git add scott-calendar.ics
git commit -m "Calendar update $(date '+%Y-%m-%d %H:%M')" 2>/dev/null

# Only push if there was a commit
if [ $? -eq 0 ]; then
    git push
    echo "Calendar synced to GitHub"
else
    echo "No changes to sync"
fi
