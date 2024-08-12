-- Consider the following table:

-- Table - Orders

-- order_id	customer_id	order_date	delivery_date
-- 1	        1001	2023-04-15	2023-04-18
-- 2	        1002	2023-05-10	2023-05-15
-- 3	        1003	2023-05-01	2023-05-06
-- 4	        1004	2023-04-25	2023-04-30
-- 5	        1005	2023-05-15	2023-05-18

-- Write an SQL query to retrieve the number of orders that were
-- delivered in exactly 3 days of the order date.

SELECT COUNT(*) as num_orders
FROM Orders
WHERE delivery_date
BETWEEN order_date AND DATE(order_date, '+3 days')