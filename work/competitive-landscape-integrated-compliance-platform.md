# Competitive Landscape: Integrated Compliance / Asset Management Platform

**Date:** 12 February 2026
**Scope:** Equipment telemetry + CAFM/maintenance + H&S + BIM -- unified compliance orchestration
**Prepared for:** Positioning and go-to-market analysis

---

## Executive Summary

No single vendor currently delivers a unified compliance orchestration layer that spans all four domains (equipment/plant telemetry, CAFM/maintenance compliance, health & safety management, and BIM integration) with genuine 2-way API middleware. The market is fragmented across adjacent categories -- OT/IoT platforms, CAFM/IWMS, EHS software, and digital twin/BIM tools -- with each vendor strong in 1-2 domains and weak or absent in the others.

The gap is real, but the window is narrowing. Large players (Siemens, Honeywell, Johnson Controls) are actively consolidating through acquisition and partnership to build broader platforms. The opportunity lies in being the middleware/orchestration layer that sits between these systems -- not replacing them, but unifying compliance visibility across all four.

---

## 1. Major Players in Adjacent Spaces

### Tier 1: Industrial / Building OEMs (Strong on Telemetry + BMS, Weak on H&S Compliance + CAFM depth)

**Honeywell Forge / Connected Solutions**
- **Covers:** Building management (HVAC, lighting, security), IoT sensor integration, predictive maintenance, energy/carbon management, AI-powered operational analytics
- **Recent:** June 2025 launch of "Connected Solutions" -- single interface for all Honeywell building software/devices, AI-enabled installation
- **Gap:** No native SFG20/CAFM compliance engine. No H&S management (ISO 45001, behavioural safety, incident management). BIM integration is limited -- primarily a data aggregation layer for Honeywell's own OT stack, not a standards-based BIM platform
- **Verdict:** Excellent telemetry platform, but it is a proprietary Honeywell ecosystem play, not an open compliance orchestrator

**Siemens Building X**
- **Covers:** Cloud-based smart building management, IoT interoperability (partnership with Microsoft Azure IoT), ESG/emissions compliance reporting, energy management, Portfolio Manager for multi-site oversight
- **Recent:** Building X Portfolio Manager launched May 2025. Partnership with Microsoft for open-standard IoT interoperability. Acquired Brightly Software for $1.88B (2022) for asset lifecycle management
- **Gap:** H&S management is thin -- focuses on ESG/sustainability compliance, not occupational safety (ISO 45001) or behavioural safety. BIM integration exists through Siemens' broader portfolio but is not natively unified in Building X. CAFM/SFG20 handled by Brightly (separate product), not yet deeply integrated
- **Verdict:** Broadest ambition of any incumbent. Closest to the vision through M&A (Brightly for CAFM, Building X for IoT/BMS) but still operating as separate products, not unified compliance

**Johnson Controls OpenBlue**
- **Covers:** Digital twin (BIM-based 3D visualisation), IoT/BMS integration, predictive maintenance, occupant safety (worker safety AI), compliance monitoring, fire/life safety
- **Recent:** OpenBlue Worker Safety won AI Excellence Award 2024. Digital Twin integrates 3D BIM with contextual asset/people visualisation. Named IWMS leader in Verdantix 2025 Green Quadrant
- **Gap:** H&S coverage is limited to occupant safety and life safety systems -- not full ISO 45001 management, behavioural safety programmes, or incident management workflows. CAFM/SFG20 maintenance compliance is not their core. Manufacturing plant telemetry is secondary to commercial buildings
- **Verdict:** Strong on BIM + digital twin. Weak on compliance depth (H&S and CAFM/maintenance)

**Schneider Electric EcoStruxure**
- **Covers:** Building management (HVAC, lighting, fire, security), IoT sensor platform, energy management, IWMS integration, occupant wellbeing analytics (WELL, LEED, BREEAM certification support)
- **Gap:** No native H&S management platform. No SFG20/CAFM compliance. BIM integration limited. Primarily a controls/OT vendor, not a compliance platform
- **Verdict:** Strong OT/IoT, but compliance layer is absent

### Tier 2: Enterprise Asset Management (Strong on Assets, Variable on Other Domains)

**IBM Maximo Application Suite**
- **Covers:** Enterprise asset management (EAM), AI-powered predictive maintenance, compliance/risk tracking, IoT sensor integration, mobile workforce. TRIRIGA for IWMS/facilities. ISO 55001 alignment
- **Recent:** Named leader in multiple analyst reports. Strong in public sector, utilities, heavy industry
- **Gap:** BIM integration exists through TRIRIGA but is not deeply native -- requires integration work. H&S management is compliance tracking, not a full ISO 45001 or behavioural safety platform. SFG20 integration not available out of the box. Two separate products (Maximo + TRIRIGA) still feel like separate systems despite "Application Suite" branding
- **Verdict:** Strongest EAM in market but built for asset-heavy industries (utilities, oil & gas), not FM/building compliance. Integration gap between Maximo and TRIRIGA is the exact problem this proposition solves

**IFS (including Ultimo EAM)**
- **Covers:** EAM, EHS incident management, management of change, work permits, task risk assessment, lockout/tagout, IoT condition-based maintenance
- **Recent:** Named #1 for EAM Market Share (Gartner 2024). IFS Ultimo EHS is a fully integrated health & safety module within EAM
- **Gap:** BIM integration is not native. CAFM/SFG20 maintenance scheduling is not their focus (they are ERP/EAM, not FM). No digital twin or 3D spatial model
- **Verdict:** Closest to combining H&S + asset management in one system, but missing BIM and CAFM/maintenance compliance entirely. Manufacturing-oriented, not FM-oriented

**Hexagon Asset Lifecycle Intelligence**
- **Covers:** Asset lifecycle management, GIS/BIM capabilities in EAM, IoT analytics, safety/compliance tracking, digital information management (SDx2 platform)
- **Recent:** Announced spin-off of ALI division (2025). SDx2 platform for asset lifecycle information management
- **Gap:** More focused on process industries (oil & gas, chemicals, power) than FM/buildings. H&S is not a core module. No CAFM/SFG20 integration
- **Verdict:** Strong in heavy industry digital twin + asset management, but not the FM/buildings compliance space

**AVEVA (now part of Schneider Electric)**
- **Covers:** Asset performance management, PI System (industrial data historian), predictive maintenance, mobile workforce, digital twin simulations
- **Recent:** Named Leader in IDC MarketScape for Manufacturing APM 2025-2026. Visual APM initiative (Oct 2024) for deeper digital twin integration
- **Gap:** Purely industrial/process automation focus. No CAFM, no H&S management, no BIM for buildings. Manufacturing-only
- **Verdict:** Excellent for plant telemetry, but single-domain only

### Tier 3: CAFM / IWMS Platforms (Strong on FM, Weak on Telemetry + H&S)

**Planon**
- **Covers:** IWMS, CAFM, SFG20 integration (native), space management, sustainability/ESG compliance, maintenance management
- **Recent:** Leader in all categories in Verdantix 2025 Green Quadrant for CPIP/IWMS. SFG20 API integration delivering automated maintenance compliance
- **Gap:** IoT/telemetry integration is basic (sensor data ingest, not deep plant telemetry). H&S management is limited to basic compliance features, not ISO 45001 or behavioural safety. BIM integration exists but is not a 3D digital twin platform
- **Verdict:** Best-in-class CAFM with SFG20. But only covers one of the four domains deeply

**Spacewell (Nemetschek Group)**
- **Covers:** IWMS, CAFM, IoT integration (environmental monitoring, space utilisation), BIM integration (3D asset management), energy management, compliance tracking
- **Recent:** Named Leader in Verdantix 2025. December 2025 updates added stronger compliance tools and supplier reviews
- **Gap:** H&S management is basic. Plant/equipment telemetry is limited to building sensors (not manufacturing/industrial). BIM integration is 3D visualisation, not a full digital twin with real-time overlay. No SFG20 integration noted
- **Verdict:** Closest CAFM vendor to covering multiple domains (FM + IoT + BIM) but shallow in each beyond core CAFM

**Eptura (Archibus)**
- **Covers:** IWMS, asset management, BIM integration (deep Autodesk partnership), space management, compliance (FedRAMP authorised), IoT utilisation data
- **Recent:** Strategic investment from Autodesk. Partnership with Autodesk Tandem for connected building maintenance. Named IWMS Leader (Verdantix 2025)
- **Gap:** No H&S management. No plant/manufacturing telemetry. BIM partnership is strong but focused on handover/visualisation, not real-time compliance orchestration. No SFG20
- **Verdict:** Strong on BIM-to-FM bridge via Autodesk partnership. Missing H&S and telemetry entirely

**Facilio**
- **Covers:** Connected CMMS/CaFM (IoT-first), SFG20 integration, BIM integration, condition-based maintenance, compliance/audit tracking, energy management
- **Recent:** Named Leader in Verdantix 2025 Green Quadrant. Platform-first IoT/AI-enabled approach unifying maintenance, compliance, energy, tenant experience
- **Gap:** H&S management (ISO 45001, behavioural safety, incident management) is absent. Manufacturing/industrial plant telemetry not their focus (building-oriented). BIM integration is for onboarding/visualisation, not full digital twin
- **Verdict:** Most "integrated" of the CAFM challengers (IoT + SFG20 + BIM + CAFM in one platform), but still missing the H&S domain entirely

**Service Works Global (QFM)**
- **Covers:** CAFM, SFG20 integration (auto-updating compliance), BIM integration, space management
- **Gap:** No IoT/telemetry platform. No H&S management. UK-focused
- **Verdict:** Solid SFG20/CAFM play but single-domain

### Tier 4: Digital Twin / BIM Platforms (Strong on BIM, Weak on Everything Else)

**Autodesk Tandem**
- **Covers:** Cloud-based digital twin from BIM, BMS connectivity, CMMS/IoT data integration, asset visualisation, preventive maintenance support
- **Recent:** Matured significantly by June 2025. Tandem Connect for pre-packaged BMS integrations. Partnership with Eptura for connected maintenance
- **Gap:** Not a compliance platform. Not a CAFM system. Not an H&S system. It is a visualisation/data layer that connects to these systems. No SFG20. No ISO 45001
- **Verdict:** Excellent BIM-to-operations bridge, but a visualisation layer not a compliance engine

**Bentley Systems iTwin**
- **Covers:** Infrastructure digital twin platform, BIM/GIS/IoT fusion, sensor connectivity (100+ certified sensors, MQTT, OPC-UA), asset lifecycle analytics, predictive maintenance, compliance reporting
- **Recent:** iTwin IoT fuses IoT with BIM/GIS for geospatial insights. Open APIs, vendor-agnostic data ingestion
- **Gap:** Infrastructure-focused (bridges, dams, roads, plants), not FM/buildings. Not a CAFM platform. Not an H&S platform. Compliance reporting is asset-performance focused, not regulatory/H&S
- **Verdict:** Most technically capable digital twin platform for infrastructure. But it is a platform/toolkit, not a vertical compliance solution

### Tier 5: EHS / Health & Safety Platforms (Strong on H&S, Missing Everything Else)

**SafetyCulture (iAuditor)**
- **Covers:** Safety inspections, risk assessments, asset tracking, IoT sensors (temperature/humidity monitoring), compliance audits, incident management, training (EdApp), behavioural safety observations
- **Recent:** 75,000+ organisations, 1.5M users. Expanded into IoT environmental monitoring and asset management
- **Gap:** Not a CAFM/CAFM compliance platform. No SFG20. No BIM integration. IoT limited to their own environmental sensors, not industrial plant telemetry. Asset tracking is basic, not EAM
- **Verdict:** Best pure-play H&S/safety culture platform. Covers the "people side" of compliance (behavioural safety, inspections, culture) that nobody else does well. But single-domain

**Ideagen**
- **Covers:** EHS compliance, risk management, machinery safety, quality management, document control, lone worker protection
- **Recent:** Acquired WorkSafe Guardian (lone worker safety). Platform approach with "Hub" single sign-on across all Ideagen products
- **Gap:** No CAFM. No BIM. No plant telemetry. Limited IoT. Compliance-focused but in a document/workflow sense, not real-time operational compliance
- **Verdict:** GRC/compliance specialist. Strong regulatory compliance engine but not operational

**Intelex (Industrial Scientific)**
- **Covers:** EHSQ management, IoT integration (gas detector data feeding into incident workflows), asset compliance tracking (ACTS), API-based integration
- **Recent:** Acquired by Industrial Scientific. Integration between gas detectors and EHS workflows
- **Gap:** No CAFM. No BIM. IoT limited to gas detection. Asset tracking is environmental compliance focused (EMIS), not maintenance/FM
- **Verdict:** Niche IoT-EHS integration play. Interesting model (sensor data triggering compliance workflows) but very narrow

**Benchmark Gensuite**
- **Covers:** EHS platform, ISO 45001 compliance, occupational health, environmental compliance, sustainability, risk management
- **Gap:** No CAFM, no BIM, no telemetry, no asset management
- **Verdict:** Pure EHS compliance software

### Other Notable Players

**Nuvolo (ServiceNow-based)**
- **Covers:** CAFM on ServiceNow, asset lifecycle management, compliance inspections, IoT/BMS integration, medical device cybersecurity (healthcare focus)
- **Gap:** No BIM. Limited industrial telemetry. H&S is compliance workflow, not ISO 45001/behavioural safety. Strong but healthcare-niche
- **Verdict:** Interesting because it is middleware by nature (built on ServiceNow platform), but verticalised for healthcare

**OmTrak**
- **Covers:** O&M manuals, BIM management, asset registers, scheduled maintenance, defect management, work orders
- **Gap:** No IoT/telemetry. No H&S. Limited compliance engine. More a construction handover tool than an operational compliance platform
- **Verdict:** BIM-to-FM handover specialist. Niche

---

## 2. Startups / Emerging Players

| Company | Domain Focus | Relevance |
|---------|-------------|-----------|
| **Facilio** (Singapore/India) | Connected CAFM + IoT + SFG20 + BIM | Closest challenger to the integrated vision. Missing H&S entirely |
| **Novacene** (UK) | Building health platform, BIM + IoT digital twin, ESG/performance | BIM + IoT only. No CAFM, no H&S, no maintenance compliance |
| **Thingspine** (US) | Digital twin builder + IoT middleware + data management | Generic middleware -- not compliance-focused. Environmental/safety regulation reporting mentioned but shallow |
| **EKORE** (Europe) | Energy management twins, 3D BIM + IoT sensors for HVAC/carbon | Raised EUR 1.3M. Very narrow (energy only) |
| **SafetyCulture** (Australia, $2B+ valuation) | H&S inspections, behavioural safety, IoT sensors, training | Scaled massively but single-domain (H&S). No CAFM, no BIM |
| **Motion Applied** (ex-McLaren Applied) | F1-derived telemetry, control, analytics, sensor technology | Industrial IoT sensors/telemetry. Hardware + edge computing. No compliance platform, no CAFM, no H&S, no BIM |

**Key finding:** No startup is currently attempting the full 4-domain integrated compliance play. The closest (Facilio) covers 3 of 4 but misses H&S entirely. The digital twin startups (Novacene, Thingspine, EKORE) are visualisation/data plays, not compliance orchestrators.

---

## 3. The Genuine Gap

### What exists today:
- **Telemetry platforms** (Honeywell, Siemens, AVEVA, Schneider) that capture IoT/sensor data from plant and equipment
- **CAFM/IWMS platforms** (Planon, Spacewell, Eptura, Facilio, SWG) that manage maintenance compliance and SFG20
- **EHS platforms** (SafetyCulture, Ideagen, Intelex, Benchmark Gensuite) that manage ISO 45001, incident management, behavioural safety
- **BIM/Digital Twin platforms** (Autodesk Tandem, Bentley iTwin, Johnson Controls OpenBlue) that provide 3D spatial models with asset data overlay

### What does NOT exist:
**A unified compliance orchestration layer that:**
1. Reads from all four system categories via 2-way API integration
2. Provides a single compliance dashboard showing status across all domains simultaneously
3. Writes back to source systems (e.g., a BIM-located asset triggers a maintenance schedule in CAFM, which logs against an H&S compliance record, using telemetry data to validate condition)
4. Maps compliance obligations to physical assets in 3D space (BIM)
5. Correlates behavioural safety data with equipment telemetry and maintenance records
6. Provides cross-domain compliance intelligence (e.g., "this asset is overdue maintenance AND in an area with elevated safety incidents AND showing abnormal telemetry readings")

### Why the gap exists:
1. **Different buyers:** Telemetry = engineering/operations. CAFM = FM team. H&S = HSE director. BIM = design/capital projects. These functions rarely report to the same person
2. **Different vendor ecosystems:** OT vendors (Honeywell, Siemens) do not build EHS software. EHS vendors do not build CAFM. BIM vendors do not build either
3. **Different data models:** Sensor time-series data, maintenance task records, safety incident records, and 3D spatial models have fundamentally different schemas
4. **Acquisition vs. integration:** Large vendors (Siemens buying Brightly, IBM combining Maximo + TRIRIGA) acquire capabilities but struggle to integrate them into a unified experience
5. **Standards fragmentation:** SFG20 (UK maintenance), ISO 45001 (H&S), ISO 55001 (asset management), COBie (BIM data exchange) are separate standards with no unifying framework

### Is the gap closing?
Yes, slowly. The market is consolidating:
- Siemens (Building X + Brightly) is the most aggressive acquirer
- Autodesk invested in Eptura (BIM + CAFM bridge)
- Johnson Controls OpenBlue is building a broader digital twin
- Facilio is expanding from CAFM into IoT and BIM

**But none are approaching this as a middleware/orchestration play.** They are all trying to be the platform of record. The opportunity is to be the connective tissue between existing best-of-breed systems -- not replace them.

### The F1/Motorsport angle:
The proposition has a credible origin story. F1 teams already manage:
- Hundreds of IoT sensors per car (telemetry)
- Rigorous maintenance schedules and component lifecycle tracking (CAFM equivalent)
- FIA safety compliance and workforce safety (H&S equivalent)
- Extensive simulation and digital modelling (digital twin/BIM equivalent)

The technology transfer precedent is established (McLaren Applied -> air traffic control, healthcare). The pitch is: "We built this for the most demanding compliance environment on earth. Now we're making it available for manufacturing and facilities."

---

## 4. Key Standards and Frameworks

| Standard | Domain | Relevance |
|----------|--------|-----------|
| **SFG20** | Maintenance compliance | UK industry-standard maintenance schedules for building services. API available for CAFM integration. Essential for any UK-focused FM compliance platform |
| **ISO 45001:2018** | Occupational health & safety | International standard for OH&S management systems. Replaced OHSAS 18001. Core framework for the H&S domain |
| **ISO 55001:2024** | Asset management | Updated 2024 with new emphasis on lifecycle management, predictive (not just preventive) action, and leadership accountability. Core framework for asset management domain |
| **ISO 14001** | Environmental management | Often implemented alongside ISO 45001. Environmental compliance tracking |
| **COBie** (Construction Operations Building Information Exchange) | BIM data exchange | Standard for capturing BIM data during design/construction for handover to FM/operations. Critical for BIM-to-CAFM data flow |
| **IFC** (Industry Foundation Classes) | BIM interoperability | Open standard for BIM data exchange between different software platforms |
| **OPC-UA** | Industrial IoT interoperability | Machine-to-machine communication protocol for industrial automation. Key for plant telemetry integration |
| **MQTT** | IoT messaging | Lightweight messaging protocol for IoT sensor data. Widely used alongside OPC-UA |
| **BACnet / BACnet/SC** | Building automation | Communication protocol for building automation and control networks. BACnet/SC adds TLS encryption |
| **Uniclass 2015** | Asset classification | UK classification system for the built environment. Used alongside SFG20 for asset categorisation |
| **ISO 19650** | BIM information management | Framework for managing information over the whole lifecycle of a built asset using BIM |
| **BSRIA BG 54** | Commissioning management | UK standard for commissioning management, often paired with SFG20 for handover/compliance |

---

## 5. Market Context

### Market Size
- **Facility management software market:** USD 26.3B (2025) projected to USD 81.8B by 2035 (12% CAGR) -- Market Research Future
- **Digital twin for buildings market:** USD 2.07B (2024) projected to USD 26.23B by 2033 (32.6% CAGR) -- Astute Analytica
- **Asset performance management market:** Growing significantly, with AVEVA, IBM, and GE Vernova as leaders
- **EHS software market:** Fragmented but growing, driven by regulatory requirements

### Key Consolidation / M&A (2024-2026)
| Deal | Year | Value | Significance |
|------|------|-------|-------------|
| Siemens acquired Brightly Software | 2022 | $1.88B | Asset lifecycle management + Siemens Building X IoT |
| CoStar acquired Matterport | 2025 | $1.6B | 3D spatial data for real estate/buildings |
| ABB acquired Eve Systems | 2024 | Undisclosed | Smart home/building IoT devices |
| Industrial Scientific acquired Intelex | -- | Undisclosed | Gas detection IoT + EHS software integration |
| Siemens + Microsoft partnership | 2025 | -- | Open-standard IoT interoperability for Building X |
| Autodesk invested in Eptura | -- | Strategic | BIM (Tandem) + IWMS (Archibus) connection |
| Hexagon ALI spin-off announced | 2025 | -- | Asset lifecycle intelligence becoming independent entity |

### Trends
1. **IWMS evolving to CPIP:** Verdantix renamed the category from "Integrated Workplace Management Systems" to "Connected Portfolio Intelligence Platforms" -- reflecting the shift toward IoT, AI, and cross-system data integration
2. **AI everywhere:** Two-thirds of organisations have implemented AI into asset management practices (Brightly 2026 study). Every vendor is adding AI copilots, predictive maintenance, anomaly detection
3. **Compliance as driver:** Rising regulatory requirements (safety, environmental, ESG) are the #1 driver of FM software adoption. Compliance is shifting from "nice to have" to "must have"
4. **Integration > replacement:** Organisations want to connect their existing systems, not rip and replace. API-first, middleware approaches are gaining traction over monolithic platforms
5. **Digital twin funding surge:** $157M+ in equity funding to digital twin startups (Jan 2024 - Jul 2025). Energy transition and autonomous systems driving investment. BIM + IoT convergence is a hot space
6. **UK regulatory environment:** SFG20 adoption growing. Building Safety Act 2022 creating new compliance obligations. Golden Thread of building information requirements favours integrated compliance approaches

### Analyst Landscape (Verdantix 2025 Green Quadrant Leaders)
- **CPIP/IWMS:** Planon, IBM, Eptura, MRI Software, Tango, Johnson Controls, Spacewell, Nuvolo
- **Industrial CMMS:** Brightly (Siemens) -- Leader
- **Connected CaFM:** Facilio -- Leader

---

## 6. Strategic Implications

### The proposition's genuine differentiation:
1. **Middleware, not monolith:** Not trying to replace Honeywell, Planon, or SafetyCulture -- orchestrating between them. This is a fundamentally different GTM than any current vendor
2. **4-domain compliance view:** Nobody provides cross-domain compliance intelligence today. This is the whitespace
3. **2-way API:** Most integrations are read-only data aggregation. Writing back to source systems (closing the loop) is genuinely rare
4. **BIM as the spatial index:** Using the 3D model as the unifying reference frame for all compliance data is technically sound and visually compelling. Nobody does this for compliance specifically
5. **F1 credibility:** The origin story provides technical credibility and a proven high-performance reference environment that commercial buyers respect

### Risks / Watch-outs:
1. **Siemens is the most dangerous competitor:** Building X + Brightly + Siemens OT/IoT could become the integrated platform if they execute on integration. Monitor their roadmap closely
2. **Facilio could expand into H&S:** They already cover IoT + CAFM + SFG20 + BIM. Adding an H&S module would make them a direct competitor
3. **Platform lock-in:** Large OEMs (Honeywell, Siemens, Schneider) may restrict API access to protect their ecosystems. Middleware depends on open APIs
4. **Different buyer problem:** Selling cross-domain compliance means selling to multiple budget holders (FM, HSE, engineering, IT). This is a harder sale than single-domain
5. **Standards adoption varies by geography:** SFG20 is UK-centric. ISO 45001 is global. The platform needs to be standards-agnostic to scale internationally

---

*End of competitive landscape briefing.*

Sources referenced in research:
- [Honeywell Forge](https://www.honeywell.com/us/en/solutions/honeywell-forge)
- [Siemens Building X](https://xcelerator.siemens.com/global/en/products/buildings/building-x.html)
- [Siemens Building X Portfolio Manager](https://press.siemens.com/global/en/pressrelease/siemens-building-x-portfolio-manager-serves-single-pane-glass-multi-site-assets)
- [IBM Maximo Application Suite](https://www.ibm.com/products/maximo)
- [Planon IWMS/CAFM](https://planonsoftware.com/us/)
- [Planon SFG20 Integration](https://www.sfg20.co.uk/products/software-integration/planon)
- [AVEVA APM](https://www.aveva.com/en/solutions/operations/asset-performance-management/)
- [AVEVA IDC MarketScape Leader](https://www.aveva.com/en/about/news/press-releases/2026/aveva-named-a-leader-in-idc-marketscape-for-manufacturing-asset-performance-management/)
- [Autodesk Tandem](https://intandem.autodesk.com/)
- [Autodesk Tandem 2025 Update](https://aecmag.com/digital-twin/autodesk-tandem-in-2025/)
- [Spacewell](https://spacewell.com)
- [Spacewell December 2025 Updates](https://spacewell.com/resources/blog/whats-new-in-spacewell-asset-december-2025/)
- [SFG20 Software Integration](https://www.sfg20.co.uk/products/software-integration)
- [Facilio Connected CAFM](https://facilio.com/)
- [Facilio SFG20 Integration](https://facilio.com/blog/sfg20-standards/)
- [Bentley Systems iTwin](https://www.bentley.com/software/itwin/)
- [Bentley iTwin IoT](https://www.bentley.com/software/itwin-iot/)
- [Johnson Controls OpenBlue](https://www.johnsoncontrols.com/openblue)
- [Johnson Controls Digital Twin](https://www.johnsoncontrols.com/en_gb/openblue/openblue-digital-twin)
- [Schneider Electric EcoStruxure](https://www.se.com/ww/en/work/campaign/innovation/buildings/)
- [IFS Enterprise Asset Management](https://www.ifs.com/solutions/enterprise-asset-management)
- [IFS Ultimo EAM](https://www.ifs.com/solutions/ifs-ultimo-eam)
- [Hexagon Asset Lifecycle Intelligence](https://www.linkedin.com/company/hexagonassetlifecycleintelligence)
- [SafetyCulture Platform](https://safetyculture.com/platform)
- [Ideagen EHS](https://www.ideagen.com/products/ideagen-ehs)
- [Intelex EHSQ](https://www.intelex.com/)
- [Brightly Compliance Pro](https://www.businesswire.com/news/home/20250306140895/en/Brightly-Software-Introduces-Compliance-Pro-from-TheWorxHub-to-Simplify-Compliance-Management)
- [Eptura Archibus BIM](https://eptura.com/our-platform/archibus/asset-management-bim/)
- [Nuvolo Connected Workplace](https://www.nuvolo.com/)
- [OmTrak BIM Management](https://www.omtrak.com/solution/bim-management/)
- [Verdantix CPIP/IWMS 2025](https://www.verdantix.com/venture/report/green-quadrant-connected-portfolio-intelligence-platforms-cpip-iwms-2025)
- [Verdantix IWMS to CPIP Transformation](https://www.verdantix.com/venture/report/market-insight-the-transformation-of-iwms-to-connected-portfolio-intelligence-platforms-cpip)
- [ISO 55001:2024](https://www.iso.org/standard/83054.html)
- [ISO 45001 Compliance Software](https://www.ideagen.com/standards/iso-45001)
- [Digital Twin Startups 2026](https://www.startus-insights.com/innovators-guide/digital-twin-startups-to-watch/)
- [Digital Twin Funding Activity](https://quickmarketpitch.com/blogs/news/digital-twins-funding)
- [Digital Twin for Buildings Market](https://www.globenewswire.com/news-release/2025/11/17/3189339/0/en/Latest-Digital-Twin-for-Buildings-Market-to-Reach-US-26-23-Billion-by-2033-Astute-Analytica.html)
- [FM Software Market Growth](https://www.marketresearchfuture.com/reports/facility-management-software-market-42340)
- [Siemens Acquires Brightly](https://www.cbinsights.com/research/siemens-acquires-brightly-competitors-upkeep-emaint/)
- [Motion Applied (ex-McLaren Applied)](https://www.motionapplied.com/)
- [Thingspine Digital Twin](https://www.thingspine.com/)
