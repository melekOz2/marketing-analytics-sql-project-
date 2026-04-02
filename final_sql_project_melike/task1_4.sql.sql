WITH all_campaigns AS (
  SELECT
    f.ad_date,
    c.campaign_name,
    f.reach
  FROM public.facebook_ads_basic_daily f
  LEFT JOIN public.facebook_campaign c
    ON f.campaign_id = c.campaign_id

  UNION ALL

  SELECT
    ad_date,
    campaign_name,
    reach
  FROM public.google_ads_basic_daily
),

monthly_data AS (
  SELECT
    DATE_TRUNC('month', ad_date)::date AS month_start,
    campaign_name,
    SUM(reach) AS total_reach
  FROM all_campaigns
  GROUP BY month_start, campaign_name
),

final_table AS (
  SELECT
    month_start,
    campaign_name,
    total_reach,
    LAG(total_reach) OVER (PARTITION BY campaign_name ORDER BY month_start) AS prev_reach
  FROM monthly_data
)

SELECT
  month_start,
  campaign_name,
  total_reach,
  prev_reach,
  total_reach - prev_reach AS reach_growth
FROM final_table
WHERE prev_reach IS NOT NULL
ORDER BY reach_growth DESC
LIMIT 1;