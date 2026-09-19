SELECT Department, Employee, Salary
FROM (
    SELECT d.name as Department, e.name as Employee, e.salary as Salary, DENSE_RANK() OVER(PARTITION BY e.departmentId ORDER BY e.salary DESC) as rank
    FROM Department d
    JOIN Employee e
    ON d.id = e.departmentId
)
WHERE rank <= 3;