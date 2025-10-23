SELECT 
    department,
    COUNT(worker_id) AS workers_count
FROM 
    worker
WHERE joining_date >= '2014-04-01'
GROUP BY department 
ORDER BY workers_count DESC;