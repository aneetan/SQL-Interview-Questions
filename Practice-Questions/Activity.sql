-- Consider the following table:

-- Table - Activity

-- user_id	session_id	activity_date	activity_type
-- 1	    100	        2023-04-15	    Signup
-- 1	    101	        2023-04-16	    Login
-- 2	    102	        2023-04-15	    Login
-- 3	    103	        2023-04-16	    Add to Cart
-- 1	    104	        2023-04-17	    Add to Cart
-- 2	    105	        2023-04-16	    Login
-- 3	    106 	    2023-04-16	    View Product
-- 1	    107	        2023-04-18	    Checkout
-- Task: Write an SQL query to find the users who haven't checked out a product.

-- Hint: Retrieve users whose activity type isn't Checkout.

SELECT DISTINCT user_id
FROM Activity
WHERE user_id NOT IN (
    SELECT user_id
    FROM Activity
    WHERE activity_type = 'Checkout'
);
