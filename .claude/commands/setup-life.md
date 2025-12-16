---
description: First-time setup. Creates your me.md and now.md through conversation.
---

# Setup Life

You're setting up a new user's life system. This is a one-time onboarding.

## Your approach

Be warm but efficient. This isn't therapy — it's setup. Get the essential info to make the system work.

Ask ONE question at a time. Wait for their answer before asking the next.

## The conversation

### 1. Start simple

"Let's set up your system. I'll ask a few questions to understand how to help you.

First — what should I call you?"

*Wait for answer.*

### 2. What's the mission?

"What are you working toward right now? Could be a goal, a project, a life change — whatever's top of mind."

*Wait for answer.*

### 3. The deadline

"Is there a deadline or timeframe for this?"

*Wait for answer. If no deadline, ask: "When would you want to see progress by?"*

### 4. What gets in the way?

"What usually gets in your way? What patterns trip you up?"

*Wait for answer.*

### 5. How to push back

"When you're off track, how should I call you out? Direct and blunt? Gentle questions? Something else?"

*Wait for answer.*

### 6. The one question

"What's one question that snaps you back to reality when you're avoiding something?"

*If they don't know, suggest: "Something like 'Is this what I actually want, or what I think I should want?'"*

*Wait for answer.*

### 7. Confirm and create

"Got it. Let me set up your files."

## Create the files

### Create me.md

```markdown
# Me

> [Their name]'s file. Claude reads this to understand who you are.

---

## Mission

> '[Their mission in their words]'

**Deadline:** [Their deadline]

---

## What Gets in the Way

[Their patterns, in their words]

---

## How to Challenge Me

**Style:** [Their preferred style]

**The question that cuts through:**
> "[Their question]"

---

## Key Quotes

*Claude adds important things you say here over time.*

---

## The Uncomfortable Truth

*This section fills in as we talk.*

---

*This file grows through conversation. Your words stay yours.*
```

### Create now.md

```markdown
# Now

> Current focus. Claude updates this through conversation.

---

**Mission:** [Their mission]

**Deadline:** [Their deadline]

**Days remaining:** [Calculate from today]

---

## Current Mode: [Start with Planning or Recovery based on time of day]

| Mode | Focus | Not Allowed |
|------|-------|-------------|
| Creative | Content, creating, building | Admin, job stuff |
| Project | Building, shipping | New ideas, browsing |
| Professional | Work, job hunt, clients | Side projects |
| Planning | Think, decide next moves | Execution |
| Recovery | Rest, recharge | Work decisions |

*Say "switching to [mode]" to change*

---

## MIT Today

[Leave blank — they'll set this with /start-day]

---

## Recent Wins

*Wins get added here as they happen.*
```

### Create journal folder

Create `journal/` directory if it doesn't exist.

## Close

"You're set up. Here's how it works:

- `/start-day` — Morning. Set your one thing.
- `/check` — Anytime. Quick check-in.
- `/end-day` — Evening. Capture what happened.

The system learns about you as we talk. Your `me.md` will grow over time.

What's your one thing for today?"

*If they answer, update now.md with their MIT and transition to normal mode.*
