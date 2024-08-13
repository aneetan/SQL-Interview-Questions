-- Consider the following tables:

-- Table - Orders

-- order_id	customer_id	order_date
-- 1	    1001	    2023-04-15
-- 2	    1002	    2023-05-10
-- 3	    1003	    2023-05-01
-- 4	    1004	    2023-04-25
-- 5	    1005	    2023-05-15

-- Table - Items

-- order_id	product_id	quantity
-- 1	        2001	        5
-- 1	        2002	        3
-- 2	        2003		    2
-- 2	        2004	        4
-- 2	        2005	        1
-- 3	        2001	        2
-- 4	        2002	        3
-- 5	        2003	        6
-- Write an SQL query to display the total quantity of products ordered by
-- each customer. Retrieve the customer ID and the total quantity of products grouped by each customer.

-- Hint: Use INNER JOIN.

SELECT customer_id, SUM(quantity) as total_quantity
FROM Orders 
INNER JOIN Items
ON Orders.order_id = Items.order_id
GROUP BY customer_id


