# Race Ready - Technical Assessment Report

**Date:** 13 January 2026
**Prepared by:** Scott (Technology Review)
**Meeting:** Sol Hardy & James, Bluesparrow Apps

---

## Tech Stack Summary

| Component | Technology | Notes |
|-----------|------------|-------|
| Mobile App | MAUI (.NET) | Microsoft's cross-platform framework |
| Backend | C# / SQL Server / REST API | Traditional architecture |
| Hosting | Azure | ~£100/month |
| CMS | WordPress + custom publisher | Not a headless CMS |
| Push | Azure Notification Hub | Currently disabled |
| Weather | Google Weather API | Free tier |

**Build time:** ~2 months for MVP. **Team:** Single developer at Bluesparrow.

---

## Cost Implications

### Current State
- **Hosting:** £1,200/year (cheap, reflects MVP scale)
- **Maintenance:** No retainer - ad-hoc pricing when needed
- **Support:** None (no SLA, no test environment)

### To Make Production-Ready
| Work Item | Estimate |
|-----------|----------|
| Proper test environment | £5-10k |
| Documentation & runbook | £3-5k |
| Address tech debt (libraries, hardcoded elements) | £10-20k |
| **Subtotal** | **£18-35k** |

### To Scale for AWMM (Millions of Users)
| Work Item | Estimate |
|-----------|----------|
| Re-architect REST API for scale | £40-80k |
| Replace WordPress with headless CMS | £30-50k |
| Proper infrastructure (environments, CI/CD, monitoring) | £20-30k |
| White-labeling capability | £30-50k |
| **Subtotal** | **£120-210k** |

**Total realistic investment:** £150-250k to transform MVP into scalable platform.

---

## Strategic Risk: AI Obsolescence

**Critical question:** Does this app have defensible value in the age of AI?

### Content Analysis
The app's core content covers:
- Medical preparedness for runners
- Nutrition and hydration guidance
- Training checklists and countdowns
- Weather-based race day advice

**This content is NOT proprietary.** It is:
- Standard sports medicine best practice
- Freely available from NHS, World Athletics, running publications
- Already indexed and trained into major LLMs
- Being integrated into established running apps (Strava, Garmin, Nike Run Club)

### Competitive Reality
Major running platforms are already deploying AI coaches that:
- Provide personalized training advice
- Answer medical/nutrition questions conversationally
- Adapt to individual runner data and race goals
- Deliver content dynamically rather than via static gamification

Bluesparrow acknowledged this directly: *"AI would require a reimagining based on LLMs... the main running apps are already doing this."*

### The Hard Truth
Race Ready's value proposition - curated runner safety content - is being commoditised. An LLM with access to current medical guidelines can provide equivalent (or better) personalized advice without app installation.

---

## Summary

| Factor | Assessment |
|--------|------------|
| **Build quality** | MVP - functional but not scalable |
| **Investment to scale** | £150-250k minimum |
| **Content moat** | None - freely available information |
| **AI threat** | High - core use case being absorbed by LLM-powered apps |
| **Recommendation** | The economics don't support acquisition or significant investment |

The app was a well-intentioned MVP. Taking it to AWMM scale would require rebuilding most of it, and by the time that's done, the category may no longer exist.
