-- Optional SQL practice queries for the synthetic dairy operations case study.
-- Suggested table: dairy_sku_day

-- 1) Forecast accuracy by product
SELECT Product, AVG(`Forecast Abs. % Error`) AS avg_abs_pct_error
FROM dairy_sku_day
GROUP BY Product
ORDER BY avg_abs_pct_error DESC;

-- 2) Service level and stockouts by product
SELECT Product, SUM(`Actual Demand (units)`) AS demand_units,
       SUM(`Baseline Dispatched`) AS baseline_dispatch,
       SUM(`Recommended Dispatched`) AS scenario_dispatch,
       SUM(`Baseline Stockout`) AS baseline_stockouts,
       SUM(`Recommended Stockout`) AS scenario_stockouts
FROM dairy_sku_day
GROUP BY Product
ORDER BY scenario_stockouts DESC;

-- 3) Demand variance by weekday/month can be created after adding derived date fields.
-- 4) Compare forecast vs actual units by product and date to find large variance pockets.
