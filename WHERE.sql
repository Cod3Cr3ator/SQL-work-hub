-- WHERE is used to give a condition to our query 

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE age>20 AND gender = 'Male';

-- When using the WHERE function we may need more function to define our condition 
--  AND, AND NOT, OR , LIKE
-- Using LIKE function again we have to parameters we use {% and _}
-- {%} indicates there are more other continous characters depending on where us use it
-- {_} this indicated just a single character will be there 

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE birth_date LIKE '198%';

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE birth_date LIKE '%07%';
