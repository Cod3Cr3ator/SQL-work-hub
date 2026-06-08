-- LIMIT is help us to select the number of row you want on your table 
-- The below examp=le show us selecting only 3 oldest people 

SELECT * 
FROM parks_and_recreation.employee_demographics
ORDER BY age DESC
LIMIT 3;