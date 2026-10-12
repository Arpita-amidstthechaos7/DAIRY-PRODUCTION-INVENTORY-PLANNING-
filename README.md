# Dairy Production, Inventory & Dispatch Planning — Operations Case Study

**Portfolio project for operations / supply-chain / integrated-operations internships**  
**Tools:** Microsoft Excel, KPI analysis, basic scenario modelling (optional SQL practice included)  
**Data:** Synthetic learning dataset — **not actual Sudha Dairy data**

## 1. Business problem

A dairy operation must match daily demand with production capacity while maintaining availability, avoiding unnecessary inventory, protecting short shelf-life products, and coordinating production, quality, storage and dispatch. This case study compares a simple baseline production rule with an inventory-aware planning rule.

The business question is:

> How could a production planner balance demand, finished-goods inventory, stockout risk and estimated write-offs across multiple dairy product categories?

The project is inspired by the kinds of operations and supply-chain handoffs a trainee may observe in a dairy plant. All quantities, forecasts, execution factors, stock positions, capacities and modeled results in this project are synthetic assumptions and must not be attributed to Sudha Dairy or any other real business.

## 2. What's included

- `Dairy_Operations_Planning_Dashboard.xlsx` — formatted workbook with instructions, 420 SKU-day records, formulas, KPI summaries and a fill-rate comparison chart.
- `data/synthetic_dairy_sku_day_data.csv` — portable dataset for Excel or optional SQL practice.
- `sql/optional_sql_queries.sql` — sample aggregation queries; adjust the quoted column names to your database dialect after importing the CSV.
- `build_case_study.py` — reproducible synthetic data and workbook builder. It requires the `artifact_tool` package used to build the workbook.
- `synthetic_scenario_metrics.json` — scenario metrics generated from the synthetic simulation.
- `PROJECT_STEPS.md` — hands-on workflow to analyze, validate, present and publish the project.

## 3. Dataset design

The dataset covers 84 days across five product categories, for 420 product-day records:

- Toned milk
- Full cream milk
- Curd
- Lassi
- Paneer

It includes forecast and actual demand, assumed daily capacity, production-execution factors, opening inventory, dispatch, stockouts, estimated write-offs and baseline-versus-recommended scenario results. The workbook contains formula-driven calculations so you can inspect and edit the logic.

## 4. Scenarios compared

### Baseline

- Production plan = 97% of forecast demand.
- Actual production = planned production × a synthetic execution factor, capped by assumed daily capacity.
- Available stock = opening stock + actual production.
- Dispatch = the lower of demand and available stock.
- Stockout = demand not fulfilled from available stock.

### Inventory-aware planning scenario

- Target closing stock is a small product-specific buffer based on forecast demand.
- Planned production = forecast demand + target closing stock − opening stock, capped by assumed capacity and floored at zero.
- Actual production uses a synthetic execution factor and is capped at capacity.
- Dispatch, stockout and closing inventory are calculated the same way as in the baseline.

**Model limitation:** The write-off calculation applies an assumed percentage to unsold stock each day. It is an illustrative proxy, not a true expiry / FEFO / batch-ageing model. A genuine dairy inventory model would require lot-level production dates, expiry dates, dispatch sequencing, returns and actual waste records.

## 5. KPI definitions

- **Forecast absolute percentage error:** `ABS(Actual Demand - Forecast Demand) / Actual Demand`.
- **MAPE:** average of the record-level absolute percentage errors. (This simple version does not weight products by volume.)
- **Fill rate:** total dispatched units divided by total demand units.
- **Stockout units:** total demand that could not be fulfilled from available stock.
- **Estimated write-off units:** assumption-driven estimate; not observed waste.
- **Capacity utilisation:** actual production divided by assumed daily capacity.
- **Production-plan adherence:** an optional extension: `Actual Production / Planned Production` (interpret carefully when the planned quantity is zero).

## 6. Illustrative results — not operational claims

The generated synthetic scenario produces the following comparisons. These results describe only the assumptions and random values in this learning model; they are not forecasts of a real company's performance.

- Synthetic product-day records: **420**
- Forecast MAPE: **9.8%**
- Baseline fill rate: **96.3%**
- Inventory-aware scenario fill rate: **99.5%**
- Baseline stockouts: **11,774 units**
- Scenario stockouts: **1,486 units**
- Modelled stockout change: **87.4% reduction**
- Estimated write-offs: **1,264 baseline vs. 1,040 scenario units**

Do not present those percentages as proven savings. The scenario is simplified, the write-off logic is assumed, and a higher service level may also require additional inventory, cold-storage capacity or working capital. A credible recommendation must discuss trade-offs as well as benefits.

## 7. Possible operational recommendations to test

1. Review products and weekdays with the largest forecast error rather than applying the same buffer to every product.
2. Use separate safety-stock targets for short shelf-life products (milk) and longer shelf-life products (curd/lassi/paneer), and justify each target with service-level and waste trade-offs.
3. Investigate recurring stockout products and compare actual demand with planned output, capacity constraints and dispatch timing.
4. Add batch-ageing and FEFO dispatch logic before drawing conclusions about expiry waste.
5. Review the model with production, quality, warehouse and dispatch teams before any process change.

## 8. Integrity and privacy

No company records, customer data or confidential plant information are included. Keep it that way. If you later use real internship notes, only include information that you are permitted to disclose, and aggregate or anonymize it. Do not upload internal forms, product formulas, batch details, quality records or commercially sensitive data to a public repository.
