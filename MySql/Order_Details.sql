SELECT 
    o.order_date,
    o.order_details,
    o.total_order_cost,
    c.first_name
FROM customers c
JOIN orders o ON c.id = o.cust_id
WHERE 
    LOWER(c.first_name) = 'jill' 
        OR 
    LOWER(c.first_name) = 'eva'
ORDER BY c.id ASC;