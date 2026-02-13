# AWMM — Consent Pro Implementation

## EPIC: Implement Cookie Consent Management (Consent Pro)

**Summary:** Implement Finsweet Consent Pro on the WMM website to provide compliant cookie consent management, integrated with the existing Google Tag Manager setup.

**Description:**
The WMM website currently has no cookie consent management in place. We need to implement Finsweet's Consent Pro solution — a Webflow-native cookie consent tool that allows granular control over which cookies are set based on user preferences (functioning similarly to a container tag).

The site currently uses Google Tag Manager (GTM), which contains Google Analytics. GTM was implemented by Charles Meaden (expert associate) and must be retained. Consent Pro supports GTM integration, so the two will work alongside each other — Consent Pro managing consent state, GTM firing tags only when appropriate consent has been granted.

Privacy Policy and Cookie Policy pages must also be updated to reflect the new consent categories and cookie inventory.

**Assignee:** Scott Humphrey

---

## STORY 1: Implement Consent Pro on WMM Website

**Summary:** Install and configure Finsweet Consent Pro to manage cookie consent across the WMM website, integrated with the existing GTM implementation.

**Description:**
Install Consent Pro via the Finsweet native Webflow integration. Configure four consent categories to match the existing Cookie Policy structure:

| Category | Status | Default | Cookies |
|---|---|---|---|
| Strictly Necessary | Active | Always on | Vinyl.CsrfToken, Vinyl.Session, Vinyl.Auth |
| Analytical/Performance | Active | Off (requires consent) | _ga, _gid, _gat_UA-49830042-8 (via GTM) |
| Functionality | Placeholder | Off | None currently — retain category for future use |
| Targeting | Placeholder | Off | None currently — retain category for future use |

Integrate with the existing GTM setup (implemented by Charles Meaden) so that GTM tags only fire when the user has granted Analytical/Performance consent. Functionality and Targeting categories should be present in the banner but switched off by default with no tags firing behind them.

**Acceptance Criteria:**

1. Consent Pro is installed on all pages of the WMM website via the Finsweet Webflow integration
2. A cookie consent banner is displayed to all first-time visitors, presenting four consent categories: Strictly Necessary, Analytical/Performance, Functionality, and Targeting
3. Strictly Necessary cookies are set without requiring consent (always on, not toggleable); all other categories require explicit opt-in
4. Functionality and Targeting categories are visible in the banner but defaulted to off — no cookies or tags fire behind them currently (placeholder for future use)
5. Google Tag Manager continues to function but only fires tags (including GA) when the user has granted Analytical/Performance consent
6. User consent preferences are persisted — returning visitors are not re-prompted unless they choose to update preferences
7. A "manage cookie preferences" option is accessible from the site footer (or equivalent persistent location) allowing users to update their choices at any time
8. The implementation does not break any existing site functionality, navigation, or GTM data collection (post-consent)
9. Tested across Chrome, Safari, Firefox, and Edge (desktop and mobile)
10. Verified that no non-essential cookies are set prior to consent being granted (use browser dev tools / cookie audit)

---

## STORY 2: Update Privacy Policy and Cookie Policy

**Summary:** Update the WMM Privacy Policy and Cookie Policy pages to reflect the new Consent Pro implementation, consent categories, and cookie inventory.

**Description:**
The existing Cookie Policy (effective May 2018) already defines four categories and lists some cookies. Update both policies to:
- Reflect the current cookie inventory accurately (some cookies may have changed since 2018)
- Reference the Consent Pro consent mechanism (replacing the previous "block via browser settings" guidance)
- Maintain all four categories (Strictly Necessary, Analytical/Performance, Functionality, Targeting) even where no cookies currently exist for a category

**Acceptance Criteria:**

1. Cookie Policy updated with a complete and current inventory of cookies, grouped by the four consent categories (Strictly Necessary, Analytical/Performance, Functionality, Targeting)
2. Each active cookie listed with: name, provider, purpose, duration, and category
3. Functionality and Targeting sections retained with a note such as "No cookies are currently used in this category" — demonstrating the framework is in place
4. Cookie Policy describes how users can manage their preferences via the Consent Pro banner and the persistent "manage preferences" link (replacing the old browser-settings-only guidance)
5. Privacy Policy updated to reference the cookie consent mechanism and link to the Cookie Policy
6. Both policies reference the consent categories consistently with the labels used in the Consent Pro banner
7. Content reviewed and approved by Scott Sheridan before publication
8. Pages published and accessible from the site footer
