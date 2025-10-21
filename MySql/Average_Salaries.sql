SELECT 
    department, 
    first_name,
    salary,
-- windown function
    AVG(salary) OVER (PARTITION BY department) AS avg_salary_department
FROM 
    employee;