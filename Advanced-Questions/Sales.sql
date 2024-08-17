-- Consider the following table:

-- Table - Sales

-- sales_id	sales_date	sales_amount
-- 1	    2023-05-30	50000
-- 2	    2023-06-03	80000
-- 3	    2023-06-23	100000
-- 4	    2023-06-30	90000
-- 5	    2023-06-22	800
-- Write an optimized query to find the top 3 products (sales_id) with the
-- highest total sales amount for each month, in descending order of the months and the sales amount.

-- CTE 1
WITH monthly_sales AS (
    SELECT sales_id,
    SUM(sales_amount) as total_sales_amount,
    strftime('%Y-%m', sales_date) as month
    FROM Sales
    GROUP BY month, sales_id
),
ranked_sales AS(
    SELECT sales_id, month, total_sales_amount,
    ROW_NUMBER() OVER (
        PARTITION BY month
        ORDER BY total_sales_amount DESC
    ) as rank
    FROM monthly_sales
)

-- main query
SELECT rs.month,
rs.sales_id, rs.total_sales_amount
FROM ranked_sales rs
WHERE rs.rank <= 3
ORDER BY rs.month DESC, rs.total_sales_amount DESC






