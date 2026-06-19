-- TRIGERS & EVENTS
--  Trigger is a block of code that is used to update a table when a certain change is done 

SELECT *
FROM employee_demographics;

SELECT *
FROM employee_salary;

-- STEP 1: Creating the trigger
DELIMITER &&
CREATE TRIGGER employee_insert
	AFTER INSERT ON employee_salary
	FOR EACH ROW
BEGIN
	INSERT INTO employee_demographics(employee_id, first_name, last_name)
    VALUES(NEW.employee_id, NEW.first_name, NEW.last_name);
END &&
DELIMITER ;

-- STEP 2: Inserting a values on employee_salary and the trigger updates it on employee_demographics
INSERT INTO employee_salary (employee_id, first_name, last_name, occupation, salary, dept_id)
VALUES (13, 'Johnson', 'Markdean', 'Entertainment CEO', 1000000, NULL) 