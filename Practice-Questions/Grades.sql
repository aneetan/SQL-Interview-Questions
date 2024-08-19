-- Consider the following table

-- Input Table - Grades

-- student_id	English	Math	Science 
-- 1	        A+	    C+	    B
-- 2	        B	    C+	    A
-- Task: Pivot the above table to the following format:

-- Expected Output

-- Output Table - Students

-- student_id	subject	    grade
-- 1	        English	    A+
-- 1	        Math	    C+
-- 1	        Science	    B
-- 2	        English	    B
-- 2	        Math	    C+
-- 2	        Science	    A


SELECT student_id, 'English' as subject, English as grade
FROM Grades
UNION ALL
SELECT student_id, 'Math' as subject, Math as grade
FROM Grades
UNION All
SELECT student_id, 'Science' as subject, Science as grade
FROM Grades
ORDER BY student_id, subject;
