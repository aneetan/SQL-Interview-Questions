-- Consider the following table:

-- Table - Customers

-- customer_id	name	visited_on 	amount
-- 1	        Dennis	2023-01-01	100
-- 2	        Harry	2023-01-02	200
-- 3	        Marcus	2023-01-03	110
-- 4	        Wayne	2023-01-04	140
-- 5	        Ryan	2023-01-05	150
-- 6	        Paul	2023-01-06	160
-- 1	        Dennis	2023-01-06	170
-- 2	        Harry	2023-01-06	130
-- Write an SQL query to compute the moving average (as average_amount) of how much the
-- customers paid in a seven days window (i.e., current day + 6 days before).

-- Here, average_amount should be rounded to two decimal places.