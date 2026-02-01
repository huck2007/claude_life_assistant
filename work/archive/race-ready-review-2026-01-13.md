# Race Ready - Tech Stack Review
**For:** AWMM Board Report (Thanks But No Thanks)
**Meeting:** Tuesday 13 Jan 2026, 30 mins with Danny (COO)
**Scott's Role:** Understand tech stack and costs to run/enhance

---

## What Is Race Ready?

A **free runner safety/education app** focused on medical preparedness for endurance events.

| Aspect | Detail |
|--------|--------|
| **Created by** | Matthew Good Foundation + World Athletics medical division |
| **Legal structure** | Community Interest Company (CIC) - not-for-profit |
| **Launched** | 2023/2024 |
| **Downloads** | ~8,000 (as of Oct 2025) |
| **Cost to runners** | Free |
| **Platforms** | iOS and Android |

**Core features:**
- Race countdown and checklists
- Tiered educational content (medical, nutrition, hydration, performance)
- Weather monitoring for race location
- Gamified progress tracking

**It is NOT:** A race timing system, results platform, or spectator tracking app.

---

## Who Built It?

**Medical leadership:**
- Dr Paulo Emilio Adami - Head of Medical Operations, World Athletics
- Professor Courtney Kipps - Assistant Medical Director, London Marathon
- Professor Rob Galloway - Former Medical Director, Brighton Marathon

**Funding:** Matthew Good Foundation funded initial creation, launch, app development, and website.

**Partnership:** Endorsed by World Academy for Endurance Medicine (formerly IIRM).

---

## Tech Stack (What We Know)

**Public information is limited.** No tech stack disclosure found.

**Likely architecture (educated guess for a mobile app of this type):**
- **Mobile:** React Native or Flutter (cross-platform iOS/Android)
- **Backend:** Cloud-hosted (AWS/GCP/Azure) - likely serverless given low scale
- **Content:** CMS for medical content management
- **Weather:** Third-party API integration
- **Auth:** Standard mobile auth (email/social)

**Scale indicator:** 8,000 downloads suggests modest infrastructure needs. Not enterprise-grade.

---

## Costs to Run (Estimates)

Since it's a not-for-profit with ~8k users, costs are likely modest:

| Cost Area | Estimate (Annual) |
|-----------|-------------------|
| Cloud hosting | £5-15k (low traffic) |
| App store fees | £200 (Apple + Google) |
| Weather API | £1-5k |
| Maintenance dev | £20-50k (part-time contractor) |
| Content updates | Medical volunteers (free) |
| **Total estimated** | **£30-70k/year** |

**Enhancement costs** would depend on scope - adding features like:
- Live race tracking: +£50-100k build
- Integration with timing systems: +£30-50k
- White-labeling for events: +£20-40k
- Scale to millions of users: significant re-architecture

---

## AWMM Connection

**Current relationship:** Race Ready was promoted via AWMM's Marathon Talk podcast. Tim Good (MGF Chairman) appeared to discuss the app. No formal partnership or integration found.

**AWMM's own apps:**
- Global Run Club app (launched Aug 2020) - virtual community, challenges
- Runner Portal - entry draws for major marathons

---

## Questions for Danny

### Understanding the Ask
1. What was the original proposal from Race Ready / MGF to AWMM?
2. Was this integration, co-funding, white-labeling, or something else?
3. What problem was AWMM trying to solve by considering Race Ready?

### Tech Assessment
4. Has anyone at AWMM reviewed the actual codebase or architecture?
5. Do we have documentation on their tech stack from Race Ready directly?
6. What's their hosting setup and SLA commitments?

### Costs
7. What were the proposed costs to AWMM (one-off and ongoing)?
8. How does this compare to enhancing the existing Global Run Club app?
9. What's the current annual spend on Global Run Club app maintenance?

### Strategic
10. Is the core issue that Race Ready doesn't fit AWMM scale (8k vs millions)?
11. Is it feature overlap with Global Run Club?
12. Is it concerns about relying on a small charity CIC for critical infrastructure?

### For the Board Report
13. What's the recommendation - build internally, find alternative partner, or do nothing?
14. What are the 2-3 key reasons for "thanks but no thanks"?
15. Is there a softer landing - promote Race Ready without formal integration?

---

## Competitor/Alternative Landscape

If AWMM wants runner safety content, alternatives include:

| Option | Pros | Cons |
|--------|------|------|
| **Build into Global Run Club** | Full control, integrated experience | Dev cost, content expertise needed |
| **Partner with Race Ready** | Free content, medical credibility | Small org, limited scale |
| **License content from World Athletics** | Source of Race Ready content anyway | Negotiation, still need app dev |
| **Do nothing** | Zero cost | Runners use Race Ready independently |

---

## Questions for Sol Hardy & James (Bluesparrow Apps)

**Context:** Bluesparrow Apps (Bristol-based agency) built and maintains Race Ready. Sol Hardy is Product Manager/Developer, James is a Director. Small team (~5 people), portfolio includes Fanhub, Policebox, and other mobile apps.

### Tech Stack & Architecture

1. What frameworks did you use for the mobile apps? (React Native, Flutter, native Swift/Kotlin?)
2. What's the backend built on? (Node, Python, .NET? Serverless or containerised?)
3. Where is it hosted? (AWS, GCP, Azure, other?)
4. How is the content managed? (Custom CMS, headless CMS like Contentful, or hardcoded?)
5. What third-party services/APIs does the app depend on? (Weather, analytics, push notifications?)
6. Is there a web version or admin portal? What's that built with?

### Codebase & Ownership

7. Who owns the IP - Race Ready Run CIC, Matthew Good Foundation, or Bluesparrow?
8. Is the codebase in a state where another team could pick it up? (Documentation, code quality, tests?)
9. What's the repo structure - monorepo or separate repos for iOS/Android/backend?
10. Are there any technical debt items or known issues we should be aware of?

### Costs - Build & Run

11. What was the approximate build cost for v1? (Ballpark - £50k, £100k, £200k?)
12. What are the current monthly/annual hosting and infrastructure costs?
13. What's the current maintenance arrangement - retainer, ad-hoc, or volunteer time?
14. How many hours per month does maintenance typically require?

### Scale & Performance

15. What's the current active user base vs total downloads?
16. What's the infrastructure headroom - could it handle 100k users? 1m users?
17. What would need to change architecturally to support AWMM scale (millions of runners)?
18. Are there any performance bottlenecks or scaling concerns in the current build?

### Enhancement & Roadmap

19. What's on the current roadmap for Race Ready?
20. If we wanted to add [specific feature X], what's the rough effort estimate?
21. Is the app built in a modular way that would support white-labeling for different events?
22. How difficult would integration with timing systems or race management platforms be?

### Support & Continuity

23. What's the bus factor - how dependent is ongoing support on specific individuals?
24. Is there a handover document or technical runbook?
25. What's Bluesparrow's appetite for continued involvement vs transitioning to another team?

---

## Sources

- [Race Ready main site](https://raceready.run/)
- [Race Ready FAQ](https://raceready.run/faq/)
- [Matthew Good Foundation - Race Ready Project](https://www.matthewgoodfoundation.org/project/race-ready/)
- [Runner's World - Race Ready launch](https://www.runnersworld.com/uk/training/a63917094/race-ready-app/)
- [The Running Channel - Race Ready coverage](https://therunningchannel.com/race-ready-app/)
