-- Consider the following table:

-- Table - Employees

-- emp_id	name	    department	salary
-- 1	    Bryant	    Sales	    90000
-- 2	    Steph	    Content	    30000
-- 3	    Hakeem	    Development	40000
-- 4	    Shaquille	Sales	    20000
-- 5	    Michael 	Sales	    90000
-- Task: Retrieve the names of employees whose names start with S, belong to the
-- Content department and have a salary greater than 20000.

SELECT name 
FROM Employees
WHERE name LIKE 'S%'
AND department= 'Content'
AND salary > 20000