-- Consider the following table:

-- Table - Employees

-- emp_id	name	    department	salary
-- 1	    Bryant	    Sales	    90000
-- 2	    Steph	    Content	    60000
-- 3	    Hakeem	    Development	40000
-- 4	    Shaquille	Sales	    20000
-- 5	    Michael 	Sales	    90000
-- Task: Retrieve the names of all employees who either
-- belong to the Sales department or have a salary greater than 50000, but not both.



SELECT name
FROM Employees
WHERE (department='Sales' AND salary <= 50000) OR
        (department!='Sales' AND salary > 50000)


-- Retrieve the names of all employees who belong to
-- the Sales department and have a salary greater than 50,000, ordered alphabetically by their names.

SELECT name
FROM Employees
WHERE department='Sales' AND salary>50000
ORDER BY name ASC