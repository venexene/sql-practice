SELECT ROUND(COUNT(*) FILTER(WHERE a.event_date = ma.min_date + INTERVAL '1 day')::numeric / COUNT(DISTINCT a.player_id), 2) AS fraction
FROM
    (SELECT player_id, MIN(event_date) AS min_date
    FROM Activity
    GROUP BY player_id) AS ma
JOIN Activity a ON a.player_id = ma.player_id;