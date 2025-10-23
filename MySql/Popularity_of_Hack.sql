SELECT 
    f_e.location,
    AVG(f_h_s.popularity) AS avg_popularity
FROM facebook_employees f_e
JOIN 
    facebook_hack_survey f_h_s 
ON f_e.id = f_h_s.employee_id
GROUP BY f_e.location;