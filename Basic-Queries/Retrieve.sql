-- Consider the following table:

-- Table - EPL

-- position	    team	goals	points
-- 1	       United	    90	    80
-- 2	        City	    80	    78
-- 3	        Chelsea	    45	    68
-- 4	        Arsenal	    53	    67
-- 5	         Liverpool	54	    66
-- 6	          Spurs	    50	    50
-- Write an SQL Query to retrieve teams in the top 4 positions with more than 65 points and 50 goals.


SELECT team 
FROM EPL 
WHERE position<=4 AND points > 65 AND goals >50
LIMIT 4