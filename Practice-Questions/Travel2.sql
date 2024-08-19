-- Consider the following table:

-- Table - Travel

-- source	    destination	distance
-- Mumbai	    Bangalore	500
-- Bangalore	Mumbai	    500
-- Delhi	    Mathura	    150
-- Mathura	    Delhi	    150
-- Nagpur	    Pune	    500
-- Pune	        Nagpur	    500
-- Task: Retrieve the unique sources and destinations from the table as unique_cities.

SELECT DISTINCT destination AS unique_cities
FROM Travel
UNION
SELECT DISTINCT source AS unique_cities
FROM Travel
