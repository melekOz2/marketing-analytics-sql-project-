WITH all_campaigns AS (
    SELECT
        f.ad_date::date AS ad_date,
        c.campaign_name,
        COALESCE(f.value, 0) AS value
    FROM public.facebook_ads_basic_daily f
    LEFT JOIN public.facebook_campaign c
        ON f.campaign_id = c.campaign_id

    UNION ALL

    SELECT
        ad_date::date AS ad_date,
        campaign_name,
        COALESCE(value, 0) AS value
    FROM public.google_ads_basic_daily
    WHERE campaign_name IS NOT NULL
)

SELECT
    DATE_TRUNC('week', ad_date)::date AS week_start,
    campaign_name,
    SUM(value) AS total_value
FROM all_campaigns
WHERE campaign_name IS NOT NULL
GROUP BY DATE_TRUNC('week', ad_date)::date, campaign_name
ORDER BY total_value DESC
LIMIT 1;