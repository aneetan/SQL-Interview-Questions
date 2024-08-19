-- Consider the following two tables:

-- Table - Employees

-- emp_id	first_name	last_name
-- 1	    Jaden	    Smith
-- 2	    Marshall	Mathers
-- 3	    Jermaine	Cole
-- Table - Salaries

-- emp_id	salary
-- 1	    4875
-- 2	    6000
-- 3	    3800
-- Task: Retrieve the records of employees with a salary greater than 5000.

SELECT emp.emp_id, emp.first_name, emp.last_name, s.salary
FROM Employees emp
INNER JOIN Salaries s ON emp.emp_id = s.emp_id
WHERE s.salary > 5000
