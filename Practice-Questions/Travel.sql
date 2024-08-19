-- Consider the following table:

-- Table - Travel

-- source	    destination	distance
-- Mumbai	    Bangalore	500
-- Bangalore	Mumbai	    500
-- Delhi	    Mathura	    150
-- Mathura	    Delhi	    150
-- Nagpur	    Pune	    500
-- Pune	        Nagpur	    500
-- Task: Retrieve the destination(s) you can reach from Delhi as from_delhi along with their distance.

SELECT destination AS from_delhi, distance
FROM Travel
WHERE source='Delhi'