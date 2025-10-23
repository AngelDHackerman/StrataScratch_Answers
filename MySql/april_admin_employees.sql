SELECT 
    COUNT(*) AS n_employees
FROM worker
WHERE 
    MONTH(joining_date) >= 4
AND 
    department = 'admin'
    