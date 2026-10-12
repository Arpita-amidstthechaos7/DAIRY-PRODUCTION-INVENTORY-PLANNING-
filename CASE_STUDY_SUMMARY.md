# Case Study Summary: Dairy Production, Inventory & Dispatch Planning

## Executive question
How can daily production planning balance product availability, capacity, inventory and potential expiry risk across a mixed dairy portfolio?

## Method
This learning exercise uses 420 synthetic SKU-day records over 84 days for toned milk, full cream milk, curd, lassi and paneer. It compares a baseline rule (plan 97% of forecast demand) with an inventory-aware rule (plan forecast demand plus a small target closing-stock buffer minus opening stock, subject to an assumed capacity cap). The model then calculates available stock, dispatch, stockouts, closing stock, estimated write-offs and utilisation.

## Modelled results

| KPI | Baseline | Inventory-aware scenario |
|---|---:|---:|
| Fill rate | 96.3% | 99.5% |
| Stockout units | 11,774 | 1,486 |
| Estimated write-off units | 1,264 | 1,040 |
| Average capacity utilisation | 72.6% | 75.4% |

The modelled scenario has a 3.2 percentage-point higher fill rate and 87.4% fewer stockout units. Estimated write-offs are 17.7% lower in aggregate under these assumptions. **These are synthetic scenario outputs—not measured savings, not a forecast, and not results from Sudha Dairy or any other company.**

## What the results suggest investigating

1. Stockouts are concentrated in the higher-volume milk categories. A production planner should look at forecast error, daily capacity, order timing, execution variation and dispatch cut-offs for these products.
2. Product-level outcomes matter. The scenario increases the write-off estimate for some smaller categories (such as curd, lassi and paneer) even while aggregate write-offs decrease. That flags a possible issue with applying the wrong inventory buffer to different shelf-life categories.
3. Capacity is a constraint, not merely a KPI. A target-stock plan can be infeasible when the requested quantity exceeds assumed daily capacity.
4. A real expiry model needs batch-level manufacture and expiry dates, FEFO dispatch logic, returns, waste logs and storage conditions. The current workbook approximates write-offs by applying a rate to leftover inventory each day.

## Recommendation to test (not implement directly)
Pilot differentiated stock buffers by product and shelf life, starting with high-volume products where stockout exposure is highest. Compare service level with estimated/observed waste, inventory cover and capacity utilisation. Validate the cause of each major variance with production, quality, warehouse and dispatch records before changing planning rules.

## Limitations

- All inputs and outputs are synthetic and use assumed quantities, capacity, forecast noise, execution variation and write-off percentages.
- No actual company, customer, product formulation, quality or confidential plant records were used.
- The inventory/write-off mechanics are simplified and should not be treated as an operations research optimizer.
- No causal claim is supported by the simulation; operational root causes require real data and team validation.
