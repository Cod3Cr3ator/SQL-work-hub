SELECT first_name, age,
CASE
	WHEN age <= 35 THEN 'Young'
    WHEN age BETWEEN 30 and 50 THEN 'Middle Age'
    WHEN age >= 50 THEN 'OLd'
END AS 'Age Bracket'
FROM employee_demographics;

SELECT first_name,dept_id,  salary,
CASE
	WHEN salary < 50000 THEN salary * 1.05
    WHEN salary >= 50000 THEN salary * 1.07
END AS 'Bonused Salary'
FROM employee_salary;