-- DISTINCT is used where you whant to remove duplicate values 
--  for example you just want a list of all the contries customer are from without repetation
--  for example if you want to find all unique job title 

SELECT gender
FROM  parks_and_recreation.employee_demographics;

SELECT DISTINCT gender
FROM parks_and_recreation.employee_demographics;