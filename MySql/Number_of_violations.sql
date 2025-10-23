SELECT 
    COUNT(violation_id) AS violation_numbers,
    YEAR(inspection_date) AS inspection_year
FROM
    sf_restaurant_health_violations
WHERE 
    violation_id IS NOT Null 
AND 
    business_name = 'Roxanne Cafe'
GROUP BY YEAR(inspection_date)
ORDER BY inspection_year ASC;