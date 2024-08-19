-- Consider the following table:

-- Table - Movies

-- movie_id	title	        description	rating
-- 1	    Avengers	    3D	            8
-- 2	    Harry Potter	Fiction	        8
-- 3	    Irishman	    Boring	        6
-- 4	    Eragon	        Fantasy	        8
-- 5	    Memento	        Interesting	    9
-- Task: Fetch movies with even-numbered movie_id with the description Fantasy.

SELECT title, rating
FROM Movies
WHERE (movie_id % 2) == 0
AND description = 'Fantasy'