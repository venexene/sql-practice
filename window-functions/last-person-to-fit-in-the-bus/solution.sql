SELECT person_name FROM (
    SELECT *, SUM(weight) OVER(ORDER BY turn) AS sum_weight
    FROM Queue
)
WHERE sum_weight <= 1000
ORDER BY turn DESC
LIMIT 1;