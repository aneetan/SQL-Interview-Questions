-- Consider the following two tables:

-- Initial Table - Students

-- student_id	subject	    grade
-- 1	        English	    A+
-- 1	        Math	    C+
-- 1	        Science 	B
-- 2	        English	    B
-- 2	        Math	    C+
-- 2	        Science	    A+

-- Output Table - Grades

-- student_id	english	math	science 
-- 1	        A+	    C+	    B
-- 2	        B	    C+	    A+

-- Write an SQL query to pivot the Student table into the Grade table.
-- The new table should have the columns: student_id, english, math, and science.


SELECT student_id,
        MAX(
            CASE 
                WHEN subject = 'English' THEN grade ELSE 0 END
        ) AS english,
        MAX(
            CASE 
                WHEN subject = 'Math' THEN grade ELSE 0 END
        ) AS math,
        MAX(
            CASE 
                WHEN subject = 'Science' THEN grade ELSE 0 END
        ) AS science,


FROM Students

GROUP BY student_id
