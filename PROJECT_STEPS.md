# Project Walkthrough: From Workbook to CV-Ready Portfolio

## Phase 1 — Define the business question

1. Open `Dairy_Operations_Planning_Dashboard.xlsx` and read **Start Here**.
2. Write a one-paragraph problem statement: daily demand differs from forecast; the plant must balance service, capacity, inventory and short shelf life.
3. State the scope and limitations. The supplied dataset is synthetic, not Sudha Dairy's actual operating data.

## Phase 2 — Validate and explore the data in Excel

4. Open **SKU-Day Data**. Confirm there are 420 product-day records, five product categories and dates covering 84 days.
5. Check blanks, duplicate `Date + Product` pairs, negative quantities, out-of-range percentages and rows where demand or capacity is zero. Document any issue and its resolution.
6. Use Excel Tables, filters and PivotTables (or equivalent `SUMIFS` formulas) to summarize demand, stockouts, dispatched units and forecast error by product and weekday.
7. Add a `Forecast Variance` column: `Actual Demand - Forecast Demand`.
8. Add a `Production Plan Variance` column: `Actual Production - Planned Production`.
9. Sort absolute forecast variance from largest to smallest and use a Pareto chart to show which products/days contribute most to the total mismatch.

## Phase 3 — Investigate root causes

10. Choose at least two specific high-variance examples from the data. For each, document: observation → possible driver → evidence needed → test → operational action.
11. Avoid calling correlation a root cause. The synthetic file has forecast noise and assumed execution variation, so you can only identify modeled drivers. In a real plant, you would validate them with planning logs, dispatch records, capacity constraints, maintenance events and quality holds.
12. Compare short shelf-life and longer shelf-life products. Explain why a single inventory buffer could create different service/waste trade-offs across those groups.

## Phase 4 — Build the dashboard

13. On a separate Excel dashboard, create KPI cards for total demand, fill rate, stockout units, forecast MAPE, estimated write-offs and capacity utilization.
14. Add charts for (a) forecast vs actual demand by product, (b) baseline vs scenario fill rate by product, and (c) stockouts by product or weekday.
15. Include a short assumptions box. Make clear that write-offs are estimated and that the scenario is not validated against real operations.

## Phase 5 — Write a one-page recommendation

16. Structure the note as: **Business problem → Data and method → Findings → Recommendation → Risks/limitations → Next step**.
17. Recommend a pilot rather than an immediate rollout. For example, test differentiated buffers for selected products, monitor service and expiry, then adjust based on results.
18. State metrics that should be monitored during a real pilot: fill rate, forecast error, stockout units, waste/expiry, plan adherence, inventory days and cold-storage capacity.

## Phase 6 — Publish a professional portfolio

19. Clean the workbook: meaningful sheet names, frozen headers, consistent units, readable labels, no broken formulas and clear synthetic-data caveat.
20. Create a GitHub repository named `dairy-production-inventory-planning`.
21. Upload the workbook, CSV, README, SQL practice file and a dashboard screenshot. Do not upload real or confidential Sudha Dairy documents.
22. In GitHub's README, include the business question, tools, dataset scope, KPI definitions, scenario logic, 2–3 findings, recommendation, limitations and a screenshot.
23. Test the repository URL in a private/incognito browser window. Add that public repository link to your CV only after the files and analysis are complete.

## What to say in an interview

- Why did you choose this problem? It connects production, inventory, service levels, shelf life and dispatch—operational decisions that must be balanced rather than optimized in isolation.
- Why synthetic data? Actual company records are confidential and were not used. The synthetic data let you demonstrate a reproducible method without misrepresenting company performance.
- What is the key limitation? The write-off method is a simplified assumption. Actual expiry modelling needs batch-level dates, FEFO dispatch, returns and observed waste.
- What would you do next? Validate with real historical demand and dispatch data, segment by product and weekday, test safety-stock rules, and monitor service-vs-waste trade-offs in a controlled pilot.

## CV wording

### Use only after you complete and verify the analysis

**Dairy Production, Inventory & Dispatch Planning Case Study | Excel, KPI Analysis**
- Analyzed 420 synthetic product-day records across five dairy categories to compare forecast demand, production, dispatch, stockouts and estimated write-offs.
- Built an Excel KPI dashboard to compare baseline production planning with an inventory-aware scenario; documented service-level, inventory and model limitations.
- Used product-wise variance analysis to identify planning exceptions and develop recommendations for differentiated stock buffers and follow-up validation.

### If you're still working on the project

**Dairy Production, Inventory & Dispatch Planning Case Study | In Progress**
- Building an Excel-based analysis of synthetic dairy operations data to track forecast accuracy, fill rate, stockouts and inventory trade-offs.
- Developing product-level summaries and scenario comparisons to practice root-cause analysis and operational recommendations.

Do not claim real-world cost savings, reduced waste or improved service at Sudha Dairy. Quantify outcomes only from your clearly defined synthetic scenario or from real data you are authorized to use, and label the difference plainly.
