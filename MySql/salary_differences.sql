SELECT
  (
    (SELECT MAX(salary) FROM db_employee WHERE department_id = 4)
    -
    (SELECT MAX(salary) FROM db_employee WHERE department_id = 1)
  ) AS salary_difference;


-- Other answer

SELECT 
  (SELECT MAX(salary) 
   FROM db_employee 
   WHERE department_id = 1) AS max_engineering_salary,
  
  (SELECT MAX(salary) 
   FROM db_employee 
   WHERE department_id = 4) AS max_marketing_salary,
  
  (
    (SELECT MAX(salary) FROM db_employee WHERE department_id = 4)
    -
    (SELECT MAX(salary) FROM db_employee WHERE department_id = 1)
  ) AS salary_difference;