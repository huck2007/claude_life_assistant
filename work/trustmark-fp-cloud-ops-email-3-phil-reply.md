# Email 3: Reply to Phil V - Response to FP FinDataOps Proposal Detail

**Subject:** RE: Follow-up from our conversation - Data & Cloud Ops Optimisation

Hi Phil,

Thanks for the extra detail. Happy to jump on a call first thing when you're in the car - but here's a summary of where I think this lands so you have something concrete to work with.

**Snowflake**

We negotiated the Snowflake contract directly and secured a significant discount. Snowflake billing is credit-based, usage is visible in real time, and the optimisation levers are well understood. There's nothing to discover that isn't already in the console.

We've already identified specific optimisation opportunities - moving to dynamic tables in the ingestion layer, model refactoring, and query optimisations. These are detailed, involved, and require investment. We haven't pushed them because the Snowflake spend is relatively modest and the return doesn't justify the cost at this stage. Those recommendations stand and we can revisit them at any time.

What Future Processing would need to do this assessment is full access to account metadata - query history, warehouse utilisation, user activity, storage metrics, credit consumption. That's not a narrow cost view; it's a complete operational picture. The issue isn't transparency - it's that without involvement in the data products, the business context, and the design decisions behind them, the output will be generic best-practice recommendations that read well on paper but lack the context of why things are built the way they are.

It's also worth noting the cost picture could change soon with IDP in the mix.  Intelligent Document Processing capability will both shift Snowflake spend before introducing their own optimisation opportunities. A static review now would miss all of that.

**AWS - the savings that are available now**

Here are the actual numbers across the three accounts we manage:

| Account | Current Monthly Spend | Available Saving | Saving % |
|---------|----------------------|------------------|----------|
| Dev     | $640                 | $248/mo          | 39%      |
| UAT     | $356                 | $134/mo          | 38%      |
| Prod    | $1,039               | $288/mo          | 28%      |
| **Total** | **$2,035**         | **$670/mo ($8,040/yr)** | |

These are standard AWS Savings Plans and Reserved Instances - available directly through the console, no intermediary required. We can action these within days of your go-ahead.

We haven't actioned them to date deliberately. Savings Plans and Reserved Instances are commitments - you're locking in spend against specific resources for one to three years. With the consultation period and uncertainty around the platform's future direction, the responsible approach was to hold off. If the direction is now confirmed, we should move on these immediately.

**AWS - why an Enterprise Discount via FP is unlikely to help**

AWS's Enterprise Discount Programme (EDP) doesn't begin conversations below $1M annual spend - typically $1M to $3M. Your current spend across the accounts we manage is approximately $24,000 per year. Even combining both Crozier Scott and Tech Influence accounts, I'd be very surprised if total spend reaches anywhere near that threshold.

What FP can offer is a brokered version of an EDP - aggregating their clients' spend to negotiate volume discounts. In practice, FP take a margin on any discount negotiated, meaning the net benefit to Trustmark is reduced or negligible. At your spend levels, we're talking about a potential additional saving of hundreds of pounds per year. In exchange, the commercial relationship with AWS would sit with Future Processing rather than Trustmark, and any future infrastructure changes would require FP involvement in a way that hasn't been needed before. That's not simplification - it's an additional dependency on routine operations.

**FinOps is a process, not a product**

Cloud cost management is an ongoing discipline, not something solved by a one-off assessment or a third-party tool. The industry framework for this is called FinOps (Financial Operations for cloud), and it's built on three principles: visibility, optimisation, and governance.

In practical terms, what Trustmark needs is straightforward:

1. **Action the identified AWS savings now** - $8,040/year, no third party required
2. **Tagging and cost allocation** - consistent resource tagging across accounts so costs map to teams, projects, and environments
3. **Budget alerts** - automated notifications when spend exceeds expected thresholds (built into AWS and Snowflake natively, at no cost)
4. **Monthly cost reporting** - a standing review of spend trends, anomalies, and optimisation opportunities
5. **Quarterly cost governance review** - deeper assessment aligned to roadmap changes, with clear business cases for any further optimisation

All of this uses native tooling that's already included in your AWS and Snowflake subscriptions. There's no licensing cost and no third-party dependency. It's owned by the people who manage the environments and understand the business context behind the spend.

We're happy to stand this up formally and make it part of our ongoing service. If it would be useful, I can put together a short proposal for what this looks like in practice.

**In summary**

- Snowflake is already optimised and further opportunities are identified - they need investment, not a third-party review
- $8,040/year in AWS savings is ready to go today - just needs your approval (and there could be comparable savings with Tech Influence / Future Processing)
- An enterprise AWS discount via FP is unlikely to be material at your spend levels, and comes at the cost of commercial control
- What delivers lasting value is an ongoing cost governance process, not a one-off assessment - and we can implement that using free, native tools with no additional dependency

Speak in the morning if you get time

Regards,
Scott
