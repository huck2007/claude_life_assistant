# Email 3: Reply to Phil V — Response to FP FinDataOps Proposal Detail

**Subject:** RE: Follow-up from our conversation — Data & Cloud Ops Optimisation

Phil,

Thanks for the detail — really helpful and appreciated.

Happy to jump on a call to go through the access request together. Before we do, I want to be candid about a few things.

**On the Snowflake review**

The `IMPORTED PRIVILEGES on database SNOWFLAKE` grant gives access to the full account metadata — query history, warehouse utilisation patterns, user activity, storage metrics, credit consumption. That's not a narrow cost view — it's a complete operational picture of how the platform is being used and how efficiently it's being run.

My concern isn't transparency — it's relevance. Future Processing know nothing about the structure of the analytics database, the usage patterns, or the design decisions behind them. Without deep involvement in the data products we've built and the business context they serve, they are not qualified to assess this platform. What they will do is run metadata queries and make recommendations out of a best-practice playbook. I've seen this many times — the output reads well on paper but is naive in practice, because it lacks the context of why things are built the way they are.

For the record: when you visited us in Warrington in late summer, I walked you through specific optimisation recommendations — moving to dynamic tables in the ingestion layer, refactoring several models, and a series of query optimisations. These are detailed, involved, and require investment. I haven't pushed them because, frankly, the Snowflake spend levels are relatively small and the optimisation juice isn't worth the squeeze at this stage. You've been in consultation, and I've been keeping a respectful distance while focusing on the priorities you've set within the more limited scope of works.

Beyond that, Snowflake has powered significant progress in critical areas for Trustmark. Pending further enhancement — productionising the ML models (which we were making good progress on before Neil and John arrived) and utilisation of the Intelligent Document Processing capability (which will drive Snowflake costs up before it introduces its own optimisation opportunities) — the cost picture is about to change anyway. A static review now would miss all of that.

I fail to see how FP can do anything here other than borrow my watch to tell me the time, while placing themselves in the heart of a process and gaining credentials at our expense. That's particularly galling when I've been signposting these opportunities and take genuine pride in ensuring a balanced, honest approach with you.

**On AWS**

Phil, you specifically mentioned that the one thing of interest is FP's potential ability to get an appropriate AWS discount. So let me address that head on.

Here are the actual numbers across the three accounts we manage:

| Account | Current Monthly Spend | Available Saving | Saving % |
|---------|----------------------|------------------|----------|
| Dev     | $640                 | $248/mo          | 39%      |
| UAT     | $356                 | $134/mo          | 38%      |
| Prod    | $1,039               | $288/mo          | 28%      |
| **Total** | **$2,035**         | **$670/mo ($8,040/yr)** | |

These are standard AWS Savings Plans and Reserved Instances — available directly through the console, no intermediary required.

We haven't recommended actioning these to date, deliberately. Making commitments with AWS when the future direction of the platform isn't confirmed is not advisable — you're locking in spend against resources you may not need if the strategy changes. With the consultation and uncertainty around future direction, the responsible thing was to wait. That's what we've been doing. However, if the aim now is to get on and make savings, we should do it. We can action these within days of your go-ahead.

I don't have access to the Tech Influence AWS accounts, but I'd imagine their spend is higher than ours and may or may not have similar Savings Plan and Reserved Instance options available. Even so, I sincerely doubt the combined spend across both reaches anywhere near the $1M annual threshold where AWS's Enterprise Discount Programme becomes relevant. Which leaves you with an FP-brokered version of an EDP — and that hands control of the commercial relationship to Future Processing, not Trustmark. Not to mention the complexity it introduces going forward: every time we need to make infrastructure changes, FP would need to be involved in a way that has simply not been required previously. That's not simplification — it's an additional dependency layer on routine operations.

It's also worth remembering that at the very beginning of our relationship, I talked you through how the overall AWS account should be structured, including centralising billing in an admin account — that's our standard approach to setting up a multi-account AWS environment. If that's been done (and I believe it has), you already have the nascent setup for managing and controlling costs across all accounts without a third-party product sitting on top of it.

And setting aside AWS entirely — Snowflake billing is just too simple to warrant a FinOps product. It's credit-based, usage is visible in real time, and the levers are well understood. There's nothing to discover that isn't already in the console.

After the easy optimisations are actioned (the table above on our side, and whatever equivalents exist on TI's side), I'd estimate the remaining addressable savings add up to low thousands per annum at best. On our AWS accounts, deeper optimisations simply don't exist — the environments are lean. On the Tech Influence side, any meaningful further savings would likely require an in-depth architecture review, which is a different conversation entirely and not something that falls out of a free FinDataOps assessment.

The point is: the savings that matter are already identified and ready to go. I'd rather we actioned them now than wait for a review process that will, at best, recommend the same thing.

**On the broader exercise**

I want to be straightforward with you. I have observed, initiated, and been on the receiving end of processes like this many times over the years. I've always been confident in what we deliver, and they are seldom anything more than an exercise in distraction. They are far from fertile ground for collaboration — which is something we would have taken great pride in doing with you and Tech Influence directly, on our terms, with full context.

If there's value in a cost review, let us do it properly. We know the platforms, the workloads, the business context, and the roadmap. We've already made the recommendations. Let's action what's on the table and build a cost governance rhythm that's owned by the people who actually run the environments.

Call me when suits — happy to talk it through.

Best,
Scott
