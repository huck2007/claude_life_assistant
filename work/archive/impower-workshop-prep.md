# Impower Index Workshop - Prep Notes

**Date:** [TBC - 1.5 days]
**Attendees:** Paul Henry (CIO, facilitating), Applied Analytics Team (~5), Scott, Eddie
**Purpose:** Set out path/plan for Index development

---

## Your Role

Technical perspective. Paul facilitates. You're there to:
- Explain what's possible/practical given the platform
- Flag complexity and effort implications
- Get clarity on LG reorganisation scenarios so you can estimate

---

## 1. LG Reorganisation: The Data Challenge

This is the hard problem. Councils will merge/split over 12-18 months. You need to handle:

### Three Time Horizons

| Phase | Question | Data Challenge |
|-------|----------|----------------|
| **Past** | Can we still benchmark historically? | Metrics tied to old org structures |
| **Transition** | What do we show during the change? | Mixed state - some old, some new |
| **Post** | How do new orgs relate to their predecessors? | Need starting benchmarks for new entities |

### Legitimate Approaches (Not Made Up - These Are Established Patterns)

**Option A: "As-Was" Reporting**
- Keep historical data frozen against old org structure
- New orgs start fresh with no history
- Simple to implement, but loses continuity
- *Trade-off: Clean separation, but new councils can't see "where they came from"*

**Option B: Mapped Lineage**
- Create org mapping table: Old Org(s) -> New Org
- For mergers: aggregate historical metrics (sum populations, weighted averages for rates)
- For splits: requires apportionment assumptions (often population-weighted - but this gets very tricky depending upon number of splits)
- Simple seeding:  
    - we do have a feature to do simple "seeding" of metrics from a single source (e.g. employed for North Yorkshire, Cumbria, Somerset, Northamptonshire, Dorset, Buckinghamshire, etc..)
    - this only really works when there is a 1:1 mapping at the STLAC level, otherwise we need to merge / aggregate
- New orgs inherit a "synthetic" history
- *Trade-off: Continuity preserved, but synthetic history needs caveats*
- *We could enhance our aggregation features and introduce a new disaggregation feature to do apportionment*

**Option C: Dual-View Model**
- Maintain both views: "As-Was" and "Mapped to Current"
- User can toggle between them
- Most flexible, most complex
- *Trade-off: Best of both, but double the maintenance*

**Option D: Clean Break with Transition Cohorts**
- Historical reporting freezes at cutoff date
- New orgs grouped into "transition cohorts" (e.g., "2026 Reorganisation")
- Benchmark new orgs against each other, not against legacy
- *Trade-off: Sidesteps the mapping problem, but loses cross-era comparison*

### What You Need From Impower

To estimate and recommend, you need:
1. **Scenario definitions** - Which councils merge/split, and when?
2. **Priority call** - Is historical continuity essential or nice-to-have?
3. **Data availability** - Will source data (LG Inform, etc.) update to new structures, or lag?
4. **Acceptable approximations** - For splits, are population-weighted estimates OK?

**Push for this in the workshop.** Without clear scenarios, you can't estimate.

---

## 2. AI / Innovation Ideas

Paul's fishing. Here's a tiered menu - low to high effort:

### Tier 1: Quick Wins (Days/Weeks)

| Idea | What It Does | Effort |
|------|--------------|--------|
| **Narrative Generation** | LLM writes plain-English summary of dashboard metrics ("Council X ranks 3rd on efficiency, but 15th on...") | Low - API call to GPT/Claude |
| **Insight Alerts** | Auto-flag anomalies or significant changes ("This metric dropped 20% vs last quarter") | Low-Medium |
| **Export to Report** | Generate formatted Word/PDF briefing from selected metrics | Low |

### Tier 2: Meaningful Features (Weeks/Months)

| Idea | What It Does | Effort |
|------|--------------|--------|
| **Natural Language Query** | "Show me adult social care metrics for councils in the North West" -> returns filtered view | Medium |
| **Scenario Modelling** | "What if we improved to median?" -> calculates savings projection | Medium |
| **Chatbot Interface** | Conversational exploration of Index data | Medium-High |

### Tier 3: Platform Play (Months/Significant Investment)

| Idea | What It Does | Effort |
|------|--------------|--------|
| **Public-Facing Slice** | Free tier of Index with AI explainers, drives leads | High |
| **Client Self-Serve Upload** | Clients upload own data, get AI-powered benchmarking | High |
| **Predictive Analytics** | ML models predicting future performance trajectories | High |

### Your Honest Take

- Tier 1 is doable and adds genuine value
- Tier 2 needs budget commitment and clear use cases
- Tier 3 is a different product - needs strategic decision from Impower, not just a feature request

**Question to pose:** "What would make a client pay more for Index access?" That's the commercial driver for AI investment.

---

## 3. Vision Statement Discussion

Paul wants reflection on what Index has done and could do. Be ready to prompt:

### What Index Does Well
- Single source of truth for LG benchmarking
- Integrates multiple public data sources
- Semantic model enables consistent BI
- Savings projections are commercially valuable

### What's Currently Limited
- Static dashboards (no conversational access)
- No predictive capability
- Dependent on manual data loads for non-API sources
- LG reorganisation will break current structure

### Vision Prompts
- "Should Index be a data product Impower sells, or an internal analytical tool?"
- "Is the goal to be the definitive LG benchmarking platform, or one of several tools?"
- "What's the 3-year ambition - same thing but better, or fundamentally different?"

---

## 4. What You Want Out of This Workshop

### Must-Haves
1. **Clear LG reorg scenarios** - which councils, which changes, what timeline
2. **Priority decision** - historical continuity: essential vs nice-to-have
3. **Next steps agreed** - follow-up technical session (Friday?), then estimates by end of Jan

### Nice-to-Haves
1. Agreement on which AI features to explore (Tier 1 vs Tier 2)
2. Clarity on commercial model (who pays for Index, how)
3. Draft roadmap structure to refine post-workshop

---

## 5. Questions to Have Ready

### For Paul / Impower Team
- "What's driving the timeline here? Is there a client commitment or internal deadline?"
- "For LG reorg - do you have a preferred approach, or are you looking for our recommendation?"
- "On AI features - is this about differentiation, efficiency, or both?"
- "Who's the decision-maker on budget for the next phase?"

### To Test Assumptions
- "Are we assuming LG Inform will update their API to new org structures?"
- "Will ONS and other sources publish at new org level, or will we need to map?"
- "Is there appetite to invest in a proper transition data layer, or is this a patch job?"

---

## Day 2 (Technical Follow-Up)

If Day 1 goes well, Day 2 morning should be:
- Dive into specific reorg scenarios
- Whiteboard the data model changes
- Rough effort estimates for each approach
- Dependencies and risks

Come prepared to sketch entity-relationship changes on a whiteboard.

---

## One-Liner Summary

You're there to turn "wouldn't it be nice if..." into "here's what it takes" - and to get the inputs you need to estimate properly.
