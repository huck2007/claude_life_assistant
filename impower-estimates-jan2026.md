# Impower Indexes Platform — Estimation Deliverables (Jan 2026)

> Working document. Structured in three tiers for client presentation.

**Stack:** UI Bakery (low-code) + Snowflake (app database) + dbt + LG Inform API.

---

## How To Read This Document

This estimate is presented in three tiers. Each tier builds on the previous one. The tiers reflect different levels of investment and different outcomes:

| Tier | What | Why | Who Benefits |
|------|------|-----|:------------:|
| **1. Configuration Reliability** | Validation, guardrails, cleanup, essential capabilities | Prevents configuration errors, reduces rework, protects data integrity | CS + Impower |
| **2. Platform Maturity** | UX improvements, audit, versioning, new screens | Makes the platform maintainable, auditable, and resilient. Prerequisite for any self-service. | Impower (long-term) |
| **3. Self-Service & Intelligence** | AI prototype, self-service enablement | New capabilities. Requires defined self-service strategy. | Impower |

**Our strong recommendation:** Tier 1 should be treated as a priority investment. Without it, configuration errors will continue to cause rework and slow delivery. The current platform lacks validation guardrails — the technical team can create broken configurations that only fail at build time, wasting effort and increasing cost. Tier 1 fixes this at the source.

Tiers 2 and 3 are optional and can be phased. However, Tier 2 is a prerequisite for Tier 3 — self-service cannot be safely pursued on a platform that lacks maturity.

---

## Tier 1: Configuration Reliability

**Strongly recommended.** These items prevent configuration errors, reduce rework, and protect data integrity. Without them, delivery remains dependent on tribal knowledge and manual checking.

| # | Deliverable | Module | Type | Min | Max |
|---|-------------|--------|------|:---:|:---:|
| 3.5.11 | SQL expression validation (JS parser or server-side) across measure expression, filter, dimension value expression, dimension expression | Manual Measures | Validation | 2 | 3 |
| 3.5.14 | Measure status lifecycle: new → failed → passed (based on SQL validation) | Manual Measures | Validation | 2 | 3 |
| 3.5.9 | Prevent measure creation until data has been uploaded | Manual Measures | Validation | 0.5 | 1 |
| 3.5.28 | Validation of conversion code before build (parse and validate) | Period Config | Validation | 2 | 4 |
| 3.5.41 | Enhanced file validation and alerting (prevent uploading broken files) | Upload Files | Validation | 2 | 4 |
| 3.5.30 | Prevent metric creation unless source exists in database | Index Metrics | Validation | 0.5 | 1 |
| 3.5.34 | Period type matching validation — prevent mismatched financial periods | Index Metrics | Validation | 0.5 | 1 |
| 3.5.18 | Prevent deletion of LG Inform measures used in index metrics | LG Inform | Validation | 0.5 | 1 |
| 3.5.23 | Prevent creation of index metrics from measures not yet downloaded | LG Inform | Validation | 0.5 | 1 |
| 3.5.6 | Archive option instead of delete for file source columns | Data Providers | Validation | 0.5 | 1 |
| 3.5.38 | Make file publish date mandatory | Upload Files | Validation | 0.25 | 0.25 |
| 3.5.36 | Source and target period type selection with aggregation strategy | Index Metrics | Essential capability | 2 | 3 |
| 3.5.21 | Full edit facility for configured measures (all fields including aggregate/merge) | LG Inform | Essential capability | 1 | 2 |
| 3.5.22 | On-demand API request to LG Inform (currently nightly only) | LG Inform | Essential capability | 2 | 3 |
| 3.5.8 | Improved filtering — add data provider filter | Manual Measures | UX (essential) | 0.5 | 1 |
| 3.5.1 | File source / name search facility | Data Providers | UX (essential) | 0.5 | 1 |
| 3.5.10 | Fix auto-fill from previous (overwrites source file, missing dimension value expression) | Manual Measures | Bug fix | 0.5 | 1 |
| 3.5.35 | Fix field labels to match current functionality (remove hijacked naming) | Index Metrics | Cleanup | 0.5 | 1 |
| 3.5.13 | Remove redundant group expression field — bake into generated SQL | Manual Measures | Cleanup | 0.5 | 0.5 |
| 3.5.15 | Remove base measures references | Manual Measures | Cleanup | 0.25 | 0.25 |
| 3.5.5 | Remove all YAML references (providers list and file sources) | Data Providers | Cleanup | 0.25 | 0.25 |
| | | | **Tier 1 Total** | **19.25** | **33.25** |

**Tier 1 summary: ~19–33 days.** Validation guardrails, essential capabilities the technical team needs daily (LG Inform API, full edit, period type handling), and cleanup of dead/misleading fields.

---

## Tier 2: Platform Maturity

**Recommended for long-term platform health.** These items make the platform more maintainable, auditable, and resilient. They are also prerequisites for any future self-service capability — self-service cannot be safely built on a platform without audit trails, proper versioning, complete editing facilities, and robust UX.

### 2a. Architecture & Versioning

| # | Deliverable | Module | Type | Min | Max |
|---|-------------|--------|------|:---:|:---:|
| 3.3.1 | Design versioning approach for index metrics | Data Structure | Architecture | 2 | 3 |
| 3.3.2 | Database schema changes to support metric versioning | Data Structure | Snowflake | 1 | 2 |
| 3.3.3 | dbt model adjustments for source switching at configured point in time | Data Structure | dbt | 3 | 5 |
| 3.3.4 | App FE — version management UI for metric source switching | Data Structure | UI Bakery | 2 | 3 |
| | | | **Subtotal** | **8** | **13** |

### 2b. Platform UX & Editing

| # | Deliverable | Module | Type | Min | Max |
|---|-------------|--------|------|:---:|:---:|
| 3.5.12 | Simplify ID columns — replace JSON syntax with source/target table picker | Manual Measures | UX | 1 | 2 |
| 3.5.32 | Copy / autofill from previous metric | Index Metrics | UX | 1 | 2 |
| 3.5.3 | Dependent measures view from file source listing or edit view | Data Providers | UX | 1 | 2 |
| 3.5.31 | Filter by data provider + show related source for measures | Index Metrics | UX | 0.5 | 1 |
| 3.5.33 | Data provider & source filter in metric creation screen | Index Metrics | UX | 0.5 | 1 |
| 3.5.25 | Larger code editor / popup for conversion code | Period Config | UX | 0.5 | 1 |
| 3.5.26 | Show data source context when creating period type configurations | Period Config | UX | 0.5 | 1 |
| 3.5.16 | SQL syntax highlighting in expression fields (optional if validation exists) | Manual Measures | UX | 1 | 2 |
| 3.5.20 | Improved error messaging for invalid LG Inform metrics | LG Inform | UX | 0.5 | 1 |
| | | | **Subtotal** | **6** | **13** |

### 2c. Audit, Metadata & Housekeeping

| # | Deliverable | Module | Type | Min | Max |
|---|-------------|--------|------|:---:|:---:|
| 3.5.4 | Configuration change history (audit trail) | Data Providers | UX | 2 | 3 |
| 3.5.19 | Store LG Inform metric metadata in JSON column | LG Inform | Snowflake | 0.5 | 1 |
| 3.5.40 | Timestamps (created / last updated) in View Files popup | Upload Files | UX | 0.5 | 1 |
| 3.5.39 | Show most recent publish date for selected provider/config | Upload Files | UX | 0.5 | 1 |
| 3.5.2 | Expand file source listing beyond 7-row limit | Data Providers | UX | 0.25 | 0.25 |
| 3.5.24 | Layout tightening — shallower screen support, visible labels | LG Inform | UI Rules | 0.5 | 1 |
| 3.5.17 | Re-introduce app navigation | LG Inform | UX | 0.25 | 0.25 |
| 3.5.37 | Navigation back to main application | Upload Files | UX | 0.25 | 0.25 |
| | | | **Subtotal** | **4.75** | **7.75** |

### 2d. New Build: Summary Metrics

| # | Deliverable | Module | Type | Min | Max |
|---|-------------|--------|------|:---:|:---:|
| 3.5.42 | Design config app screens for summary metrics management | Summary Metrics | Design | 1 | 2 |
| 3.5.43 | Build config app screens (CRUD) | Summary Metrics | UI Bakery | 3 | 5 |
| 3.5.44 | Update dbt modelling to support app-driven configuration | Summary Metrics | dbt | 2 | 3 |
| | | | **Subtotal** | **6** | **10** |

| | | | **Tier 2 Total** | **24.75** | **43.75** |

**Tier 2 summary: ~25–44 days.** Architecture/versioning (3.3), platform UX improvements, audit trail, and Summary Metrics new build. This tier transforms the config app from a tool that works for experts into a platform that is auditable, maintainable, and structurally sound.

---

## Tier 3: Self-Service & Intelligence

**Requires defined strategy.** These items introduce new capabilities. Tier 3 should not be pursued without Tier 1 (minimum) and ideally Tier 2 in place.

### 3a. Insight Alerts Prototype (item 3.4)

| # | Deliverable | Layer | Notes | Min | Max |
|---|-------------|-------|-------|:---:|:---:|
| 3.4.1 | Select prototype lens and define scope | Design | Workshop + analysis | 1 | 2 |
| 3.4.2 | Engineer structured context for AI evaluation | Data / dbt | Not semantic model — engineered context | 3 | 5 |
| 3.4.3 | AI analysis layer — trend detection, cause identification, narrative | AI / Backend | Prototype — inherently uncertain | 5 | 8 |
| 3.4.4 | Output format design — quarterly publication structure | Design | Links to roadmap 2.1 | 2 | 3 |
| | | | **Subtotal** | **11** | **18** |

### 3b. Self-Service Enablement (not yet estimated)

Self-service — enabling Impower's own people to configure and manage the platform — is a fundamentally different proposition from the improvements listed above. It requires:

- **Strategy definition:** Who does what? Which modules are self-service? What level of user (data analyst, subject matter expert, admin)?
- **Role-based access control:** User management, permissions, restricted views
- **Guided workflows:** Wizards and step-by-step flows rather than raw configuration forms (the current UI assumes system knowledge)
- **Comprehensive help:** Tooltips, documentation, contextual guidance throughout
- **Error recovery:** Undo capability, draft/publish workflow, sandbox/preview environments
- **Training & onboarding:** Materials, walkthroughs, support model
- **Simplified interfaces:** Potentially a separate, restricted view of the config app for non-technical users

**Our view:** Self-service is achievable, but it is not a feature — it is a product decision. The platform was built for technical configuration by people with system knowledge. Making it usable by non-technical users requires more than UX polish; it requires rethinking workflows, adding safety nets, and defining who is responsible for what. We would recommend a strategy workshop before estimating this work.

| | | | **Tier 3 Total (estimated portion)** | **11** | **18** |
|---|---|---|---|:---:|:---:|
| | | | **Tier 3 Total (self-service)** | **TBD** | **TBD** |

---

## Overall Summary

| Tier | Description | Deliverables | Min (days) | Max (days) |
|------|-------------|:------------:|:----------:|:----------:|
| **1** | Configuration Reliability | 21 | 19.25 | 33.25 |
| **2** | Platform Maturity | 25 | 24.75 | 43.75 |
| **3a** | Insight Alerts Prototype | 4 | 11 | 18 |
| **3b** | Self-Service Enablement | TBD | TBD | TBD |
| | **Total (excl. self-service)** | **50** | **55** | **95** |

### Recommended investment paths:

**Option A — Tier 1 only:** ~19–33 days. Fix what's broken. Eliminate configuration errors. Protect delivery quality.

**Option B — Tier 1 + Tier 2:** ~44–77 days. Fix what's broken AND build a mature, auditable platform. This is the foundation required before self-service can be considered.

**Option C — Tier 1 + Tier 2 + Tier 3a:** ~55–95 days. Full investment including AI insight prototype. Self-service strategy workshop recommended as a separate engagement.

**Option D — Everything:** Tiers 1 + 2 + 3a + 3b. Requires strategy definition for self-service before 3b can be estimated. We recommend completing Tier 1 first, then revisiting scope.

---

## Appendix: Module-by-Module Detail

*Reference material. Each deliverable appears once in the tier tables above.*

### Module: Data Providers

**Current state:** UX: O, UI Rules: O, Validation: B

| # | Deliverable | Type | Tier | Min | Max |
|---|-------------|------|:----:|:---:|:---:|
| 3.5.1 | File source / name search facility | UX | 1 | 0.5 | 1 |
| 3.5.2 | Expand file source listing beyond 7-row limit | UX | 2c | 0.25 | 0.25 |
| 3.5.3 | Dependent measures view from file source listing or edit view | UX | 2b | 1 | 2 |
| 3.5.4 | Configuration change history (audit trail) | UX | 2c | 2 | 3 |
| 3.5.5 | Remove all YAML references | Cleanup | 1 | 0.25 | 0.25 |
| 3.5.6 | Archive option instead of delete for file source columns | Validation | 1 | 0.5 | 1 |

### Module: Manual Measure Definitions

**Current state:** UX: B, UI Rules: O, Validation: B

| # | Deliverable | Type | Tier | Min | Max |
|---|-------------|------|:----:|:---:|:---:|
| 3.5.8 | Improved filtering — add data provider filter | UX | 1 | 0.5 | 1 |
| 3.5.9 | Prevent measure creation until data has been uploaded | Validation | 1 | 0.5 | 1 |
| 3.5.10 | Fix auto-fill from previous | Bug fix | 1 | 0.5 | 1 |
| 3.5.11 | SQL expression validation | Validation | 1 | 2 | 3 |
| 3.5.12 | Simplify ID columns — replace JSON with table picker | UX | 2b | 1 | 2 |
| 3.5.13 | Remove redundant group expression field | Cleanup | 1 | 0.5 | 0.5 |
| 3.5.14 | Measure status lifecycle: new → failed → passed | Validation | 1 | 2 | 3 |
| 3.5.15 | Remove base measures references | Cleanup | 1 | 0.25 | 0.25 |
| 3.5.16 | SQL syntax highlighting in expression fields | UX | 2b | 1 | 2 |

### Module: LG Inform Measures Configuration

**Current state:** UX: G, UI Rules: O, Validation: not rated

| # | Deliverable | Type | Tier | Min | Max |
|---|-------------|------|:----:|:---:|:---:|
| 3.5.17 | Re-introduce app navigation | UX | 2c | 0.25 | 0.25 |
| 3.5.18 | Prevent deletion of measures used in index metrics | Validation | 1 | 0.5 | 1 |
| 3.5.19 | Store metric metadata in JSON column | Snowflake | 2c | 0.5 | 1 |
| 3.5.20 | Improved error messaging for invalid metrics | UX | 2b | 0.5 | 1 |
| 3.5.21 | Full edit facility for configured measures | UX | 1 | 1 | 2 |
| 3.5.22 | On-demand API request to LG Inform | Backend | 1 | 2 | 3 |
| 3.5.23 | Prevent creation from measures not yet downloaded | Validation | 1 | 0.5 | 1 |
| 3.5.24 | Layout tightening | UI Rules | 2c | 0.5 | 1 |

### Module: Period Configuration

**Current state:** UX: O, UI Rules: not rated, Validation: B

| # | Deliverable | Type | Tier | Min | Max |
|---|-------------|------|:----:|:---:|:---:|
| 3.5.25 | Larger code editor / popup for conversion code | UX | 2b | 0.5 | 1 |
| 3.5.26 | Show data source context when creating period type configs | UX | 2b | 0.5 | 1 |
| 3.5.28 | Validation of conversion code before build | Validation | 1 | 2 | 4 |

### Module: Index Metrics

**Current state:** UX: O, UI Rules: G, Validation: G

| # | Deliverable | Type | Tier | Min | Max |
|---|-------------|------|:----:|:---:|:---:|
| 3.5.30 | Prevent metric creation unless source exists in database | Validation | 1 | 0.5 | 1 |
| 3.5.31 | Filter by data provider + show related source | UX | 2b | 0.5 | 1 |
| 3.5.32 | Copy / autofill from previous metric | UX | 2b | 1 | 2 |
| 3.5.33 | Data provider & source filter in creation screen | UX | 2b | 0.5 | 1 |
| 3.5.34 | Period type matching validation | Validation | 1 | 0.5 | 1 |
| 3.5.35 | Fix field labels to match current functionality | Cleanup | 1 | 0.5 | 1 |
| 3.5.36 | Source/target period type with aggregation strategy | UX / Backend | 1 | 2 | 3 |

### Module: Upload Files

**Current state:** UX: G, UI Rules: O, Validation: not rated

| # | Deliverable | Type | Tier | Min | Max |
|---|-------------|------|:----:|:---:|:---:|
| 3.5.37 | Navigation back to main application | UX | 2c | 0.25 | 0.25 |
| 3.5.38 | Make file publish date mandatory | Validation | 1 | 0.25 | 0.25 |
| 3.5.39 | Show most recent publish date for selected provider/config | UX | 2c | 0.5 | 1 |
| 3.5.40 | Timestamps (created / last updated) in View Files popup | UX | 2c | 0.5 | 1 |
| 3.5.41 | Enhanced file validation and alerting | Validation | 1 | 2 | 4 |

### Module: Summary Metrics (NEW BUILD)

**Current state:** No config app screens — CSV workaround via S3.

| # | Deliverable | Type | Tier | Min | Max |
|---|-------------|------|:----:|:---:|:---:|
| 3.5.42 | Design config app screens | Design | 2d | 1 | 2 |
| 3.5.43 | Build config app screens (CRUD) | UI Bakery | 2d | 3 | 5 |
| 3.5.44 | Update dbt modelling | dbt | 2d | 2 | 3 |
