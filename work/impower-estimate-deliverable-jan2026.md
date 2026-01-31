# Impower Indexes Platform — Roadmap Estimation

**Items 3.3, 3.4, 3.5, 3.6 & 3.7**
**Date:** January 2026

---

## Introduction

This document provides a detailed breakdown and estimation of the five roadmap items identified in the Indexes platform workshop report:

- **3.3** Data Source Structure Changes
- **3.4** Insight Alerts
- **3.5** Platform Improvements (self-service enablement)
- **3.6** Configuration Layer Validation
- **3.7** Local Government Reorganisation

Following a thorough evaluation of the platform module by module, we have restructured items 3.3–3.6 into three investment tiers rather than presenting them as a flat list. This structure reflects the reality that some work is foundational and should be prioritised, some builds on that foundation, and some requires strategic decisions before it can be scoped.

Item 3.7 (Local Government Reorganisation) is presented separately. It is driven by an external political event rather than a platform improvement choice, and its timeline is dictated by the reorganisation process itself.

All estimates are expressed as day ranges (minimum–maximum) and assume a developer with existing knowledge of the platform.

---

## Estimation Structure

The platform has grown significantly since its original build — from a focused configuration tool to a system managing 1,600+ measures and 2,000+ index metrics across multiple data sources, with daily LG Inform API integration and a growing number of indexes and lenses. That growth is a sign of success, and the platform is now central to Impower's business development capability.

The investment required to take the platform to the next level is presented in three tiers. Each tier builds on the previous one:

| Tier | Focus | Outcome |
|------|-------|---------|
| **1. Configuration Reliability** | Automated quality checks, essential capabilities, simplification | Ensures configuration quality keeps pace with platform scale |
| **2. Platform Maturity** | UX improvements, audit trail, versioning, new config screens | Makes the platform auditable, resilient, and ready for broader use |
| **3. Self-Service & Intelligence** | AI insight prototype, self-service enablement | New capabilities — requires a defined self-service strategy |

**Our recommendation:** Tier 1 should be treated as a priority investment. As the platform has scaled, manual quality checking of configurations is no longer sustainable. Tier 1 introduces automated validation that catches issues at the point of entry rather than downstream in the build pipeline — reducing rework and protecting data quality at scale.

Tiers 2 and 3 are optional and can be phased. However, Tier 2 is a prerequisite for Tier 3 — self-service requires a platform with audit trails, mature UX, and the structural resilience that Tier 2 delivers.

---

## Tier 1: Configuration Reliability

**Recommended as priority investment.**

As the platform has scaled to 1,600+ measures and 2,000+ index metrics across multiple data providers and daily API integrations, the volume and complexity of configuration has grown beyond what manual checking can reliably support. Tier 1 introduces automated quality checks that catch issues at the point of entry — before they reach the build pipeline. It also delivers essential capabilities needed for efficient day-to-day operation at the platform's current scale.

### Validation

| # | Deliverable | Module | Min | Max |
|---|-------------|--------|:---:|:---:|
| 3.5.11 | **SQL expression validation** — implement parsing and validation (JS parser or server-side) across measure expression, filter, dimension value expression, and dimension expression fields. Introduces automated checking at the point of entry rather than during the build pipeline. | Manual Measures | 2 | 3 |
| 3.5.14 | **Measure status lifecycle** — introduce a status field (new → failed → passed) driven by SQL validation results. Provides visibility of measure health before build. Depends on 3.5.11. | Manual Measures | 2 | 3 |
| 3.5.9 | **Prevent measure creation until data has been uploaded** — guard against creating measures that reference empty data sources. Required for downstream validation to function. | Manual Measures | 0.5 | 1 |
| 3.5.28 | **Conversion code validation** — parse and validate period conversion code at the point of entry, providing immediate feedback. Similar approach to 3.5.11. | Period Config | 2 | 4 |
| 3.5.41 | **Enhanced file validation and alerting** — validate uploaded files against expected schema and alert on structural issues before data enters the pipeline. Prevents broken files from causing downstream errors. | Upload Files | 2 | 4 |
| 3.5.30 | **Prevent metric creation unless source exists** — check that the source measure or index metric exists in the relevant database table (combined_measure_store or index_metric_store) before allowing metric creation. | Index Metrics | 0.5 | 1 |
| 3.5.34 | **Period type matching validation** — prevent creation of metrics that reference sources with mismatched financial periods. | Index Metrics | 0.5 | 1 |
| 3.5.18 | **Prevent deletion of LG Inform measures in use** — check for dependencies in index metrics before allowing deletion of an LG Inform measure. | LG Inform | 0.5 | 1 |
| 3.5.23 | **Prevent metric creation from undownloaded measures** — guard against creating index metrics from LG Inform measures where data has not yet been retrieved via API. Depends on 3.5.22. | LG Inform | 0.5 | 1 |
| 3.5.6 | **Archive instead of delete for file source columns** — replace destructive column deletion with a soft archive, preventing accidental breakage of dependent measures. | Data Providers | 0.5 | 1 |
| 3.5.38 | **Make file publish date mandatory** — enforce publish date entry on file upload to ensure data lineage is always recorded. | Upload Files | 0.25 | 0.25 |

### Essential Capabilities

| # | Deliverable | Module | Min | Max |
|---|-------------|--------|:---:|:---:|
| 3.5.36 | **Source and target period type selection with aggregation strategy** — introduce dedicated source/target period type dropdowns and an aggregation strategy selector (sum, avg, median). Supports future use of non-financial-year target periods. | Index Metrics | 2 | 3 |
| 3.5.21 | **Full edit facility for LG Inform configured measures** — expose all fields (including aggregate/merge) in the edit view. Currently incomplete — not all fields are available for editing after initial creation. | LG Inform | 1 | 2 |
| 3.5.22 | **On-demand API request to LG Inform** — currently data is only retrieved from LG Inform on a nightly schedule. Add the ability to trigger an API request on demand, with visibility of when the last request occurred and how many records were returned. | LG Inform | 2 | 3 |

### Essential UX & Simplification

| # | Deliverable | Module | Min | Max |
|---|-------------|--------|:---:|:---:|
| 3.5.8 | **Improved filtering for measures** — add a data provider filter to the measures list. With 1,600+ measures across the platform, the existing source file filter alone is insufficient for efficient navigation. | Manual Measures | 0.5 | 1 |
| 3.5.1 | **File source search facility** — add search capability to the data providers file source listing. | Data Providers | 0.5 | 1 |
| 3.5.10 | **Improve auto-fill from previous** — refine the "auto-fill from previous" feature to correctly preserve the source file and populate the dimension value expression. | Manual Measures | 0.5 | 1 |
| 3.5.35 | **Update field labels in index metrics** — as the platform has evolved, some field labels no longer reflect the functionality they drive. Update to align with current usage. Prerequisite for 3.5.36. | Index Metrics | 0.5 | 1 |
| 3.5.13 | **Remove redundant group expression field** — this field always contains the same value. Remove it from the UI and bake the value into the generated SQL. | Manual Measures | 0.5 | 0.5 |
| 3.5.15 | **Remove base measures references** — this feature is no longer required. Remove from the UI. | Manual Measures | 0.25 | 0.25 |
| 3.5.5 | **Remove legacy references** — remove references to an earlier configuration approach from the providers list and file sources. Simplifies the interface. | Data Providers | 0.25 | 0.25 |

| | | **Tier 1 Total** | **19.25** | **33.25** |
|---|---|---|:---:|:---:|

---

## Tier 2: Platform Maturity

**Recommended for long-term platform health.**

As the platform's role in Impower's business development has grown, so has the need for features that support a mature, production-grade product: audit trails, version management, complete editing facilities, and a UX that matches the platform's current scale and complexity. These items also form the foundation for any future self-service capability.

### 2a. Data Source Structure Changes (Roadmap Item 3.3)

**Problem:** When source data structures change fundamentally, the impact cascades through measure extraction and metric definitions, causing significant rework.

**Solution:** Design an approach that allows index metrics to be versioned and switched to a new measure source at a configured point in time, allowing sources to be updated without breaking downstream dependencies.

| # | Deliverable | Layer | Notes | Min | Max |
|---|-------------|-------|-------|:---:|:---:|
| 3.3.1 | **Design versioning approach** — spike and design document defining how metric versioning and source switching will work across the platform. | Architecture | | 2 | 3 |
| 3.3.2 | **Database schema changes** — additive schema changes to support metric versioning. | Snowflake | Non-destructive — uses CREATE OR ALTER | 1 | 2 |
| 3.3.3 | **dbt model adjustments** — implement source switching logic at a configured point in time within the transformation layer. | dbt | Point-in-time logic adds complexity | 3 | 5 |
| 3.3.4 | **Version management UI** — configuration screens for managing metric versions and triggering source switches. | UI Bakery | | 2 | 3 |
| | | | **Subtotal** | **8** | **13** |

### 2b. Platform UX & Editing

| # | Deliverable | Module | Notes | Min | Max |
|---|-------------|--------|-------|:---:|:---:|
| 3.5.12 | **Simplify ID column configuration** — replace the current JSON syntax requirement with a source/target table picker (popup). Removes the need for users to understand JSON notation. | Manual Measures | | 1 | 2 |
| 3.5.32 | **Copy / autofill from previous metric** — add the ability to clone an existing index metric configuration as a starting point for a new one. | Index Metrics | | 1 | 2 |
| 3.5.3 | **Dependent measures view** — from the file source listing or edit view, show which measures depend on a given data source. Provides impact visibility before making changes. | Data Providers | | 1 | 2 |
| 3.5.31 | **Filter by data provider** — add data provider filtering to the index metrics view, with visibility of the related source for each measure. | Index Metrics | | 0.5 | 1 |
| 3.5.33 | **Data provider & source filter in creation screen** — add cascading filters when creating index metrics. Shares implementation with 3.5.31. | Index Metrics | | 0.5 | 1 |
| 3.5.25 | **Larger code editor for conversion code** — replace the small text box with a modal or expanded editor suitable for multi-line code. | Period Config | | 0.5 | 1 |
| 3.5.26 | **Show data source context** — when creating period type configurations, display which data source the configuration relates to. Currently unclear. | Period Config | | 0.5 | 1 |
| 3.5.16 | **SQL syntax highlighting** — integrate a code editor component for SQL expression fields. Optional if full validation (3.5.11) is in place. | Manual Measures | Lower priority if Tier 1 validation delivered | 1 | 2 |
| 3.5.20 | **Improved error messaging for LG Inform metrics** — provide more informative errors when an LG Inform metric is invalid. | LG Inform | | 0.5 | 1 |
| | | | **Subtotal** | **6** | **13** |

### 2c. Audit, Metadata & Housekeeping

| # | Deliverable | Module | Notes | Min | Max |
|---|-------------|--------|-------|:---:|:---:|
| 3.5.4 | **Configuration change history** — introduce an audit trail recording changes to configuration with timestamps and user attribution. | Data Providers | Uploads already visible via View Uploads | 2 | 3 |
| 3.5.19 | **Store LG Inform metric metadata** — persist the full LG Inform metric metadata in a JSON column on the measures_configuration_lg_inform table. Needed to understand measure origins and potential. | LG Inform | VARIANT column in Snowflake | 0.5 | 1 |
| 3.5.40 | **Timestamps in View Files popup** — add created and last updated timestamps against each file in the View Files popup. | Upload Files | | 0.5 | 1 |
| 3.5.39 | **Show most recent publish date** — when a data provider and file configuration are selected, display the most recent date a file was published. | Upload Files | | 0.5 | 1 |
| 3.5.2 | **Expand file source listing** — increase the file source listing beyond the current 7-row limit. | Data Providers | Pagination configuration | 0.25 | 0.25 |
| 3.5.24 | **Layout improvements for LG Inform** — tighten layout for shallower screens, ensure all field labels are visible, pull up the latest period table. | LG Inform | | 0.5 | 1 |
| 3.5.17 | **Re-introduce app navigation** — the LG Inform measures configuration screen currently lacks navigation back to the main application. | LG Inform | | 0.25 | 0.25 |
| 3.5.37 | **Upload Files navigation** — add navigation back to the main application from the Upload Files screen. | Upload Files | | 0.25 | 0.25 |
| | | | **Subtotal** | **4.75** | **7.75** |

### 2d. New Build: Summary Metrics Configuration

Summary metrics are currently managed via a CSV-based process outside of the main application. As the platform has matured, this should now be brought into the configuration application alongside the other modules, providing a consistent management experience and removing the manual step.

| # | Deliverable | Layer | Notes | Min | Max |
|---|-------------|-------|-------|:---:|:---:|
| 3.5.42 | **Design config screens** — design the summary metrics management screens based on the existing ext_summary_metrics_configuration data structure. | Design | | 1 | 2 |
| 3.5.43 | **Build config screens (CRUD)** — full create, read, update, delete screens for summary metrics configuration. | UI Bakery | Brings into main application | 3 | 5 |
| 3.5.44 | **Update dbt modelling** — replace the external table / S3 approach with app-driven configuration, reading from the application database. | dbt | | 2 | 3 |
| | | | **Subtotal** | **6** | **10** |

| | | **Tier 2 Total** | **24.75** | **43.75** |
|---|---|---|:---:|:---:|

---

## Tier 3: Self-Service & Intelligence

**Requires strategic decisions before proceeding.** These items introduce new capabilities. Tier 3 should not be pursued without Tier 1 (minimum) and ideally Tier 2 in place.

### 3a. Insight Alerts Prototype (Roadmap Item 3.4)

The indexes contain lenses with metrics that move over time — absolute values, ratios, ranking positions across different dimension configurations. There is currently no capability to detect, analyse, or alert on these movements.

**Proposed approach:** Prototype on a specific lens with its blended outcomes, outcome metrics, and underlying sources made available across recent periods. Rather than relying on a semantic model with indicative queries, we recommend engineering a structured context containing these metrics and their movements for AI evaluation. This approach gives us more control over the quality of analysis.

We also recommend positioning this prototype as part of a regular publication (linking to roadmap item 2.1 — open access / gated portal), such as a quarterly report, which increases the value of the prototype output.

| # | Deliverable | Layer | Notes | Min | Max |
|---|-------------|-------|-------|:---:|:---:|
| 3.4.1 | **Select prototype lens and define scope** — workshop to choose the lens, define which metrics, periods, and dimensions are in scope. | Design | | 1 | 2 |
| 3.4.2 | **Engineer structured context for AI evaluation** — build the data context containing blended outcomes, input metrics, sources, recent periods, and within-year movements. | Data / dbt | Not a semantic model — purpose-built context | 3 | 5 |
| 3.4.3 | **AI analysis layer** — prototype trend detection, cause identification, and narrative generation against the structured context. | AI / Backend | Inherently uncertain — prototype and evaluate | 5 | 8 |
| 3.4.4 | **Output format design** — design the quarterly publication structure and format for the insight output. | Design | Links to roadmap item 2.1 | 2 | 3 |
| | | | **Subtotal** | **11** | **18** |

### 3b. Self-Service Enablement

Self-service — enabling Impower's own people to configure and manage the platform — is a fundamentally different proposition from the improvements listed in Tiers 1 and 2.

The platform was designed and built for technical configuration by people with deep system knowledge. The configuration workflows — measure definitions, SQL expressions, period type mappings, LG Inform integration — require an understanding of the underlying data model, the transformation pipeline, and the relationships between data sources, measures, metrics, lenses, and indexes.

Making this platform usable by non-technical users is achievable, but it is not a feature — it is a product decision that requires:

- **Strategy definition:** Which modules would be self-service? What level of user is expected to operate them (data analyst, subject matter expert, administrator)? What remains technically managed?
- **Role-based access control:** User management, permissions, and restricted views to prevent non-technical users from accessing areas that require specialist knowledge
- **Guided workflows:** Step-by-step wizards and structured flows rather than the current raw configuration forms
- **Contextual help:** Tooltips, documentation, and guidance embedded throughout the application
- **Error recovery:** Undo capability, draft/publish workflows, and potentially sandbox or preview environments
- **Training and onboarding:** Materials, walkthroughs, and a defined support model
- **Simplified interfaces:** Potentially a separate, restricted view of the configuration application for non-technical users

We would recommend a strategy workshop to define the self-service scope and requirements before this work is estimated. The Tier 1 and Tier 2 investments provide the foundation on which self-service can be built — particularly the validation guardrails (Tier 1), which would be essential safety nets for non-technical users.

| | | **Tier 3 Total (insight alerts)** | **11** | **18** |
|---|---|---|:---:|:---:|
| | | **Tier 3 Total (self-service)** | **TBD** | **TBD** |

---

## Item 3.7: Local Government Reorganisation

**This item sits outside the tier structure.** It is not a platform improvement decision — it is a response to an external political event. Approximately 21 local authorities are proposed for restructuring (mergers, district reallocation, unitary creation). The timeline is driven by the political consultation process, and the platform must be prepared before reorganisation takes effect.

This work is structured in two phases: a time-boxed discovery phase that should begin as soon as possible, followed by an implementation phase whose scope will be informed by discovery findings.

### Context

The platform already has strengths that support reorganisation:

- All historical snapshots are retained (only the last 5 are currently surfaced in the consumption layer)
- Period selection and terminated LA indicators are already working
- Nearest neighbour history exists, though it needs alignment with snapshots

The primary challenge is the **cold start problem** — newly created local authorities have no historical data. Different reorganisation scenarios require different approaches:

| Scenario | Approach | Complexity |
|----------|----------|:----------:|
| Merge / Aggregate | Sum or weighted average of predecessor LAs | Low |
| Split / District Reallocation | Simple seeding from single predecessor | Low (feature exists) |
| Complex Split | Apportionment (population-weighted) | Medium |
| Boundary Changes | Case-by-case assessment | High |

**Key constraint:** Population and budget numbers must change together. Adjusting one without the other renders metrics meaningless. This extends to households, patient counts, and other denominators.

**Healthcare complexity:** ICS/ICB geographies do not map directly to local authority boundaries. The platform currently uses weighted average allocation based on patient percentage. LG reorganisation will compound this mapping challenge.

### LG Inform Integration — Critical Dependency

LG Inform is the platform's primary data source via API integration (daily updates). They are also addressing the reorganisation and have offered Beta access to their restructured API so we can assess the impact on our integration before it goes live.

**LG Inform's strategy:**
- Focus on district reallocation scenarios
- Where data exists at district level and districts are reallocated to new LAs, they will aggregate up based on new district parentage
- Subject to data availability at district level
- Subject to strategies for handling merged district and higher-level data where different sources feed both levels

**LG Inform's constraints:**
- They are not convinced that splitting or apportioning data in the other direction is feasible
- Open to ideas from us, but unlikely to pursue this themselves

### Phase 1: Discovery

A focused, time-boxed discovery exercise to assess the impact of LG Inform's API changes on our integration and evaluate cold start solutions. This should be scheduled as soon as possible — it is a prerequisite for informed implementation planning.

| # | Deliverable | Layer | Notes | Min | Max |
|---|-------------|-------|-------|:---:|:---:|
| 3.7.1 | **LG Inform Beta API assessment** — access the Beta API and test existing extraction queries against the restructured data. Determine whether structural changes break current integration logic. | Integration | Beta access offered by LG Inform | 2 | 3 |
| 3.7.2 | **District-level data gap analysis** — where LG Inform aggregates at district level, assess whether this gives us what we need. Identify metrics where district-level data is unavailable. | Data Analysis | | 1 | 2 |
| 3.7.3 | **Cold start solution evaluation** — assess each reorganisation scenario (merge, split, complex split, boundary change) against current platform capabilities. Recommend an approach for each. | Architecture | Must account for population/budget co-dependency | 2 | 3 |
| 3.7.4 | **Transition period assessment** — determine how old and new structures will coexist during the transition. Define the snapshot and period strategy for reorganisation dates. | Architecture | | 1 | 2 |
| 3.7.5 | **Healthcare geography impact assessment** — assess ICS/ICB mapping implications and define approach for maintaining weighted allocations through reorganisation. | Data Analysis | | 1 | 2 |
| | | | **Phase 1 Subtotal** | **7** | **12** |

### Phase 2: Implementation

Implementation scope will be confirmed by discovery findings. The estimates below are indicative based on the scenarios identified in the workshop. Final estimates should be revisited after Phase 1.

| # | Deliverable | Layer | Notes | Min | Max |
|---|-------------|-------|-------|:---:|:---:|
| 3.7.6 | **Snapshot strategy implementation** — configure financial year-end snapshots and key reorganisation date snapshots to remain permanently online. Fix nearest neighbour / period combination edge cases. | Platform / dbt | Builds on existing snapshot retention | 2 | 3 |
| 3.7.7 | **LG Inform integration updates** — adapt extraction logic to work with the restructured API. Scope dependent on 3.7.1 findings. | Integration | Could be larger if structural changes are significant | 3 | 5 |
| 3.7.8 | **Cold start: merge / aggregate** — implement sum or weighted average calculations for predecessor LAs being merged into new authorities. | dbt | Relatively straightforward | 2 | 3 |
| 3.7.9 | **Cold start: split / district reallocation** — verify and extend existing seeding feature for district reallocation scenarios. | dbt | Feature exists — may need adjustment | 1 | 2 |
| 3.7.10 | **Cold start: complex scenarios** — implement apportionment logic for complex splits and boundary changes where applicable. | dbt | Population-weighted; approach TBC in discovery | 3 | 5 |
| 3.7.11 | **Healthcare geography updates** — update ICS/ICB weighted allocation mappings to reflect new LA boundaries. | dbt | | 2 | 3 |
| 3.7.12 | **Transition period handling** — implement coexistence of old and new structures during the transition window, including terminated LA indicators for reorganised authorities. | Platform / dbt | | 2 | 3 |
| | | | **Phase 2 Subtotal** | **15** | **24** |

| | | **Item 3.7 Total** | **22** | **36** |
|---|---|---|:---:|:---:|

**Note:** Phase 2 estimates are indicative. We recommend completing Phase 1 discovery before committing to Phase 2 scope or budget. Discovery findings may significantly change the implementation estimate — particularly items 3.7.7 (LG Inform integration) and 3.7.10 (complex cold start scenarios), which carry the most uncertainty.

---

## Summary

| Area | Description | Items | Min (days) | Max (days) |
|------|-------------|:-----:|:----------:|:----------:|
| **Tier 1** | Configuration Reliability | 21 | 19.25 | 33.25 |
| **Tier 2** | Platform Maturity | 25 | 24.75 | 43.75 |
| **Tier 3a** | Insight Alerts Prototype | 4 | 11 | 18 |
| **Tier 3b** | Self-Service Enablement | TBD | TBD | TBD |
| **3.7 Phase 1** | LG Reorganisation — Discovery | 5 | 7 | 12 |
| **3.7 Phase 2** | LG Reorganisation — Implementation (indicative) | 7 | 15 | 24 |
| | **Total (excl. self-service)** | **62** | **77** | **131** |

### Platform Investment Options (Items 3.3–3.6)

These options relate to platform improvements and can be selected independently of item 3.7.

**Option A — Tier 1 only**
~19–33 days. Introduces automated quality checks at scale, delivers essential capabilities for day-to-day operation, and simplifies the configuration interface.

**Option B — Tier 1 + Tier 2**
~44–77 days. Tier 1 quality and capability improvements, plus platform maturity: versioning for data source changes, audit trail, improved UX across all modules, and bringing Summary Metrics into the main application. This is the foundation required before self-service can be considered.

**Option C — Tier 1 + Tier 2 + Tier 3a**
~55–95 days. Full investment including AI insight alerts prototype. Self-service strategy workshop recommended as a separate engagement to define scope and requirements for Tier 3b.

**Option D — All tiers**
Tiers 1 + 2 + 3a + 3b. Requires a strategy workshop to define self-service scope before Tier 3b can be estimated. We recommend beginning with Tier 1 and revisiting the full scope once that foundation is in place.

### LG Reorganisation (Item 3.7)

This work runs on its own timeline, driven by the political process. We recommend:

1. **Begin Phase 1 discovery now** (~7–12 days) — LG Inform have offered Beta API access, and we should assess the integration impact before the restructured API goes live.
2. **Revisit Phase 2 scope after discovery** (~15–24 days indicative) — discovery findings will refine or significantly change the implementation estimate.

Phase 1 can run in parallel with any of the platform investment options above.

---

## Appendix: Module-by-Module Reference

*Each deliverable appears once in the tier tables above. This appendix provides a module-level view for reference.*

### Data Providers

**Current state:** UX: Okay | UI Rules: Okay | Validation: Bad

| # | Deliverable | Type | Tier | Min | Max |
|---|-------------|------|:----:|:---:|:---:|
| 3.5.1 | File source / name search facility | UX | 1 | 0.5 | 1 |
| 3.5.2 | Expand file source listing beyond 7-row limit | UX | 2c | 0.25 | 0.25 |
| 3.5.3 | Dependent measures view from file source listing or edit view | UX | 2b | 1 | 2 |
| 3.5.4 | Configuration change history (audit trail) | UX | 2c | 2 | 3 |
| 3.5.5 | Remove legacy references | Simplification | 1 | 0.25 | 0.25 |
| 3.5.6 | Archive option instead of delete for file source columns | Validation | 1 | 0.5 | 1 |

### Manual Measure Definitions

**Current state:** UX: Bad | UI Rules: Okay | Validation: Bad

| # | Deliverable | Type | Tier | Min | Max |
|---|-------------|------|:----:|:---:|:---:|
| 3.5.8 | Improved filtering — add data provider filter | UX | 1 | 0.5 | 1 |
| 3.5.9 | Prevent measure creation until data has been uploaded | Validation | 1 | 0.5 | 1 |
| 3.5.10 | Improve auto-fill from previous | Refinement | 1 | 0.5 | 1 |
| 3.5.11 | SQL expression validation | Validation | 1 | 2 | 3 |
| 3.5.12 | Simplify ID columns — replace JSON with table picker | UX | 2b | 1 | 2 |
| 3.5.13 | Remove redundant group expression field | Simplification | 1 | 0.5 | 0.5 |
| 3.5.14 | Measure status lifecycle: new → failed → passed | Validation | 1 | 2 | 3 |
| 3.5.15 | Remove base measures references | Simplification | 1 | 0.25 | 0.25 |
| 3.5.16 | SQL syntax highlighting in expression fields | UX | 2b | 1 | 2 |

### LG Inform Measures Configuration

**Current state:** UX: Good | UI Rules: Okay | Validation: not yet rated

| # | Deliverable | Type | Tier | Min | Max |
|---|-------------|------|:----:|:---:|:---:|
| 3.5.17 | Re-introduce app navigation | UX | 2c | 0.25 | 0.25 |
| 3.5.18 | Prevent deletion of measures used in index metrics | Validation | 1 | 0.5 | 1 |
| 3.5.19 | Store metric metadata in JSON column | Database | 2c | 0.5 | 1 |
| 3.5.20 | Improved error messaging for invalid metrics | UX | 2b | 0.5 | 1 |
| 3.5.21 | Full edit facility for configured measures | UX | 1 | 1 | 2 |
| 3.5.22 | On-demand API request to LG Inform | Backend | 1 | 2 | 3 |
| 3.5.23 | Prevent creation from measures not yet downloaded | Validation | 1 | 0.5 | 1 |
| 3.5.24 | Layout tightening | UI Rules | 2c | 0.5 | 1 |

### Period Configuration

**Current state:** UX: Okay | UI Rules: not yet rated | Validation: Bad

| # | Deliverable | Type | Tier | Min | Max |
|---|-------------|------|:----:|:---:|:---:|
| 3.5.25 | Larger code editor / popup for conversion code | UX | 2b | 0.5 | 1 |
| 3.5.26 | Show data source context when creating period type configs | UX | 2b | 0.5 | 1 |
| 3.5.28 | Validation of conversion code before build | Validation | 1 | 2 | 4 |

### Index Metrics

**Current state:** UX: Okay | UI Rules: Good | Validation: Good

| # | Deliverable | Type | Tier | Min | Max |
|---|-------------|------|:----:|:---:|:---:|
| 3.5.30 | Prevent metric creation unless source exists in database | Validation | 1 | 0.5 | 1 |
| 3.5.31 | Filter by data provider + show related source | UX | 2b | 0.5 | 1 |
| 3.5.32 | Copy / autofill from previous metric | UX | 2b | 1 | 2 |
| 3.5.33 | Data provider & source filter in creation screen | UX | 2b | 0.5 | 1 |
| 3.5.34 | Period type matching validation | Validation | 1 | 0.5 | 1 |
| 3.5.35 | Update field labels to match current functionality | Simplification | 1 | 0.5 | 1 |
| 3.5.36 | Source/target period type with aggregation strategy | UX / Backend | 1 | 2 | 3 |

### Upload Files

**Current state:** UX: Good | UI Rules: Okay | Validation: not yet rated

| # | Deliverable | Type | Tier | Min | Max |
|---|-------------|------|:----:|:---:|:---:|
| 3.5.37 | Navigation back to main application | UX | 2c | 0.25 | 0.25 |
| 3.5.38 | Make file publish date mandatory | Validation | 1 | 0.25 | 0.25 |
| 3.5.39 | Show most recent publish date for selected provider/config | UX | 2c | 0.5 | 1 |
| 3.5.40 | Timestamps (created / last updated) in View Files popup | UX | 2c | 0.5 | 1 |
| 3.5.41 | Enhanced file validation and alerting | Validation | 1 | 2 | 4 |

### Summary Metrics (New Build)

**Current state:** Currently managed outside of the main application — to be brought into the configuration platform.

| # | Deliverable | Type | Tier | Min | Max |
|---|-------------|------|:----:|:---:|:---:|
| 3.5.42 | Design config screens | Design | 2d | 1 | 2 |
| 3.5.43 | Build config screens (CRUD) | UI Bakery | 2d | 3 | 5 |
| 3.5.44 | Update dbt modelling | dbt | 2d | 2 | 3 |

### Lenses

**Current state:** UX: Good | UI Rules: Good | Validation: Good — no work required.

### Indexes

**Current state:** UX: Good | UI Rules: Good | Validation: Good — no work required.
