# Impower Index — Roadmap Discussion Document

**Workshop Date:** 15-16 January 2026
**Prepared by:** Crozier Scott
**Purpose:** Draft roadmap for validation and MoSCoW prioritisation

---

## Overview

This document captures the outcomes from our two-day workshop and presents a draft list of items to be estimated for the Index development roadmap in FY 2026/27.

**Process:**
1. Paul reviews this document and sets MoSCoW priorities
2. Crozier Scott team creates broad estimates for prioritised items
3. Paul confirms budget allocation for FY 2026/27

---

# Workshop Outcomes

## 1. Current Index Usage

| Product | Primary Use | User |
|---------|-------------|------|
| **Top Level Index** | Annual productivity benchmarking, "Top 10" messaging | Business Development |
| **Level 2 Indexes** | Detailed analysis during consulting engagements | Consulting Team |

**Observations:**
- Top Level drives business development conversations
- Level 2 supports hypothesis building once projects commence
- Data extraction from Snowflake is efficient
- Analysis and interpretation ("smell testing") is where effort lies

---

## 2. Strategic Development Ideas

### 2.1 Health Index Reimagining

**Context:** ICS reorganisation has affected current health lenses.

**Proposed Direction:**
- Move from organisational view to condition-based view (e.g., stroke pathways, frailty)
- More granular interpretation of healthcare performance

**Open Question:** NHS data accessibility — feasibility to be assessed.

---

### 2.2 Client Contributed Data

**Concept:** Supplement public datasets with client-provided data for improved recency and granularity.

**Potential Model:** Data co-op approach where participating clients benefit from collective insights.

**Open Questions:**
- Feasibility of standardising client data ingestion
- Governance and consent requirements
- Client appetite to participate

---

### 2.3 Open Access to Indexes

**Concept:** Publicly accessible (but gated) insights to support business development.

**Options:**

| Option | Description |
|--------|-------------|
| **Regular Report** | PPT/PDF published 2-4x per year |
| **Gated Power BI** | Managed access, curated audience |
| **Freemium Portal** | Tiered access — basic free, advanced paid |

**Requires:** Commercial model clarity before scoping.

---

### 2.4 Scenario Modelling

**Concept:** "What if" scenarios around savings projections — toggles/inputs that show outcome changes based on user-defined parameters.

**Status:** Exploratory — worth validating with a prototype.

---

## 3. Near-Term Work Items

### 3.1 Adult Social Care Level 2 — Data Source Change

**Status:** Confirmed
**Change:** Adopt NHS SALT data (CLD data not appropriate at present)
**Impact:** Data pipeline and metric reconfiguration required

---

### 3.2 High Needs Level 2

**Status:** On hold
**Reason:** SEND data changes pending DofE white paper. Policy direction unclear (e.g., future of EHCPs).

**Recommendation:** Defer until policy/process guidance is published.

---

### 3.3 Data Source Structure Changes

**Issue:** When source data structures change fundamentally, it cascades through measure extraction and metric definitions, causing rework.

**Proposed Solution:** Design an approach that allows index metrics to be versioned and switched to a new measure source, allowing sources to be updated without breaking downstream dependencies.

---

### 3.4 Insight Alerts

**Concept:** Automatically flag anomalies or significant changes to index metrics.

**Examples:**
- "This metric dropped 20% vs last quarter"
- "Your ranking has dropped 3 places against your nearest neighbours"

**Value:** Applicable across multiple use cases:
- Regular reporting to organisations
- Portal features (if developed)
- Internal tool for consultants/analysts

---

### 3.5 Platform Improvements — Self-Service Enablement

**Goal:** Move toward an end-user / self-service driven tool where domain experts can operate without deep technical knowledge.

**Scope:**
- UX improvements to configuration workflows
- Reduced friction in common operations
- Time and quality improvements

---

### 3.6 Configuration Layer Validation

**Issue:** Absence of validation at the configuration layer causes build failures downstream, resulting in costly iteration cycles.

**Proposed Solution:**
- Build real-time validation checks into the configuration layer
- Fail fast with clear error messages before downstream processing
- Reduce rework and support burden

---

### 3.7 Local Government Reorganisation

**Scale:** ~21 LAs proposed for restructuring
**Timeline:** Currently in political consultation

#### Platform Readiness

- All historical snapshots retained
- Period selection and terminated LA indicators functional
- Nearest neighbour history exists (alignment refinement needed)

#### Proposed Snapshot Strategy

- Retain financial year-end snapshots permanently
- Retain key reorganisation date snapshots
- Resolve nearest neighbour / period selection edge cases

#### Approaches by Scenario

| Scenario | Approach |
|----------|----------|
| **Merge / Aggregate** | Sum or weighted average of predecessor LAs |
| **District Reallocation** | Simple seeding from predecessor, or district-level aggregation |
| **Complex Split** | Apportionment (population-weighted) — feasibility to be assessed |
| **Boundary Changes** | Case-by-case analysis |

**Key Constraint:** Population/budget numbers must change together to maintain metric integrity.

#### LG Inform Alignment

LG Inform (primary data source) is also addressing the reorg:
- Their approach focuses on district reallocation — aggregating district-level data to new LA structures
- They will provide Beta API access for us to assess integration impact

**Discovery Required:** Time-boxed exercise to assess whether LG Inform's structural changes affect our integration before main reorg work proceeds.

---

## 4. Combined Authorities (Strategic Authorities)

**Context:** Mayoral devolution expanding — 67% of England's population will be covered.

**Workshop Outcome:**
- Not currently benchmarking across Combined Authorities
- If pursued, would be implemented as new lenses with filters
- Data remains at underlying LA level

**Recommended Approach:** QAD prototype with data preparation, followed by analyst assessment before committing to build.

**Sponsors:** Jeremy, Jon Ainger

---

## 5. Local Government Outcomes Framework (LGOF)

**Context:** New government framework (15 outcome areas), intended go-live April 2026.

**Workshop Outcome:**
- Await government confirmation before committing
- If confirmed, implement as click-through to LGOF areas

**Recommendation:** Create as separate LGOF Index rather than integrating into existing Top Level (avoids performance impact on core product).

---

# Draft Roadmap — Priority Tiers

## Tier 1: Committed / Near-Term

| Item | Driver |
|------|--------|
| ASC Level 2 Data Change (SALT) | Already confirmed / In progress|
| LG Inform API Discovery | Beta access available — assess integration impact |

## Tier 2: Critical / Must Address

| Item | Driver |
|------|--------|
| LG Reorganisation Support | Political timeline — may proceed before April 2026 |
| Data Source Structure Improvement | Ongoing efficiency / maintainability |
| Configuration Layer Validation | Downstream build failures, rework reduction |
| Insight Alerts | Value across reporting, portal, and consultants |
| Platform Improvements (Self-Service) | Enable domain experts to operate independently |

## Tier 3: Strategic / Requires Validation

| Item | Driver |
|------|--------|
| Health Index Reimagining | ICS changes, condition-based approach proposed |
| Client Contributed Data | Recency/granularity improvement, data co-op model |
| Open Access Portal | Business development lead generation |
| Scenario Modelling | Enhanced user value |

## Tier 4: Exploratory / Prototype First

| Item | Driver |
|------|--------|
| Combined Authorities | Emerging opportunity |
| LGOF Integration | Government dependency |

## Tier 5: Deferred

| Item | Driver |
|------|--------|
| High Needs Level 2 | Blocked by DofE policy uncertainty |

---

# Questions for Discussion

1. **LG Reorg:** What is the latest on political timeline? Should we plan assuming it proceeds?
2. **Health Index:** Who will assess NHS data accessibility?
3. **Client Contributed Data:** Is there confirmed appetite from clients to participate?
4. **LGOF:** When do we expect government confirmation?
5. **Budget:** Is there a target range we should estimate toward?

---

# Next Steps

| Step | Owner | Timing |
|------|-------|--------|
| Review roadmap and set MoSCoW priorities | Paul | ASAP |
| Create broad estimates for Must/Should items | Crozier Scott | After priorities confirmed (ideally by end of Jan)|
| Confirm budget allocation for FY 2026/27 | Paul | [TBC] |

---

*Document version: Draft v1*
*Date: 19 January 2026*
