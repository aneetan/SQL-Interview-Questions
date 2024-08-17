-- Consider the following table:

-- Table - Games

-- player_id	device_id	event_date	games_played
-- 1	            2	    2023-05-01	5
-- 1	            2	    2023-05-02	6
-- 2	            3	    2023-07-20	1
-- 3	            1	    2023-08-06	0
-- 3	            4	    2023-09-01	5
-- Write an SQL query to retrieve the fraction of players that logged in again
-- on the day after they first logged in, rounded to 2 decimal places.

-- Hint: You need to count the number of players logged in for at
-- least two consecutive days starting from their first login date, then divide that
-- number by the total number of players.

WITH first_login AS (
    -- Step 1: Identify the first login date for each player
    SELECT
        player_id, 
        MIN(event_date) AS first_login_date
    FROM 
        Games
    GROUP BY 
        player_id
),
consecutive_logins AS (
    -- Step 2: Check if the player logged in on the day after their first login
    SELECT 
        fl.player_id
    FROM 
        first_login fl
    JOIN 
        Games g 
    ON 
        fl.player_id = g.player_id
        AND DATE(g.event_date) = DATE(fl.first_login_date, '+1 day')
    GROUP BY 
        fl.player_id
),
total_players AS (
    -- Step 3: Calculate the total number of distinct players
    SELECT 
        COUNT(DISTINCT player_id) AS total_players
    FROM 
        Games
)
-- Step 4: Calculate the login fraction
SELECT
    ROUND(
        (SELECT COUNT(*) FROM consecutive_logins) * 1.0 / tp.total_players, 
        2
    ) AS login_fraction
FROM 
    total_players tp;
