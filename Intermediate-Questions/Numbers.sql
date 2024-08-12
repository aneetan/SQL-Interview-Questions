-- Consider the following table:

-- Table - Numbers

-- number
-- 8
-- 8
-- 3
-- 3
-- 1
-- 4
-- 5
-- 6
-- Write an SQL query to fetch the largest non-repeating number. If there is no such number, fetch NULL.

SELECT
    CASE
        WHEN COUNT(number) > 0 THEN MAX(number)
    ELSE NULL
    END AS largest_single_number

FROM (
    SELECT number
    FROM Numbers
    GROUP BY number
    HAVING COUNT(*) = 1
) as largest_single_number
