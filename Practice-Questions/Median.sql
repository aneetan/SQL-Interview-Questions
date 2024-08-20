-- Consider the following table:

-- Table - Sales

-- sales_id	sales_date	sales_amount
-- 1	    2023-05-30	50000
-- 2	    2023-06-03	80000
-- 3	    2023-06-23	100000
-- 4	    2023-06-30	90000
-- Task: Retrieve the median sales amount across all records.

SELECT MEDIAN(sales_amount) as median_sales_amount
FROM Sales