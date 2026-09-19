SELECT ROUND(SUM(tiv_2016)::numeric, 2) as tiv_2016
FROM (
    SELECT
        tiv_2015,
        tiv_2016,
        COUNT(*) OVER (PARTITION BY lat, lon) AS cnt1,
        COUNT(*) OVER (PARTITION BY tiv_2015) AS cnt2
    FROM Insurance
)
WHERE cnt1 = 1 AND cnt2 != 1;