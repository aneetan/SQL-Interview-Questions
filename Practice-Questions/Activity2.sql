-- Problem Description
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
-- Task: Write an SQL query to find the number of distinct users who have logged
-- in but haven't added any products to the cart.


SELECT COUNT(DISTINCT user_id) as logged_user_empty_cart
FROM Activity
WHERE user_id NOT IN (
    SELECT user_id
    FROM Activity
    WHERE activity_type='Add to Cart'
) AND activity_type = 'Login'
