SELECT 
    COUNT(DISTINCT user_id) AS distintict_users,
    client_id, 
    MONTH(time_id) AS month
FROM 
    fact_events
GROUP BY 
    client_id,
    MONTH(time_id)
ORDER BY 
    client_id;