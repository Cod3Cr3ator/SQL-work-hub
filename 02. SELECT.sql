-- SELECT  is used to select the desired column--
-- Then we use FROM to select the table ---
-- selecting all columns we use *
SELECT *
FROM parks_and_recreation.employee_demographics;

--  We can also select spefict columns from a table --
SELECT employee_id,
	first_name,
    age,
    gender
FROM parks_and_recreation.employee_demographics;