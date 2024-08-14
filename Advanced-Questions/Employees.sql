-- Consider the following table:

-- Table - Employees

-- emp_id	name	department	salary	type	    experience
-- 1	    Dave	Sales	    3000	Full-Time	2
-- 2	    Rey	    Sales	    6000	Full-Time	6
-- 3	    Dwayne	Sales	    6000	Freelance	8
-- 4	    John	Development	6000	Part-Time	7
-- 5	    Paul	Sales	    7000	Full-Time	6

-- Write an SQL query to retrieve the names of the top 3 highest-paid full-time employees in
-- the Sales department with a salary greater than $5,000 and
-- experience greater than or equal to 5 years. Order the result by their salary in descending order.


SELECT name
FROM (
    SELECT * 
    FROM Employees
    WHERE type = 'Full-Time' and department='Sales'
)
WHERE salary > 5000 and experience >= 5
ORDER BY salary DESC
LIMIT 3