-- Consider the following three tables: Customers, Orders, and Payments.

-- Table - Customers

-- customer_id	first_name	last_name
-- 1	        Dwayne	Johnson
-- 2	        Randy	Orton
-- 3	        John	Cena

-- Table - Orders

-- order_id	customer_id	order_date
-- 1	            1	2023-07-06
-- 2	            2	2023-07-06
-- 3	            3	2023-07-09

-- Table - Payments

-- payment_id	  order_id	amount
-- 1	                1	200
-- 2	                2	300
-- 3	                3	400
-- Write an SQL query to retrieve the customer_id, first_name, last_name, and a column called
-- payment_status which should display:

-- Paid if the total amount of payments for a customer is greater than or equal to 300.
-- Unpaid if the total amount of payments for a customer is less than 300.


SELECT Customers.customer_id,
        Customers.first_name,
        Customers.last_name,
CASE 
    WHEN SUM(Payments.amount) >= 300 THEN 'Paid'
    WHEN SUM(Payments.amount) < 300 THEN 'Unpaid'
END AS payment_status
FROM Customers
LEFT JOIN Orders ON Customers.customer_id = Orders.customer_id
LEFT JOIN Payments ON Orders.order_id = Payments.order_id
GROUP BY Customers.customer_id, Customers.first_name, Customers.last_name;
