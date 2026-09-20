SELECT sell_date, COUNT(DISTINCT product) as num_sold, STRING_AGG(DISTINCT product, ',') AS products
FROM Activities
GROUP BY sell_date
ORDER BY sell_date;