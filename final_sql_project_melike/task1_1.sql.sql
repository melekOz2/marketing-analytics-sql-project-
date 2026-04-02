SELECT
  'facebook' AS platform,
  ROUND(AVG(spend), 2) AS avg_spend,
  ROUND(MAX(spend), 2) AS max_spend,
  ROUND(MIN(spend), 2) AS min_spend
FROM public.facebook_ads_basic_daily

UNION ALL

SELECT
  'google' AS platform,
  ROUND(AVG(spend), 2) AS avg_spend,
  ROUND(MAX(spend), 2) AS max_spend,
  ROUND(MIN(spend), 2) AS min_spend
FROM public.google_ads_basic_daily
GROUP BY platform;