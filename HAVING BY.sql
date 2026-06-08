-- HAVING BY it filters after the aggragaton has been done 
-- WHERE cant filttre the agregated value 

SELECT occupation, count(occupation)
FROM employee_salary
GROUP BY occupationb 
HAVING count(occupation) =1;