-- Consider the following table:

-- Table - Sales

-- sales_id	sales_date	sales_amount
-- 1	    2023-05-30	50000
-- 2	    2023-06-03	80000
-- 3	    2023-06-23	100000
-- 4	    2023-06-30	90000
-- Task: Retrieve the sales records where the sales amount are perfect squares.

-- Hint: A number expressed as a product of an integer by itself is called a perfect square.
-- For example, 9 is a perfect square of 3 since 3 x 3 = 9.

-- Expected Output

-- sales_id	sales_date	sales_amount
-- 4	    2023-06-30	90000

SELECT sales_id, sales_date, sales_amount
FROM Sales
WHERE SQRT(sales_amount) = FLOOR(SQRT(sales_amount))