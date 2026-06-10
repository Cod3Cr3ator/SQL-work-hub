-- Sttring Function This helps us to do some opperation on our strings on the tables
-- LOWER(), UPPER(), LENGTH(), TRIM(),RTRIM(),LTRIM()

-- Checking the length of the names
SELECT first_name, LENGTH(first_name)
FROM employee_demographics
ORDER BY length(first_name);

-- Making all the letters capital
SELECT first_name, UPPER(first_name)
FROM employee_demographics;

-- Making all the cases small letters
SELECT first_name, LOWER(first_name)
FROM employee_demographics;