-- Consider the following table:

-- Table - Activity

-- user_id	session_id	activity_date	activity_type
-- 1	    100	        2023-04-15	    Signup
-- 1	    101	        2023-04-16	    Login
-- 2	    102	        2023-04-15	    Login
-- 3	    103	        2023-04-16	    Add to Cart
-- 1	    104	        2023-04-17	    Add to Cart
-- 2	    105	        2023-04-16	    Login
-- 3	    106	        2023-04-16	    View Product
-- 1	    107	        2023-04-18	    Checkout

-- Write an SQL query to find the number of daily active users for a period of 4 days
-- (ending in 2023-04-18) using the alias daily_active_users.

-- Assumption: A user was active on a given day if they engaged in at least one activity on that day.



SELECT 
activity_date,
COUNT(DISTINCT user_id) AS daily_active_users
FROM Activity
WHERE activity_date BETWEEN '2023-04-15' AND '2023-04-18'
GROUP BY activity_date