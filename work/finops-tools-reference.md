# FinOps Tools Reference

## Native Cloud Tools (Free, built-in)

### AWS
- **Cost Explorer** — spending patterns over 13 months, forecasting
- **AWS Budgets** — spending limits and alerts
- **Cost Optimization Hub** — consolidates recommendations from Compute Optimizer, Trusted Advisor etc into one dashboard
- **Compute Optimizer** — right-sizing recommendations for EC2, Auto Scaling, EBS
- **Trusted Advisor** — broad best-practice checks including cost

### Azure
- **Azure Advisor** — best practice recommendations including cost
- **Well-Architected Review** — architecture assessment tool

### Snowflake
- **Account Usage views** — credit consumption, warehouse utilisation, query history, storage metrics (all in the SNOWFLAKE database)
- **Resource Monitors** — budget alerts and auto-suspend at credit thresholds

## Open Source Tools (Free)

- **[OpenCost](https://opencost.io/)** — CNCF incubating project. Vendor-neutral, real-time cost monitoring and allocation for Kubernetes/cloud-native. Maps costs to teams, products, environments.
- **[OptScale](https://github.com/hystax/optscale)** — Full FinOps platform. Supports AWS, Azure, GCP, Alibaba, Kubernetes. Self-hosted. Closest to a complete free framework.
- **[Infracost](https://www.infracost.io/)** — Cost estimates for Infrastructure-as-Code changes before deployment. Integrates with Terraform/Pulumi/OpenTofu. Free tier available.
- **[Cloud Custodian](https://cloudcustodian.io/)** — Policy-as-code for governance and cost control. Automates enforcement (e.g. shut down untagged resources, flag oversized instances). Supports AWS, Azure, GCP.
- **[Kubecost](https://www.kubecost.com/)** — Kubernetes cost monitoring. Built on OpenCost. Free tier for single cluster.

## Framework

The FinOps Foundation (finops.org) framework — Inform, Optimise, Operate — is the industry standard. All educational content is free.

### Practical cadence
- **Daily/Weekly:** Automated alerts for anomalies and budget thresholds
- **Monthly:** Structured cost review — trends, right-sizing actions, unused resources
- **Quarterly:** Deeper audit — reserved instance/savings plan coverage, architecture changes, roadmap alignment
