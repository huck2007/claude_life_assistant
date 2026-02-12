# Prospect: Integrated Compliance Platform — Working Notes

**Date:** 12 February 2026
**Contact:** Friend of a friend (via [TBC])
**Background:** Ex-COO of an F1 organisation. Mechanical engineer by trade. Currently on gardening leave. Broad COO responsibility: facilities, assets, health & safety.
**Status:** First meeting. Brain dump. Interested — needs follow-up.

---

## What He Wants to Build

A unified compliance orchestration platform — middleware that integrates with existing systems across 4 domains to provide a single compliance view. 2-way API integration (read AND write-back to source systems).

### The 4 Domains (possibly 5 — clarify)

1. **Equipment/Plant Telemetry** — IoT/sensor integration from manufacturing plant, HVAC, industrial equipment. Real-time data capture, threshold alerts.
2. **CAFM / Maintenance Compliance** — SFG20 maintenance schedules, assessment tracking (may be sub-module or standalone — clarify), planned preventive maintenance alerts.
3. **Health & Safety Management** — ISO 45001 compliance, safety culture (people-side, not just equipment), incident management, behavioural safety metrics.
4. **BIM Integration** — Building Information Modelling, 3D spatial model with all assets mapped.

**Note:** He said 5 modules but described 4 domains. Assessment tracking may be the 5th, or a sub-module of CAFM. Clarify on next call.

**The whole thing is middleware** — not one module that's middleware. The platform IS the integration/orchestration layer. Source systems (IoT platforms, CAFM tools, H&S systems, BIM models) remain as-is. The product is the connective tissue.

**Digital twin / 3D visualisation:** He has partners on the hook for this. Not CS's concern initially.

---

## Commercial Picture

| Item | Detail |
|------|--------|
| VC interest | ~£5m for full platform build |
| POC budget | ~£200k (subject to prototype) |
| Funding status | VC tapped up, subject to prototype delivery |
| His role | Founder/entrepreneur (confirm) |
| Gardening leave | Currently on — end date TBC |
| Timeline | Itching to get going post-gardening leave |

---

## CS Assessment

### Why This Is Interesting

- Hard problem that CS likes — data integration across disparate systems with a domain model on top
- The middleware/data platform layer is exactly what CS does
- £200k POC is real money, with £5m behind it
- The guy has deep domain expertise (F1 COO) and knows the compliance world
- AI-assisted development approach could make CS credible for the build with a small team
- Potential for ongoing CTO-as-a-Service role as it scales

### Where CS Fits

- **Data architecture and integration design** — the middleware
- **Platform build** — POC scope, AI-assisted development
- **Technical leadership** — fractional CTO for the product as it scales to £5m

### POC Approach (Recommended)

Don't try to demo all 4 domains. Focus narrow, prove the middleware works.

**Recommended scope:** Pick ONE site, TWO complementary domains (e.g., equipment telemetry + CAFM/SFG20). Demonstrate:

1. Read from both source systems
2. Normalize into unified compliance data model
3. Cross-domain intelligence: "Your compressor is throwing anomalous readings AND it's overdue on its SFG20 schedule AND here it is on the 3D model"
4. Write-back: trigger a work order in the CAFM system based on telemetry + compliance rules
5. Show it can extend to other domains (H&S, BIM) without re-architecture

**Why:** Building broadly forces a hacky solution. Narrow focus proves the core value prop (middleware orchestration) and the architecture scales.

---

## Key Questions for Next Conversation

1. **Modules:** He said 5 but described 4. What's the 5th? Is assessment tracking standalone or part of CAFM?
2. **His role:** Founder/CEO? Is he building a company around this?
3. **Commercial model:** Is the £200k a paid engagement, or is he expecting equity/partnership from CS?
4. **Access to a live site:** Does he have a real facility with real source systems for the POC? Or is this theoretical?
5. **Gardening leave:** When does it end? What's the realistic start date?
6. **First customer:** Who's the first buyer? Does he have a site/organisation lined up?
7. **Source systems:** Which specific CAFM, H&S, IoT, and BIM systems would the POC integrate with? Do they have APIs?
8. **The partners:** Who are the digital twin/3D visualisation partners? How firm is that commitment?
9. **Who's the buyer?** Cross-domain compliance means multiple budget holders (FM, HSE, engineering). Who signs the cheque?

---

## 2-Way Integration — Complexity Flag

He's clear this is 2-way API integration — not just reading from sources but writing back. This significantly increases complexity:

- Need deep integration with each source system's API (legacy CAFM systems often have terrible APIs)
- Conflict handling, permissions, audit trails on write-back
- Every customer's system landscape will be different — connector framework needed
- Security and compliance implications of writing to safety-critical systems
- Testing and validation burden much higher than read-only

**POC must prove write-back works** — this is the credibility moment. If you can trigger a work order in a CAFM system from telemetry data, that's the "aha."

---

## Barriers to Success

**What he identified:** IoT data collection as the main technical barrier.

**What's actually harder:**
- Data quality and API access in legacy source systems (CAFM, H&S tools are often old and poorly integrated)
- Organisational change management — "we've always used spreadsheets"
- Each customer having a completely different system landscape (connector framework problem)
- Compliance domain model — who defines "compliant"? Regulations vary by industry, geography, asset type
- Multi-buyer go-to-market — selling to FM, HSE, and engineering simultaneously
- F1 compliance regime is one world. Manufacturing, healthcare, utilities — all different. Platform needs to be configurable per domain or it's very niche

---

## Competitive Landscape Summary

**Full analysis:** `work/competitive-landscape-integrated-compliance-platform.md`

**The gap is real.** No single vendor delivers unified compliance orchestration across all 4 domains with 2-way middleware.

**Market is siloed:**
- IoT/Telemetry: Honeywell Forge, Siemens Building X, Schneider EcoStruxure
- CAFM/Maintenance: Planon, Facilio, Spacewell, Eptura (Facilio closest — covers 3/4, no H&S)
- H&S/EHS: SafetyCulture, Ideagen, Intelex
- BIM/Digital Twin: Autodesk Tandem, Bentley iTwin

**Biggest threat:** Siemens (Building X + Brightly acquisition). Consolidating aggressively but products still separate.

**Key insight:** Everyone is trying to be the platform of record through acquisition. Nobody is positioning as middleware/orchestration. That's the whitespace.

---

## Decision Test

- **Does this move me toward leading, or back into doing?** Could go either way. CTO-as-a-Service / technical architect = leadership. Writing the integration code myself = doing. Decide up front.
- **Can the team deliver at 80%?** For the POC, possibly — with AI-assisted development. For the full £5m build, would need proper developers or a well-orchestrated agentic development approach.
- **Is this a client or a partnership?** Need to clarify. Paid engagement vs equity stake changes everything.

---

*Next step: Follow-up meeting. Go back with clean understanding of the 4 domains, POC approach, and key questions above.*
