-- Consider the following table:

-- Table - Travel

-- source	    destination	distance
-- Mumbai	    Bangalore	500
-- Bangalore	Mumbai	    500
-- Delhi	    Mathura	    150
-- Mathura	    Delhi	    150
-- Nagpur	    Pune	    500
-- Pune	        Nagpur	    500

-- Write an SQL query to delete duplicate rows from the above table if the distance from source to destination is
-- the same as the distance from destination to source. Display the resulting table (after deletion).

DELETE FROM Travel
WHERE ROWID NOT IN (
    SELECT MIN(ROWID)
    FROM Travel
    GROUP BY 
        CASE
            WHEN source < destination THEN source || destination
            ELSE destination || source
        END,
        distance 
);


SELECT * FROM Travel


