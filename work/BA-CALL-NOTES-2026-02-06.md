# Bicycle Association — Call Notes & Analysis
**Daniel | Friday 6 Feb 2026**

---

## Outcome: AMBER

Trial project agreed in principle. Strategy work not off the table. No timeline. Wait for grant funding to unlock work packages.

---

## Meeting Summary

### 1. Has anything changed since December?

**Mesosys relationship clarified.** Daniel spoke with Pete (Mesosys owner, personal friend). Pete is now aware of and accepting of BA bringing in additional suppliers. He wasn't enthusiastic — naturally — but Daniel gave assurances:
- Pete's position as lead supplier is strong
- Daniel will continue leaning on Mesosys for technical assurance
- Expanding access to other expertise is essential for BA's growth

**Grant funding progressing.** EITI grant (or similar) still in progress. Their lead (also called Scott) expects to land ~€400k. BA have preferential status and Scott is experienced in grant applications. This is the key unlock — funding releases work packages.

### 2. What's the proposed working model?

Multiple third-party suppliers carrying out work packages. No single throat to choke. Mesosys remains lead partner.

- Daniel asked about rate blend — concerned about cost. Scott explained: more of me at the start, more of the team ongoing, with Scott dropping in monthly for oversight and direction.
- **Fixed price requested** when it comes to scoping a project.
- They're currently running a test case with a US-based supplier (data scraping project) to prove whether the multi-supplier model works operationally. This deliberately avoids doing that organisational learning on CS — Daniel wants to protect the opportunity.

### 3. What work packages are on the table?

**None yet.** Grant funding needs to land first, then work packages emerge.

### 4. Is there room for strategic review?

**Possibly — not ruled out.** Scott pushed on this. Daniel acknowledged that the work-package model might appear to preclude strategy work, but said once past the first project, Scott's involvement would be normalised for Pete, which opens the door.

### 5. Decision process and timeline

Still unclear. Successful grant funding → work packages defined → discrete trial project with CS (fixed price). No specific dates.

### 6. Technical landscape update

- **Toucan Tech** used for membership management portal — manages access rights, billing, user access to Amazon QuickSight (now "QuickSuite"). Geographic solution access stored here.
- **Fivetran is NOT used** (corrects earlier assumption from credentials deck)
- **Actual data flow:** Market data from supply chain/retail partners arrives via SFTP or S3 → validated & standardised → ingested to Snowflake → dbt for transformation and modelling → BI dashboards
- Playing with the broader Snowflake toolset
- Not-for-profit status leveraged — budget-conscious by nature

### 7. The Pete dynamic

Scott asked directly how Pete and he would get along. Daniel's response: *"I know him well, and if I thought it would be a problem then we wouldn't still be talking."* Reassuring but worth noting Daniel is managing both sides carefully.

---

## Analysis (vs Call Prep)

### What played out as expected
- Mesosys pushback happened (prep predicted this) — but Daniel managed it
- No specific work packages yet — still pre-funding
- Daniel is the advocate, not the budget holder (Simon absent, as expected)
- Strategy work not immediately on the table (amber scenario from prep)

### What was new / unexpected
- **Fixed price request** — signals budget sensitivity and possibly past experience of time-and-materials overruns with Mesosys
- **US test case project running** — BA are deliberately proving the multi-supplier model with someone else first. Smart. Also means CS won't be the guinea pig.
- **Fivetran not in the stack** — corrects the assumption. SFTP/S3 → Snowflake → dbt is the actual pipeline. Simpler than expected.
- **Toucan Tech as the membership/billing layer** — new detail, relevant for understanding the full platform architecture
- **"QuickSuite" rebrand** of QuickSight — minor but worth noting for future conversations

### Qualification reassessment

| Filter | December | Now |
|--------|----------|-----|
| Specific problem NOW? | Yes (de-risk, scale) | Yes, but no urgency — waiting on funding |
| Budget/authority? | Unknown | Grant-dependent. Simon still the decision-maker. |
| Did they come to us? | No | No — but Daniel is actively keeping the door open |

**Overall: Still amber.** Genuine interest, but no budget unlocked and no timeline. The difference from December is that the multi-supplier model is now accepted by all parties, which removes the biggest blocker.

---

## Recommendations

### 1. Don't chase — stay warm
This is a "when, not if" opportunity, but the timeline is Daniel's to set. Monthly light-touch check-in is right. Anything more looks desperate given they don't have budget yet.

**Action:** Set calendar reminder — check in with Daniel first week of March. One message: "Any movement on funding/work packages?"

### 2. Prepare a fixed-price scoping template
Daniel asked for fixed price. Have a template ready so you can respond fast when a work package emerges. For a proving-ground project, think 10-15 days, fixed fee, tight deliverable. Underpromise, overdeliver.

**Action:** Draft a lightweight fixed-price proposal template for discrete data/platform projects (reusable across prospects, not just BA).

### 3. Watch the US test case
If that data scraping project goes well, Daniel has proof the model works and green light to bring in CS. If it goes badly, it slows everything down. Worth asking about in the March check-in.

### 4. Strategy work is the real prize — play the long game
Daniel effectively said: prove yourself on a discrete project, and strategic involvement follows. This maps to the amber exit criteria from prep. Accept it. The first project is an audition, not a revenue play.

### 5. Pete relationship — go in respectful, not competitive
Daniel is match-making (your instinct). The framing that works: CS complements Mesosys, not competes. When you eventually meet Pete, lead with curiosity about what they've built, not critique. He built it — respect that, then add value on top.

### 6. Correct the credentials deck
Fivetran reference needs removing or caveating. The actual stack (SFTP/S3 → Snowflake → dbt → QuickSight) is simpler and more relevant to CS's strengths. Update before any proposal goes out.

### 7. Connect to today's strategy conversation (2pm)
This call is evidence for the 2pm discussion with Emma. Daniel is buying Scott's strategic brain. He didn't ask about the team's analytics capability — he asked about Scott's rate. This is a fractional CTO sale, not a data analytics sale. Use it.

---

## Next Steps

| Action | Owner | When |
|--------|-------|------|
| March check-in with Daniel (funding/work packages) | Scott | w/c 2 Mar |
| Draft fixed-price proposal template | Scott + Emma | Before next BA contact |
| Update credentials deck (Fivetran correction) | Emma | This week |
| Archive call prep, link to this doc | — | Done |

---

*Filed: 9 Feb 2026. Source: Scott's post-call notes.*
