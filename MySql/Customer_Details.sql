SELECT 
    c.first_name,
    c.last_name,
    c.city,
    o.order_details
FROM customers c 
LEFT JOIN orders o ON c.id = o.cust_id
ORDER BY c.first_name AND o.order_details ASC;