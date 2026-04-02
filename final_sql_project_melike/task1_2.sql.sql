WITH all_data AS (
  SELECT ad_date, spend, value
  FROM public.facebook_ads_basic_daily

  UNION ALL

  SELECT ad_date, spend, value
  FROM public.google_ads_basic_daily
)

SELECT
  ad_date,
  SUM(spend) AS total_spend,
  SUM(value) AS total_value,
  ROUND((SUM(value) - SUM(spend)) / SUM(spend) * 100, 2) AS romi
FROM all_data
GROUP BY ad_date
HAVING SUM(spend) > 0
ORDER BY romi DESC
LIMIT 5;