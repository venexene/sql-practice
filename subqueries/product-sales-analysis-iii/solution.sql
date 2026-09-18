SELECT s.product_id, ms.first_year, s.quantity, s.price
FROM
    (SELECT product_id, MIN(year) as first_year
    FROM Sales
    GROUP BY product_id) ms
JOIN Sales s ON ms.product_id = s.product_id AND ms.first_year = s.year;