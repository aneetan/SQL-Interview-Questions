-- Consider the following table:

-- Table - Employees

-- emp_id	name	department	salary	experience
-- 1	    Dave	Accounting	3000	2
-- 2	    Rey	    HR	        4000	6
-- 3	    Dwayne	Design	    6000	8
-- 4	    John	Development	6000	7
-- Task: Retrieve the lowest paid employee in the table with more than 5 years of experience.

SELECT name
FROM Employees
WHERE experience > 5
ORDER BY salary
LIMIT 1