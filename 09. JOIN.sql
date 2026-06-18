-- JOIN this helps us to join the tables 
-- combines tables side-by-side (columns)

SELECT sal.employee_id, dem.first_name, dem.last_name, sal.salary
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id;

-- Joining the outer join using RIGHT or LEFT
SELECT sal.employee_id, dem.first_name, dem.last_name, sal.salary
FROM employee_demographics AS dem
RIGHT JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id;
