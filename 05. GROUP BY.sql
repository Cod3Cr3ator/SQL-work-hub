-- GROUP BY groups the rows for agrregation functions like SUM(), COUNT(), AVG() directly

SELECT gender, AVG(age)
FROM parks_and_recreation.employee_demographics
GROUP BY gender;

SELECT * 
FROM parks_and_recreation.employee_salary;

SELECT occupation, AVG(salary), COUNT(occupation)
FROM parks_and_recreation.employee_salary
GROUP BY occupation;