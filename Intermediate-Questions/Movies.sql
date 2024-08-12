-- Consider the following table

-- Table - Movies

-- id	title	            duration
-- 1	Pulp Fiction	    193
-- 2	Good Will Hunting	126
-- 3	Forrest Gump	    144

-- Find the titles of all movies that have a duration greater
-- than the average duration of all movies in the table.

SELECT title
FROM Movies
WHERE duration > (SELECT AVG(duration) FROM Movies)