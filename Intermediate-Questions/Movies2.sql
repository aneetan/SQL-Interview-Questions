-- Consider the following table:

-- Table - Movies

-- movie_id	title	    description	    rating
-- 1	    Avengers	    3D	        8
-- 2	    Harry Potter	Fiction	    8
-- 3	    The Irishman	Boring	    6
-- 4	    Eragon	        Fantasy	    8
-- 5	    Memento	        Interesting	9

-- Write an SQL query to fetch movies with odd-numbered movie_id that is not Boring.
-- Return the resulting table by rating in descending order.

SELECT title, rating
FROM Movies
WHERE movie_id % 2 <> 0 AND description <> 'Boring'
ORDER BY rating DESC