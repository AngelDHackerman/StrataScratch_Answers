SELECT 
    activity_date,
    pe_description
FROM
    los_angeles_restaurant_health_inspections
WHERE 
    LOWER(facility_name) = 'street churros'
AND 
    score < 95;