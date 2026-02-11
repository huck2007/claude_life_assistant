# Email 2: To Phil V (CTO) & Simon (CEO) — Our Recommendation

**Subject:** Data & Cloud Ops — Our View and Recommended Approach

Phil, Simon,

Following on from my conversation with Phil, I wanted to set out our perspective on the Data & Cloud Ops optimisation service being proposed by Future Processing, and what we'd recommend as an alternative.

**Our understanding of the proposal**

Future Processing are offering a service that reduces cloud costs by leveraging volume discounts with AWS, Snowflake and other providers — discounts that Trustmark wouldn't access independently. The implication is that by routing procurement through (or in partnership with) FP, you'd achieve meaningful savings.

**Our concerns**

1. **Snowflake is already optimised.** We negotiated the Snowflake contract directly and secured a substantial discount. Beyond that, Phil and I have previously discussed further Snowflake cost optimisation opportunities — changes to warehousing, clustering, and query patterns that would generate ongoing savings. We haven't pursued them yet because they carry upfront implementation costs that shift spend temporarily into capex, and the timing hasn't been right. But the analysis is done. The options are known. They don't require a third party to identify them — we identified them.

2. **AWS savings are available to you directly — and the numbers don't support a third party.** Your total AWS spend across all three accounts is approximately $2,035 per month ($24,400 per year). We've already identified $670 per month ($8,040 per year) in savings through AWS Savings Plans and Reserved Instances:

   | Account | Current Monthly Spend | Available Saving | Saving % |
   |---------|----------------------|------------------|----------|
   | Dev     | $640                 | $248/mo          | 39%      |
   | UAT     | $356                 | $134/mo          | 38%      |
   | Prod    | $1,039               | $288/mo          | 28%      |
   | **Total** | **$2,035**         | **$670/mo ($8,040/yr)** | |

   These savings require no intermediary — they're standard AWS commitment options available to every customer directly through the console. AWS's volume discount programme (EDP) doesn't even begin conversations below $1M annual spend. Your account is roughly 40x below that threshold. Even if Future Processing aggregate their clients to reach that level, they'd take a margin on any discount negotiated — meaning the net benefit to Trustmark could be negligible or zero. We're talking about a potential additional saving of hundreds of pounds per year, in exchange for handing over account access and adding contractual dependency.

3. **AWS security tooling — same story.** Phil and I have also discussed leveraging AWS's built-in security operations tools (GuardDuty, Security Hub, Config). We've recommended these previously, but the setup costs weren't considered viable at the time. I'd be uncomfortable with an external party arriving to make the same recommendations we've already made and had deferred. That's not a new insight — it's our homework being marked by someone who didn't do the original work.

4. **This is a land-and-expand pattern.** It starts with procurement optimisation — which sounds low-risk — but naturally extends into infrastructure management, security oversight, and eventually operational control. Once contracts sit with a third party and credentials are shared, the switching cost rises and the dependency deepens. That's a commercial strategy, not a cost-saving exercise.

5. **Security and access risk.** Granting a supplier visibility into (or control over) your cloud accounts introduces risk that needs to be weighed against any saving. Who holds the credentials? Who approves changes? Who's accountable when something breaks at 2am?

**The question I know you'll be asking**

Simon, I want to address this directly: if a trusted supplier is offering a free service that could generate savings, why wouldn't you take it? On the surface, the only downside is short-term tension with your existing supplier — and that shouldn't be a reason to turn down savings.

But I don't think this is about short-term tension. It's about cementing dependency. A supplier that controls your cloud contracts, has visibility of your infrastructure, and manages your security posture is a supplier you can't easily move away from. That may be a price worth paying if the strategic aim is to build an insurance policy or transition toward a larger supplier for the long term — and if that's the direction of travel, I'd rather we had that conversation openly than let it happen by degrees.

**What we'd do instead**

If cost optimisation is the objective — and it should be a standing priority — here's what we'd propose:

1. **Invoke the AWS savings immediately** — The $670/month ($8,040/year) in identified savings can be actioned now. We just need your approval to commit to the appropriate Savings Plans across dev, uat and prod.

2. **Revisit the Snowflake optimisations** — The opportunities Phil and I discussed are still valid. If the appetite for upfront investment has changed, we can re-present the options with updated business cases.

3. **Revisit AWS security tooling** — Same applies. The recommendations stand. If the cost conversation has moved on, let's reopen it.

4. **Cost governance framework** — Tagging standards, budget alerts, monthly cost reporting. Simple, sustainable, and owned by the people who actually manage the environments.

5. **Quarterly cost review** — Each quarter we review spend, flag anomalies, and recommend optimisations with clear business cases so you can decide what to act on with full visibility.

We can action the AWS savings plans within days of your go-ahead.

**One final thing.** I offered to come down to Basingstoke in November and again in December to sit down and discuss the future — how the relationship is working, where it's heading, what you need from us. That offer still stands, and I'd welcome the opportunity. These conversations are better had face to face.

Best,
Scott
