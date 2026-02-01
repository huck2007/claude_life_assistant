# AWMM Current Platform Architecture — Diagram Brief

> For TCS onboarding. Shows the established platform and where TCS contributes.

**Last Updated:** 2026-01-29

---

## Purpose

Communicate to TCS that AWMM has a well-structured cloud and data platform at the heart of the runner experience. The platform is established, owned by WMM, and built on AWS + Snowflake. TCS contributes data science and analytics within this platform — not alongside it.

## Strategic Intent

- Show a solid, professional foundation that doesn't need rebuilding
- Position the Data Science Lab as TCS's playground — exciting, valuable, clearly scoped
- Name AI services (Bedrock, Cortex) to pre-empt external AI tooling proposals
- Show the Marathon Insights Hub as the vision — this IS the "runner cloud"
- Keep control implicit through architecture, not labels
- No "owned by" annotations — let the structure speak

## What This Heads Off

From the TCS D&A Capability deck (June 2025):
- **Databricks** — not needed; Snowflake Cortex covers in-warehouse ML
- **TCS Smart DQ** — not needed; DQ handled via dbt tests and Snowflake
- **TCS DataIntellect** — not needed; platform is operational, not enterprise-scale ops
- **TCS Talk2Data** — not needed; consumption layer exists
- **Data Mesh / Data Fabric** — over-engineered for AWMM's scale
- **MDM / Collibra / Informatica** — bespoke CRM works, no MDM required
- **Tableau / Power BI / Qlik etc.** — consumption approach TBD, not their choice
- **Common Data Ingestion Framework** — ingestion is handled

## Diagram Structure

Layered architecture, bottom-to-top, with data flows implied.

```
┌──────────────────────────────────────────────────────────────────┐
│              MARATHON INSIGHTS HUB                               │
│              "The best marathon insights hub on the planet"      │
│                                                                  │
│  Runner Portal         Global Marathon        CRM & Automated   │
│  ─────────────         Insights               Comms             │
│  Personalised          ───────────────         ─────────────     │
│  experience,           State of Global         Segmentation-     │
│  StarTrack Score,      Marathon Running,       driven,           │
│  goals, nudges         sponsor & media         customer.io       │
│                        insight packs                             │
└──────────────────────────────┬───────────────────────────────────┘
                               │
┌──────────────────────────────┴───────────────────────────────────┐
│                  CONSUMPTION & DELIVERY                           │
│  APIs · Runner Portal · Automated Comms · Content · Dashboards   │
└──────────────┬───────────────────────────────────┬───────────────┘
               │                                   │
 ┌─────────────┴───────────┐         ┌─────────────┴──────────────┐
 │   PRODUCTION MODELS     │         │      DATA SCIENCE LAB      │
 │                         │◄─ QA ──│      (TCS + CS)             │
 │   Validated,            │  gate  │                              │
 │   scheduled,            │        │  Predictive intelligence     │
 │   monitored             │        │  Runner metrics & scores     │
 │                         │        │  Segmentation models         │
 │                         │        │  Trend analysis              │
 └─────────────┬───────────┘        └─────────────┬───────────────┘
               │                                   │
               └─────────────┬─────────────────────┘
                             │
              ┌──────────────┴──────────────────┐
              │       AI / ML SERVICES          │
              │  AWS Bedrock (Anthropic)         │
              │  Snowflake Cortex               │
              │                                  │
              │  LLM · NLP · Embeddings ·        │
              │  In-warehouse ML                 │
              └──────────────┬──────────────────┘
                             │
              ┌──────────────┴──────────────────┐
              │   TRANSFORMATION & MODELLING    │
              │   dbt · semantic layer ·        │
              │   business logic                │
              └──────────────┬──────────────────┘
                             │
              ┌──────────────┴──────────────────┐
              │         DATA PLATFORM           │
              │         Snowflake               │
              └──────────────┬──────────────────┘
                             │
              ┌──────────────┴──────────────────┐
              │         INFRASTRUCTURE          │
              │         AWS                     │
              └──────────────┬──────────────────┘
                             │
┌──────────────────────────────────────────────────────────────────┐
│                       DATA SOURCES                                │
│  Race Results · Registration · Timing/IoT · Partner Feeds        │
│  Webflow · Shopify · Global Run Club                             │
│  Custom CRM + customer.io  ←→  (bidirectional)                   │
└──────────────────────────────────────────────────────────────────┘
```

## Layer Notes

### Marathon Insights Hub (top)
Danny's language from the TCS 2-pager. Three pillars:
- **Runner Portal** — personalised experience, StarTrack Score, goals, nudges (maps to Danny's "Predictive Star Progression Intelligence")
- **Global Marathon Insights** — State of Global Marathon Running annual report, sponsor/media insight packs, AGWR trends (maps to Danny's "Age Group World Rankings" and "Data Access & Insights for Content & Media")
- **CRM & Automated Comms** — segmentation-driven, customer.io (maps to Danny's "Audience Segmentation to Drive Smarter Comms")

### Consumption & Delivery
How insights reach runners and stakeholders. APIs, portal, automated comms triggers, content automation, dashboards.

### Production Models / Data Science Lab
- **Lab** = TCS + CS sandbox. Experimentation, prototyping, model development. This is where TCS's data scientists work.
- **Production** = validated, scheduled, monitored models. QA gate between lab and production is the governance mechanism.
- Lab work maps to Danny's strategic opportunity areas: predictive intelligence, runner metrics (StarTrack Score, JourneyRank, Marathon Commitment Index, etc.), segmentation, trend analysis.

### AI / ML Services
- **AWS Bedrock (Anthropic)** — LLM, NLP, content generation. Already in use.
- **Snowflake Cortex** — in-warehouse ML inference, embeddings, similarity. Native to Snowflake.
- Positioned as platform capabilities, not lab-only tools. Available to production and consumption layers too.
- Pre-empts any conversation about introducing Databricks, external AI platforms, or TCS proprietary AI tools.

### Transformation & Modelling
dbt — semantic layer, business logic, data models. Established and maintained by CS.

### Data Platform
Snowflake — data warehouse. Fully built, under WMM ownership.

### Infrastructure
AWS — cloud foundation.

### Data Sources
- Race results, registration, timing/IoT, partner feeds
- Webflow (website), Shopify (e-commerce)
- Global Run Club data
- Custom CRM + customer.io (bidirectional — both source and consumption endpoint)
- Note: No Salesforce/HubSpot. Bespoke CRM is a deliberate architectural choice — lower opex, greater flexibility.

### Data source management
- TCS does not need to bring data in. They work with what's in Snowflake.
- If new data sources become available (e.g. timing data from individual majors), CS/WMM organise that directly with the majors and ingest into the platform.

## Key Messages

1. The foundation is built and working. TCS brings skills, not infrastructure.
2. The Marathon Insights Hub IS the runner cloud. No separate landscape needed.
3. AI capabilities are native to the platform (Bedrock + Cortex). No external AI tooling.
4. TCS works in the Lab. CS productionises. That's the working model.
5. WMM retains ownership of data, platform, and architecture decisions.

## Open Items

- **Global Marathon Insights** build approach — who builds this, and how? Significant workstream. Keeping it as an output box for now, but it needs its own delivery plan.
- **Consumption tooling** for the aggregate/global view — TBD. Don't let TCS decide this.

---

## Context: Danny's Data Activation Strategy (2-pager for TCS)

Vision: "Building the best marathon insights hub on the planet"

Strategic opportunity areas:
a) Predictive Star Progression Intelligence
b) Age Group World Rankings Movement & Trend Intelligence
c) Audience Segmentation to Drive Smarter Comms
d) Data Access & Insights for Content & Media

Runner Engagement Metrics Suite:
- StarTrack Score (flagship gamified index)
- JourneyRank, Marathon Commitment Index, Goal Momentum, Total Stars Velocity, Endurance Signal

External impact: Annual "State of Global Marathon Running" report.
