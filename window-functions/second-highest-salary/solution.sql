SELECT e.salary AS SecondHighestSalary
FROM (
    VALUES (
        (2)
    )
) AS t(rank)
LEFT JOIN (
    SELECT salary, DENSE_RANK() OVER(ORDER BY salary DESC) as rank
    FROM Employee
) AS e
ON t.rank = e.rank
LIMIT 1;
