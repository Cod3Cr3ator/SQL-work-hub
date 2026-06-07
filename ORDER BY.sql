-- ORDER BY it sorts the results etheir in ascedding or descending order 

SELECT *
FROM employee_demographics;

SELECT first_name, age 
FROM employee_demographics
ORDER BY first_name ;

SELECT first_name, age 
FROM employee_demographics
ORDER BY first_name DESC;