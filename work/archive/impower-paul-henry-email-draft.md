# Email to Paul Henry — Impower Estimation

**Subject:** Indexes Platform — Roadmap Estimation (Items 3.3–3.7)

---

Paul,

Please find attached the estimation for the roadmap items we discussed in the workshop.

Rather than estimating each item as a flat list, we went through the application module by module — looking at how we use each area of the platform day to day and where growth is starting to create pressure. The platform already lets us move significantly faster than if we were doing traditional data engineering every time or working from spreadsheets — that efficiency is exactly what it was designed for and it's working well. But at 1,600+ measures and 2,000+ index metrics, some of the manual quality checks and workarounds that were fine at smaller scale are starting to slow us down, and that's only going to increase as the platform grows.

So the estimate is structured around protecting and extending that efficiency. Tier 1 in particular is about keeping our speed of delivery as the volume of configuration grows — automated validation that catches issues before they reach the build pipeline, rather than us finding them downstream and spending time fixing them. It's an investment in keeping your ongoing costs under control, not a remediation of the original build.

The result is more detailed than a standard estimate — it's closer to a platform assessment with investment options. I'd suggest we go through it together rather than you trying to interpret it cold. There's a tiering structure, investment options, and a separate section on LG Reorganisation that I want to make sure lands properly.

On self-service: we explored this thoroughly as part of the exercise. The honest assessment is that the platform is — and will likely remain — a tool that requires technical configuration knowledge to operate effectively. That's not a limitation; it's the nature of what it does. The complexity lives in the data relationships, the transformation logic, and the source integrations, and that's where the value is. What the Tier 1 and 2 investments do is make sure we can continue to operate it efficiently and reliably as it scales — which is a better outcome for you than trying to simplify it to a point where non-technical users could operate it, which would require a fundamentally different product and a significant investment to get right, without a clear return.

Happy to discuss. Let me know when works for a walkthrough — I think 45 minutes would be about right.

Scott
