-- UNION helps us to compine the row from same opr different tables 
-- On the example below we are using both denographics & salary table 
--  We are filtering the old and highly paid employees 

SELECT first_name, last_name, 'OLd_Man' AS label
FROM employee_demographics
WHERE age > 40 AND gender = 'male'
UNION
SELECT first_name, last_name, 'OLd_Woman' AS label
FROM employee_demographics
WHERE age > 40 AND gender = 'female'
UNION
SELECT first_name, last_name, 'Highly Paid' AS label
FROM employee_salary
WHERE salary > 70000
ORDER BY first_name, last_name;