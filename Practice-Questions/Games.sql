-- Consider the following table:

-- Table - Games

-- player_id	device_id	event_date	games_played
-- 1	        2	        2023-05-01	5
-- 1	        2	        2023-05-02	6
-- 2	        3	        2023-07-20	1
-- 3	        1	        2023-08-06	0
-- 3	        4	        2023-09-01	5
-- Task: Retrieve player_id and device_id of the player with the highest number of games played.

SELECT player_id, device_id
FROM Games
WHERE games_played =
(
    SELECT MAX(games_played)
    FROM Games
)
