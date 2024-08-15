-- Consider the following two tables:

-- Table - Employees

-- emp_id	first_name	last_name
-- 1	        Jaden	Smith
-- 2	      Marshall	Mathers
-- 3	        Jermaine	Cole

-- Table - Salaries

-- emp_id	salary
-- 1	    4875
-- 2	    6000
-- 3	    3800
-- Task: Retrieve the employee ID, first name, last name, and a column called salary_category which should display:

-- High for salaries greater than or equal to 5000.
-- Medium for salaries between 4000 and 4999.
-- Low for salaries below 4000.
-- Expected Output

-- emp_id	first_name	last_name	salary_category
-- 1	    Jaden	    Smith	    Medium
-- 2	    Marshall	Mathers	    High
-- 3	    Jermaine	Cole	    Low

SELECT Employees.emp_id, Employees.first_name, Employees.last_name,
(CASE 
    WHEN Salaries.salary >= 5000 THEN 'High'
    WHEN Salaries.salary BETWEEN 4000 and 4999 THEN 'Medium'
    ELSE 'Low'
END) as salary_category
FROM Employees
INNER JOIN Salaries ON Employees.emp_id = Salaries.emp_id
GROUP BY Employees.emp_id, Employees.first_name, Employees.last_name