-- Consider the following table:

-- Table - Anime

-- id	title	                    rating	seasons
-- 1	Dragon Ball	                10	    20
-- 2	One Piece	                9	    23
-- 3	Death Note	                10	    1
-- 4	My Hero Academia	        7	    6
-- 5	Assassination Classroom	    6	    2
-- Write an SQL query to retrieve the titles of all
-- anime with seasons not equal to 20 and ratings higher than the average rating.

SELECT title 
FROM Anime
WHERE seasons <> 20 
AND rating > (SELECT AVG(rating) FROM Anime)