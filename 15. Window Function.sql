-- window function is a function that performs a calculation...
-- across a set of rows that are related to the current row, 
-- without collapsing the result into a single row.
-- GROUP BY → reduces rows (summary only)
-- Window function → keeps all rows + adds extra calculated columns

SELECT  gender, AVG(salary)
FROM employee_demographics AS dem
JOIN employee_salary AS sal
	 ON dem.employee_id = sal.employee_id
GROUP BY gender;
-----------------------------------------
SELECT  gender, AVG(salary) OVER ()
FROM employee_demographics AS dem
JOIN employee_salary AS sal
	 ON dem.employee_id = sal.employee_id;
------------------------------------------
SELECT  dem.first_name, gender, AVG(salary) OVER ( PARTITION BY gender) 
FROM employee_demographics AS dem
JOIN employee_salary AS sal
	 ON dem.employee_id = sal.employee_id;

SELECT dem.first_name, dem.age, sal.salary,
ROW_NUMBER() OVER(ORDER BY age) AS RowNum
FROM employee_demographics AS dem 
JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id;
    
SELECT dem.employee_id, dem.first_name, dem.age, sal.salary,gender, salary,
ROW_NUMBER() OVER( PARTITION BY gender ORDER BY salary DESC) AS row_num,
RANK() OVER( PARTITION BY gender ORDER BY salary DESC) AS rank_num,
DENSE_RANK() OVER( PARTITION BY gender ORDER BY salary DESC) AS Drank_num,
AVG(salary) OVER (PARTITION BY gender ) AS avg_sal
FROM employee_demographics AS dem 
JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id;