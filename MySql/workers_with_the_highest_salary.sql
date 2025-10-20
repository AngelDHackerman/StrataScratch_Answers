-- Titles of highest-paid employees AMONG those with an official title
SELECT DISTINCT t.worker_title
FROM worker w
JOIN title  t
  ON w.worker_id = t.worker_ref_id
WHERE w.salary = (
  SELECT MAX(w2.salary)
  FROM worker w2
  JOIN title  t2
    ON t2.worker_ref_id = w2.worker_id
);


-- Using CTE
WITH titled_workers AS (
  SELECT a.worker_id, a.salary, b.worker_title
  FROM worker a
  JOIN title b ON a.worker_id = b.worker_ref_id
)
SELECT DISTINCT worker_title
FROM titled_workers
WHERE salary = (SELECT MAX(salary) FROM titled_workers);
