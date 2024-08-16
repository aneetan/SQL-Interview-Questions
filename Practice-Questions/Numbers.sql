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
-- Task: Write an SQL query to fetch the smallest non-repeating number.
-- If there is no such number, fetch NULL. Use the alias smallest_single_number.


SELECT
    CASE
        WHEN COUNT(number) > 0 THEN MIN(number)
    ELSE NUll
    END AS smallest_single_number

FROM (
    SELECT number
    FROM Numbers
    GROUP BY number
    HAVING COUNT(*) = 1
) AS smallest_single_number 