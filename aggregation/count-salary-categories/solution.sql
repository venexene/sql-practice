SELECT c.category, COUNT(account_id) AS accounts_count
FROM (
    VALUES
        ('Low Salary'),
        ('Average Salary'),
        ('High Salary')
) AS c(category)
LEFT JOIN (
SELECT *, CASE
            WHEN income < 20000 THEN 'Low Salary'
            WHEN income > 50000 THEN 'High Salary'
            ELSE 'Average Salary'
          END AS category
FROM Accounts
) AS a 
ON c.category = a.category
GROUP BY c.category;