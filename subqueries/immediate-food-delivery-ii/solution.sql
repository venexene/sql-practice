SELECT 
    ROUND(COUNT(*) FILTER(WHERE(order_date = customer_pref_delivery_date))::numeric / COUNT(*) * 100, 2) AS immediate_percentage
FROM
    (SELECT customer_id, MIN(d1.order_date) AS first_order_date
    FROM Delivery d1
    GROUP BY customer_id) as fd
JOIN Delivery d ON fd.customer_id = d.customer_id AND d.order_date = fd.first_order_date;