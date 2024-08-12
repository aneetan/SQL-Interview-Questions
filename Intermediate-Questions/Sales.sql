-- Consider the following table:
-- Table - Sales

-- sales_id	sales_date	sales_amount
-- 1	     2023-05-30	50000
-- 2	    2023-06-03	80000
-- 3	    2023-06-23	100000
-- 4	    2023-06-30	90000
-- 5	    2023-06-22	800
-- Find the monthly sales from the above table and sort them in descending
-- order of sales_amount and sales_date.

SELECT 
strftime('%m', sales_date) as month, 
SUM(sales_amount) as total_sales
FROM Sales
GROUP BY month
ORDER BY total_sales DESC, month DESC