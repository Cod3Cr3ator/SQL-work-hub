 --  STORE PROCEDURE
 -- it is used to store a query so that you can call it later for execution just with single command
 
 CREATE PROCEDURE big_salaries()
SELECT *
FROM employee_salary
WHERE salary >= 50000;

CALL big_salaries;