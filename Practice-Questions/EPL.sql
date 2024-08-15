-- Problem Description
-- Suppose you have the following table:

-- Table - EPL

-- position	team	goals	points
-- 1	United	        90	80
-- 2	City	        80	78
-- 3	Chelsea	        45	68
-- 4	Arsenal	        53	67
-- 5	Liverpool	    54	66 
-- 6	Spurs	        50	50
-- Task: Retrieve the bottom three teams in the league along with
-- their goals and points in descending order of their positions.

-- Expected Output

-- team	        goals	points
-- Spurs	    50	    50
-- Liverpool	54	    66
-- Arsenal	    53	    67


SELECT team, goals, points
FROM EPL
ORDER BY points ASC
LIMIT 3