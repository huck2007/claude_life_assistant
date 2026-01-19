# Impower Index Workshop Outcomes

**Workshop Date:** 15-16 January 2026
**Attendees:** Paul Henry (CIO), Applied Analytics Team, Scott, Eddie
**Purpose:** Define roadmap for Index development to secure FY 2026/27 budget (April 2026 start)

---

## Executive Summary

The workshop confirmed Impower's genuine commitment to further Index investment. After 12 months of budget constraints, they've steadied the ship and recognise the Index (particularly Top Level) as instrumental to their business development success. They need continued platform advancement as they grow.

**Next Steps:**
1. Scott delivers draft roadmap in Jira Product Discovery
2. Paul validates and sets MoSCoW priorities
3. Team creates broad estimates (not detailed discovery)
4. Paul sets budget quantum for FY 2026/27

**Approach:** Conservative and detailed to protect margin. Optimism warranted but discipline required given the original project's margin hit.

---

# Day 1: Current State & Future Vision

## 1. How the Index is Actually Used

| Product | Primary Use | User | Value |
|---------|-------------|------|-------|
| **Top Level Index** | Annual "Top 10" message, productivity benchmarking | Biz Dev / Marketing | Door-opener with LA CEOs and boards. Projected savings (single to double-digit £millions) get attention. |
| **Level 2 Indexes** | Early hypothesis building during consulting projects | Consulting Team | Sense-check before client provides recent/granular data. Not a pre-sales tool. |

**Key Insight:** Top Level is the show pony for business development. Level 2 is a consultant's workbench. They serve different purposes and different users.

**Current Workflow:**
- Data extraction from Snowflake is not onerous
- The hard work is analysis and "smell testing" (e.g., rescue packages that hide budget but inflate performance)
- Top Level engagement largely ends at the annual message
- Level 2 engagement begins when projects start

---

## 2. Strategic Ideas for Future Development

### 2.1 Health Index Reimagining

**Context:** ICS (Integrated Care Systems) reorganisation has made current health lenses unusable.

**Proposed Direction:**
- Move from organisational view to condition-based view (e.g., stroke patients, frailty pathways)
- More granular interpretation of healthcare performance
- Requires investigation into NHS data accessibility

**Open Question:** How do we get access to the data needed from NHS? This is a feasibility gate.

**Roadmap Category:** Strategic / Exploratory

---

### 2.2 Client Contributed Data

**Concept:** Supplement public datasets with client-provided data for:
- **Recency** — public data often 12-18 months old
- **Granularity** — detail not available in published sources

**Emerging Model:** New Adults Director at Impower pushing toward a "data club / co-op" model where clients contribute data and benefit from collective insights.

**Open Questions:**
- How feasible is standardising client data ingestion?
- What governance/consent is needed?
- Is there appetite from LAs to share?

**Roadmap Category:** Strategic / Medium-term

---

### 2.3 Open Access / Gated Portal

**Concept:** Publicly accessible (but gated) insights to drive inbound interest.

**Options Discussed:**

| Option | Description | Effort |
|--------|-------------|--------|
| **Regular Report** | PPT/PDF published 2-4x per year | Low |
| **Gated Power BI** | Impower-managed access grants, curated audience | Medium |
| **Freemium Portal** | Tiered access — basic free, advanced paid | High |

**User Personas:**
- CEO: receives 6-monthly report
- Analyst: needs tool access to explain findings
- Impower Director: uses findings as conversation opener

**Roadmap Category:** Strategic / Requires commercial model clarity

---

### 2.4 Predictive / Scenario Modelling

**Current State:** Trajectory modelling exists but uses client-contributed data, not public data.

**Paul's View:** Public data too old for meaningful prediction.

**Scott's View:** Worth testing. "What if" scenarios around savings numbers could add value — e.g., toggles/inputs that show outcome changes based on scenario parameters.

**Roadmap Category:** Exploratory / Validate with prototype

---

## 3. Near-Term Work Items

### 3.1 Adult Social Care Level 2 — Data Source Change

**Status:** Confirmed direction
**Change:** Use NHS SALT data, not newly published CLD data (deemed not appropriate)
**Impact:** Data pipeline and metric reconfiguration required
**Paul's Action:** Already positioned to Adults team — no CLD adoption

**Roadmap Category:** Committed / Near-term

---

### 3.2 High Needs Level 2 — On Hold

**Status:** Blocked by policy uncertainty
**Context:** SEND data changes pending DofE white paper. Unclear if EHCPs will continue.
**Impact:** Engaging LAs on High Needs is pointless until policy/process direction is known.

**Roadmap Category:** Deferred / External dependency

---

### 3.3 Data Source Structure Changes — Process Improvement

**Problem:** When a data source structure changes fundamentally, it cascades through:
- Measure extraction
- Metric definitions
- Index calculations

This is causing rework and inefficiency.

**Proposed Solution:** Design an approach that:
- Retains metrics and their source measures
- Allows a new structure (or new data source) to become the source for an existing metric
- Decouples metric identity from source structure

**Roadmap Category:** Platform improvement / Medium priority

---

### 3.4 Local Government Reorganisation

**Scale:** ~21 LAs proposed for restructuring (mergers, district reallocation, unitary creation)
**Timeline:** Currently in political consultation
**Challenge:** Cold start problem — new LAs have no history

#### Current Platform Strengths

- All snapshots retained (only last 5 surfaced in consumption layer)
- Period selection and terminated LA indicators already working
- Nearest neighbour history exists but needs alignment with snapshots

#### Proposed Snapshot Strategy

- Keep financial year-end snapshots permanently online
- Keep key reorganisation date snapshots online
- Fix nearest neighbour / period combination edge cases

#### Cold Start Solutions by Scenario

| Scenario | Approach | Notes |
|----------|----------|-------|
| **Merge / Aggregate** | Sum or weighted average of predecessor LAs | Relatively straightforward |
| **Split / District Reallocation** | Simple seeding from single predecessor | Already have this feature |
| **Complex Split** | Apportionment (population-weighted) | Paul sceptical — may not be ideal |
| **Boundary Changes** | Case-by-case assessment | Needs further analysis |

**Key Constraint:** Population and budget numbers must change together. If you adjust one without the other, metrics are meaningless. This extends to households, patient counts, etc.

**Healthcare Complexity:** ICS/ICB geographies don't map to LAs — currently using weighted average allocation based on patient percentage. LG reorg will compound this.

#### LG Inform Integration — Critical Dependency

LG Inform is our primary data source (API integration, daily updates). They are also addressing the reorg — this is business as usual for both parties, and we're aligned in approach.

**LG Inform's Strategy:**
- Focus on **district reallocation** scenarios
- Where data exists at district level and districts are reallocated to new LAs, they will aggregate up based on new district parentage
- Subject to data availability at district level
- Subject to strategies for handling merged district and higher-level data where different sources feed both levels

**LG Inform's Constraints:**
- They are **not convinced** that splitting/apportioning data in the other direction is feasible
- Open to ideas from us, but unlikely to pursue

**Beta API Access Offered:**
LG Inform will provide Beta access to their restructured API so we can assess the impact on our integration before it goes live.

**Discovery Requirement (Tier 1):**
We need a focused discovery exercise to determine whether LG Inform's strategy will cause problems for our integration. This should be treated as a sub-project of the reorg work and scheduled soon.

Key questions for discovery:
1. Do their structural changes break our existing extraction logic?
2. Where they aggregate at district level, does this give us what we need?
3. What happens to metrics where we don't have district-level data?
4. How do we handle the transition period (old and new structures coexisting)?

**Roadmap Category:** Critical / Must address before April 2026 if reorg proceeds

---

## Day 1 Summary: Roadmap Themes

| Theme | Priority Signal | Effort Signal |
|-------|-----------------|---------------|
| **LG Inform API Discovery** | Immediate — Beta access offered | Small (time-boxed) |
| **LG Reorganisation** | Must-do if reorg proceeds | High — architectural |
| **ASC Level 2 Data Change** | Committed | Medium |
| **Data Source Structure Process** | Should-do | Medium |
| **Health Index Reimagining** | Strategic | High — feasibility TBC |
| **Client Contributed Data** | Strategic | High |
| **Open Access Portal** | Strategic | Depends on commercial model |
| **Scenario Modelling** | Exploratory | Medium |
| **High Needs Level 2** | Deferred | Blocked |

---

# Day 2: Emerging Opportunities

## 4. Combined Authorities (Strategic Authorities)

### Context

The "Combined Authority" model is expanding rapidly. By completion:
- 67% of England's population covered by mayoral devolution
- 77% of England's economy under CA governance

**Powers:** Transport (inc. borrowing), Adult Education Budget, housing/regeneration, economic development, planning. Some have waste management and carbon neutrality powers.

### Workshop Outcome

| Question | Paul's Position |
|----------|-----------------|
| Is Impower pursuing CA work? | Not actively benchmarking across CAs yet |
| How would this fit the Index? | New lenses in Top Level with filters |
| Where does data sit? | At underlying LA level, not CA level |
| Who sponsors this internally? | Jeremy and Jon Ainger |

### Recommended Approach

**QAD Prototyping:**
1. We prepare data
2. Impower analyst (Jacqui) assesses feasibility and value
3. Decision point before committing to build

**Scott's View:** If this becomes real, it's a new product — not an Index extension. Price accordingly. Watch for scope creep ("let's just add CA metrics to the existing platform" is a trap).

**Roadmap Category:** Exploratory / QAD prototype first

---

## 5. Local Government Outcomes Framework (LGOF)

### Context

New government framework announced by Angela Rayner at LGA Conference (July 2025):
- 15 outcome areas including homelessness prevention, community safety, child poverty
- Moves away from "Westminster micromanagement" toward outcome-based measurement
- Consultation closed September 2025
- Final framework expected with provisional finance settlement
- **Intended go-live: April 2026**

### Strategic Question

LGOF could be:
- **Opportunity** — if government mandates outcome measurement, LAs need benchmarking tools
- **Threat** — if LGOF defines the metrics, does it compete with or complement the Index?

### Workshop Outcome

| Decision | Notes |
|----------|-------|
| **Dependency:** Wait for confirmation | Could still be canned |
| **If confirmed:** 15 areas as lenses | Click-through to LGOF pages |
| **Estimation:** Straightforward | Based on metric count and page count |

### Scott's Recommendation

**Do not integrate LGOF lenses into existing Top Level Index.**

Reasons:
- Technical/data workload will affect Top Level refresh performance
- Different purpose and audience
- Cleaner to create a separate LGOF Index with its own lenses

**Roadmap Category:** Contingent / Awaiting government confirmation

---

# Consolidated Roadmap View

## Priority Tiers for Jira Product Discovery

### Tier 1: Committed / Near-Term
| Item | Driver | Est. Effort |
|------|--------|-------------|
| ASC Level 2 Data Change (SALT) | Already positioned to client | Medium |
| LG Inform API Discovery | Beta access offered — assess reorg impact on integration | Small (time-boxed) |

### Tier 2: Critical / Must Address
| Item | Driver | Est. Effort |
|------|--------|-------------|
| LG Reorganisation Support | Political timeline — could hit before April 2026 | High |
| Data Source Structure Process | Ongoing inefficiency / technical debt | Medium |

### Tier 3: Strategic / Requires Validation
| Item | Driver | Est. Effort |
|------|--------|-------------|
| Health Index Reimagining | ICS unusable, condition-based view proposed | High (feasibility TBC) |
| Client Contributed Data | Recency/granularity gap, data co-op model | High |
| Open Access Portal | Biz dev lead generation | Medium-High (depends on model) |
| Scenario Modelling | "What if" value-add | Medium |

### Tier 4: Exploratory / Prototype First
| Item | Driver | Est. Effort |
|------|--------|-------------|
| Combined Authorities | Emerging opportunity, not yet active | QAD then assess |
| LGOF Integration | Government dependency | Contingent |

### Tier 5: Deferred / Blocked
| Item | Driver | Est. Effort |
|------|--------|-------------|
| High Needs Level 2 | DofE white paper pending | On hold |

---

## Next Steps

1. **Scott:** Transpose this into Jira Product Discovery with:
   - Goals for each item
   - MoSCoW field (default: Could/Won't for strategic items)
   - Dependencies flagged

2. **Paul:** Review and adjust MoSCoW to reflect Impower priorities

3. **Scott + Team:** Create broad estimates for Must/Should items

4. **Paul:** Set budget quantum for FY 2026/27

---

## Open Questions for Paul

1. **LG Reorg:** What's the latest on political timeline? Do we assume it proceeds?
2. **Health Index:** Who investigates NHS data access feasibility?
3. **Client Contributed Data:** Is there genuine LA appetite, or is this aspirational?
4. **LGOF:** When do we expect government confirmation?
5. **Budget envelope:** Is there a target range we should estimate toward?

---

*Document created: 19 January 2026*
*Source: Workshop notes from 15-16 January 2026*
