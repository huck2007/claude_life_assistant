# Trustmark Geography Dimension V2 — Requirements & Quotation

**Date:** 20 January 2026
**Prepared by:** Crozier Scott Ltd

---

## 1. Background

Trustmark require enhanced geographic analysis capabilities to support Local Authority engagement and deprivation analysis. The current DIM_GEOGRAPHY operates at outcode level (~3k records) which is insufficient for Ward, Constituency, and IMD reporting.

## 2. Decisions Made

| Decision | Detail |
|----------|--------|
| Dimension grain | Output Area (OA) — ~238k records |
| Approach | New DIM_GEOGRAPHY_V2, existing DIM_GEOGRAPHY unchanged |
| Postcode resolution | ONS Postcode Directory as lookup table |
| Fact table changes | Extend project_masterfile and audit_masterfile with OA code |
| Future tables | Use lookup table directly until engineering backlog prioritised |

## 3. Scope of Work

### 3.1 ONS Postcode Lookup Table

**Deliverable:** New table `LKP_POSTCODE_GEOGRAPHY`

**Source:** ONS Postcode Directory (ONSPD) — latest release

**Fields:**

| Column | Description |
|--------|-------------|
| postcode | Full postcode (no spaces, uppercase) |
| postcode_formatted | Full postcode (with space) |
| oa_code | Output Area code (E00xxxxxx) |
| lsoa_code | Lower Super Output Area code |
| msoa_code | Middle Super Output Area code |
| lad_code | Local Authority District code |
| ward_code | Electoral Ward code |
| constituency_code | Westminster Parliamentary Constituency code |
| region_code | Region code |
| country_code | Country code (E/W/S) |
| lat | Latitude |
| long | Longitude |
| status | Live/Terminated |

**Record count:** ~2.7m (all postcodes) or ~1.7m (live only)

**Question:** Include terminated postcodes? (Needed if historical projects have old postcodes)

---

### 3.2 DIM_GEOGRAPHY_V2

**Deliverable:** New dimension table at OA level

**Fields:**

| Column | Description |
|--------|-------------|
| geography_key | Surrogate key |
| oa_code | Output Area code (natural key) |
| oa_name | Output Area name |
| lsoa_code | LSOA code |
| lsoa_name | LSOA name |
| msoa_code | MSOA code |
| msoa_name | MSOA name |
| lad_code | LAD code |
| lad_name | LAD name |
| ward_code | Ward code |
| ward_name | Ward name |
| constituency_code | Constituency code |
| constituency_name | Constituency name |
| region_code | Region code |
| region_name | Region name |
| country_code | Country code |
| country_name | Country name |
| imd_rank | IMD rank (nation-specific) |
| imd_decile | IMD decile (1=most deprived, 10=least) |
| imd_score | IMD score (England only) |

**Record count:** ~238k

**Notes:**
- Ward and Constituency attributed to OA via dominant postcode (not hierarchically perfect)
- IMD joined from LSOA (LSOA is direct parent of OA)

**Question:** GB-wide or England-only? Wales/Scotland add ~56k OAs and require separate IMD datasets.

---

### 3.3 IMD Reference Data

**Deliverable:** IMD data integrated into DIM_GEOGRAPHY_V2 at LSOA level

**Sources:**

| Nation | Dataset | Vintage | Grain |
|--------|---------|---------|-------|
| England | English IMD | 2019 | LSOA |
| Wales | WIMD | 2019 | LSOA |
| Scotland | SIMD | 2020v2 | Data Zone |

**Question:** Which IMD domains required? Options:
- Overall rank/decile only (simplest)
- All domains (Income, Employment, Education, Health, Crime, Barriers, Living Environment)

---

### 3.4 Fact Table Extensions

**Deliverable:** Add `oa_code` column to fact tables, populated via postcode lookup

**Tables in scope:**

| Table | Lookup field |
|-------|--------------|
| project_masterfile | postcode |
| audit_masterfile | postcode |

All other masterfiles descend from these and will inherit geographic context via existing relationships.

**Matching logic:** Exact match on full postcode. Records without a valid postcode match will have NULL oa_code.

---

### 3.5 ETL Pipeline

**Deliverables:**

| Component | Description |
|-----------|-------------|
| ONSPD load | Pipeline to load/refresh ONS Postcode Directory |
| DIM_GEOGRAPHY_V2 load | Pipeline to build dimension from OA, LSOA, Ward, Constituency, IMD sources |
| Fact enrichment | Transform to populate oa_code on facts during load |
| Backfill script | One-time script to populate oa_code on historical records |

---

### 3.6 Maintenance Process

**Options:**

| Option | Frequency | Effort |
|--------|-----------|--------|
| A. Static snapshot | None (treat as fixed) | Lowest |
| B. Annual refresh | Yearly (aligned to ONS major release) | Low |
| C. Quarterly refresh | Quarterly (aligned to ONSPD release) | Medium |

**Recommendation:** Option B (annual) unless there is specific need for new postcodes within-year.

**Question:** Confirm maintenance appetite.

---

## 4. Out of Scope

- Changes to existing DIM_GEOGRAPHY
- Migration of existing reports to V2
- Power BI report development
- Other ONS geographic classifications (health geographies, police force areas, etc.) — can be added later

---

## 5. Assumptions

1. Postcode data quality in source systems is sufficient for automated matching
2. Snowflake is the target platform
3. Power BI will consume via existing connection patterns
4. Trustmark will handle report migration to V2 dimension

---

## 6. Open Questions

| # | Question | Impact |
|---|----------|--------|
| 1 | England-only or GB-wide? | +56k OAs, additional IMD datasets |
| 2 | Include terminated postcodes? | +1m records in lookup, needed for historical matching |
| 3 | IMD domains or overall only? | +7 columns if domains required |
| 4 | Maintenance frequency? | Scopes ongoing support |

---

## 7. Deliverables Summary

| # | Deliverable | Dependency |
|---|-------------|------------|
| 1 | LKP_POSTCODE_GEOGRAPHY table | ONSPD source |
| 2 | DIM_GEOGRAPHY_V2 table | OA, LSOA, Ward, Constituency, IMD sources |
| 3 | Fact table extensions (oa_code) | — |
| 4 | ETL pipelines (load + enrichment) | — |
| 5 | Historical backfill | — |
| 6 | Documentation | — |

---

## 8. Estimate

| Component | Effort (days) |
|-----------|---------------|
| Requirements clarification & design sign-off | 0.5 |
| ONSPD lookup table (source, load, test) | 2 |
| DIM_GEOGRAPHY_V2 (build, IMD integration, test) | 3 |
| Fact table extensions + backfill | 2 |
| ETL pipeline (load + enrichment) | 2 |
| Documentation & handover | 0.5 |
| **Total** | **10** |

**Notes on estimate:**
- Assumes England-only. Add 1-2 days if GB-wide (Wales/Scotland IMD integration)
- Assumes overall IMD rank/decile only. Add 0.5 days if all domains required
- Assumes reasonable postcode data quality. If significant cleansing needed, backfill effort increases
- Does not include Trustmark effort to migrate reports to V2

---

## 9. Next Steps

1. Confirm answers to open questions (Section 6)
2. Sign off scope and estimate
3. Schedule work into sprint backlog
