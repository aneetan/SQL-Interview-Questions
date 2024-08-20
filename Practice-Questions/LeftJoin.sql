-- Consider the following two tables:

-- Table - Customers

-- customer_id	first_name	last_name
-- 1	        Dwayne	    Johnson
-- 2	        Randy	    Orton
-- 3	        John	    Cena
-- Table - Orders

-- order_id	       customer_id	order_date
-- 1	           1	        2023-07-06
-- 2	           2	        2023-07-06
-- 3	           3	        2023-07-09
-- Task: Retrieve the customer_id, first_name, last_name, and a column
-- called order_status which should display Orderedif the customer has
-- placed an order and Not Ordered if they haven't.

    SELECT c.customer_id, c.first_name, c.last_name,
    (
        CASE
            WHEN o.order_id IS NOT NULL THEN 'Ordered'
            ELSE 'Not Ordered'
        END
    ) as order_status
    FROM Customers c 
    LEFT JOIN Orders o ON 
    c.customer_id = o.order_id


