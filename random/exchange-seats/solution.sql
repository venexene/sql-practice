SELECT
    id,
    COALESCE(
        CASE 
            WHEN id % 2 = 0 THEN LAG(student) OVER(ORDER BY id)
            ELSE LEAD(student) OVER(ORDER BY id)
        END
    ,student) AS student
FROM Seat
ORDER BY id;