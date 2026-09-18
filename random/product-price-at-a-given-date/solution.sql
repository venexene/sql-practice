SELECT DISTINCT p1.product_id, CASE WHEN p2.max_date IS NULL THEN 10 ELSE p1.new_price END AS price
FROM Products p1
JOIN ( 
    SELECT DISTINCT pd.product_id, pm.max_date
    FROM Products pd
    LEFT JOIN (
        SELECT product_id, MAX(change_date) AS max_date
        FROM Products
        WHERE change_date <= '2019-08-16'::date
        GROUP BY product_id
    ) pm ON pd.product_id = pm.product_id
) p2 ON p1.product_id = p2.product_id AND (p1.change_date = p2.max_date OR p2.max_date IS NULL); 