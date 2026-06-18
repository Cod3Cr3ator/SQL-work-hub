-- A CTE (Common Table Expression) is a temporary named result set
-- that you can use within a query to make it cleaner and easier to read.
--  it is same a giving a SubQuery a name to call it later 

WITH example_1 AS (
	SELECT employee_id, first_name
    FROM employee_demographics
    WHERE gender = 'male'
),
example_2  AS (
	SELECT employee_id, salary
    FROM employee_salary
    WHERE salary > 50000
)

SELECT ex1.employee_id, ex1.first_name, ex2.salary
FROM example_1 AS ex1
JOIN example_2 AS ex2
	ON ex1.employee_id = ex2.employee_id;