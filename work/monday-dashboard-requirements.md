# Monday Dashboard Requirements

**Owner:** Scott
**Builder:** Eddie (Head of Projects)
**RAG Owner:** Eddie (Head of Projects)
**Created:** 2025-12-29
**Deadline:** 19th January 2025

---

## Purpose

A single dashboard Scott reviews every Monday morning to understand business health and identify where to intervene — without being in the work.

Should answer three questions in under 5 minutes:
1. Are we making money?
2. Are projects healthy?
3. Where do I need to intervene?

---

## Section 1: Headline KPIs

Four KPIs, each shown for two time periods: **MTD** and **Last Week**.

Include comparison indicator (up/down arrow vs prior period).

| KPI | Formula | Target | Source |
|-----|---------|--------|--------|
| Sales | Revenue from hours booked | vs same period last month | Productive |
| Margin % | (Revenue - time cost) / Revenue x 100 | 70% | Productive |
| Utilisation (scheduled) | Billable hours / Scheduled hours x 100 | 100% | Productive |
| Utilisation (available) | Billable hours / (37.5h x headcount) x 100 | Varies by plan | Productive |

**Display:** 8 numbers total (4 KPIs x 2 time periods) with trend indicators.

---

## Section 2: Project Health View

One row per active project. Sorted by RAG status (Red first, then Amber, then Green).

| Field | Source | Notes |
|-------|--------|-------|
| Project name | Productive | |
| Client | Productive | |
| Budget total | Productive | £ value |
| Budget used | Productive | £ value |
| Budget remaining | Productive | £ value |
| % timeline elapsed | Productive | (Today - Start date) / (End date - Start date) |
| % budget burned | Productive | Budget used / Budget total |
| Auto flag | Calculated | See logic below |
| Manual RAG | Manual entry | Eddie sets weekly |
| Notes | Manual entry | Short context on status |

### Auto Flag Logic

Based on comparing budget burn % to timeline elapsed %:

| Condition | Flag |
|-----------|------|
| Budget burn % <= Timeline elapsed % | Green |
| Budget burn % is 10-25% ahead of timeline | Amber |
| Budget burn % is >25% ahead of timeline | Red |

**Example:** Project is 50% through timeline but 80% through budget = 30% ahead = Red.

---

## Section 3: Team Utilisation View

One row per team member. Shows previous week's data.

| Field | Calculation | Source |
|-------|-------------|--------|
| Name | | Productive |
| Scheduled hours | Hours scheduled to client projects | Productive |
| Actual billable hours | Hours logged to client projects | Productive |
| Utilisation vs schedule | (Actual billable / Scheduled) x 100 | Calculated |
| Utilisation vs available | (Actual billable / 37.5) x 100 | Calculated |
| Internal hours | Hours logged to internal projects | Productive |

### Alert Flags

| Condition | Flag | Meaning |
|-----------|------|---------|
| <80% of scheduled hours billed | Under-utilised | Didn't deliver planned client work |
| >110% of scheduled hours billed | Over-utilised | Working beyond plan |
| >20% of time on internal projects | High internal | May indicate bench time or project gaps |

---

## Section 4: Alerts / Intervention List

A filtered view highlighting items that need Scott's attention:

- Projects with Red auto flag or Red manual RAG
- Projects with no time logged in last 7 days
- Team members flagged under-utilised or over-utilised
- Any project where Manual RAG differs from Auto flag (indicates Eddie sees something numbers don't)

---

## Data Sources

All data comes from **Productive.io**:
- Revenue and hours: Time entries
- Budgets: Project budgets
- Scheduling: Resource scheduling
- Rates: Client rate cards
- Team members: User data

Jira is **not** integrated in v1. Work progress is captured through Eddie's manual RAG assessment.

---

## Process

1. **Weekly (Friday or Monday AM):** Eddie reviews each project, sets Manual RAG, adds notes
2. **Monday AM:** Scott reviews dashboard, identifies interventions
3. **Monday:** Scott addresses Red items — as a manager, not a doer

---

## Decisions

- **Builder:** Eddie
- **Platform:** Productive (preferred) or Excel
- **Deadline:** 19th January 2025

---

## Future Enhancements (Not v1)

- Jira integration for automated work progress tracking
- Forecasting based on burn rate
- Client-facing project status view
- Historical trend charts
