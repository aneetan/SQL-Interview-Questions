-- Consider the following table:

-- Table - Shows

-- show_id	title	    episode_name	        air_date	ratings
-- 1	    FRIENDS	    The One with the Rumor	2023-05-1	7
-- 2	    GOT	        Baelor	                2023-05-08	8
-- 3	    HIMYM	    Slap Bet	            2023-05-11	9
-- 4	    GOT	        The Rains of Castamere	2023-05-14	10
-- Task: Retrieve the show(s) that did not air on the same date as GOT's Baelor episode.

SELECT title, episode_name
FROM Shows
WHERE air_date  !=
(
    SELECT air_date
    FROM Shows
    WHERE title = 'GOT' AND episode_name = 'Baelor'
)