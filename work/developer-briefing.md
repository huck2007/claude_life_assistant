# Compliance Orchestration Platform — Developer Briefing

## What is this?

We're designing a **compliance orchestration middleware** — a platform that sits across a client's existing operational systems (CAFM, BMS, IoT, H&S, BIM), normalises their data into a unified domain model, runs intelligence across domain boundaries, and writes actions back into those source systems. It is not a system of record. It's the connective tissue that turns siloed compliance data into a single operational picture with automated follow-through.

Think of it as Palantir for operational compliance: read everything in, reason across it, push actions out.

The platform is **domain-agnostic by design**. The core ontology — Assets → Obligations → Schedules → Evidence → Compliance → Risk → Action — is the same regardless of sector. Only the vocabulary changes. Our two reference domains are Facilities Management (the immediate client opportunity) and F1 Team Operations (factory/campus ops for a team like Aston Martin). Same architecture, different source systems and regulatory context.

## How to read the diagram

The HTML file is an interactive 6-layer architecture, bottom to top:

- **Layer 1 — Source Systems**: the client's existing tools we connect to (not ours)
- **Layer 2 — Integration**: adapters, normalisation pipelines, and critically, write-back adapters (bidirectional, not read-only)
- **Layer 3 — Unified Domain Model**: the canonical data layer, organised into five columns (Assets, Maintenance, Compliance, H&S, Spatial). This is the shared ontology that makes cross-domain reasoning possible
- **Layer 4 — Intelligence**: analytics that operate *on* the domain model — compliance scoring, anomaly detection, predictive maintenance, plus LLM workloads for regulatory text and unstructured evidence
- **Layer 5 — Orchestration**: where reasoning becomes action — workflow engine, work order generation, and the agentic reasoning / human-in-the-loop pattern (AI recommends, human approves)
- **Layer 6 — Experience**: what users see — dashboards, audit trails, action trackers

**Toggles**: the domain toggle (Universal / FM / F1) shows which pills are shared vs. sector-specific. The POC toggle highlights in orange the subset we'd build first to prove the platform end-to-end.

**Vertical bars**: the two side bars (Reasoning Trace & Auditability, Single-Tenant Deployment) are cross-cutting concerns that span all layers. Click them for detail.

**Every pill is clickable** — the slide-out panel gives a full description plus related capabilities you can navigate between.

## POC approach

One site. Two complementary domains (e.g., equipment telemetry + planned maintenance). End-to-end: source system in → normalised domain model → intelligence scoring → orchestrated action → write-back to source system. The POC proves bidirectional integration and cross-domain correlation on real data — not a dashboard demo, a working loop. The agentic layer runs as rule-based recommendations in POC (proving the pattern), graduating to ML/LLM reasoning in production.

## What I need from you

Read through the diagram, click into the pills, and come back with questions. I want your view on feasibility, where you see technical risk, and what you'd sequence first.
