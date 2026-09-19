SELECT visited_on, amount, ROUND(average_amount, 2) AS average_amount
FROM (
    SELECT visited_on, 
        AVG(amount) 
        OVER(
            ORDER BY visited_on
            ROWS BETWEEN 6 PRECEDING AND CURRENT ROW
        ) AS average_amount,
        SUM(amount) 
        OVER(
            ORDER BY visited_on
            ROWS BETWEEN 6 PRECEDING AND CURRENT ROW
        ) AS amount,
        COUNT(*)
        OVER(
            ORDER BY visited_on
            ROWS BETWEEN 6 PRECEDING AND CURRENT ROW
        ) AS window_size
    FROM 
        (SELECT visited_on, SUM(amount) as amount
        FROM Customer
        GROUP BY visited_on)
)
WHERE window_size = 7
ORDER BY visited_on;