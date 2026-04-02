WITH all_data AS (
  SELECT
    f.ad_date,
    a.adset_name
  FROM public.facebook_ads_basic_daily f
  LEFT JOIN public.facebook_adset a
    ON f.adset_id = a.adset_id
  WHERE f.impressions > 0

  UNION ALL

  SELECT
    ad_date,
    adset_name
  FROM public.google_ads_basic_daily
  WHERE impressions > 0
),

numbered AS (
  SELECT
    adset_name,
    ad_date,
    ad_date - INTERVAL '1 day' * ROW_NUMBER() OVER (PARTITION BY adset_name ORDER BY ad_date) AS grp
  FROM all_data
)

SELECT
  adset_name,
  MIN(ad_date) AS start_date,
  MAX(ad_date) AS end_date,
  COUNT(*) AS streak_days
FROM numbered
GROUP BY adset_name, grp
ORDER BY streak_days DESC
LIMIT 1;