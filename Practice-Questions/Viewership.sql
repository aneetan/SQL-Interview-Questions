-- Problem Description
-- Assume you're given the following table:

-- Table - Viewership

-- user_id	device_type	view_time
-- 123	    tablet	    2023-01-01
-- 125	    laptop	    2023-05-01
-- 128	    laptop	    2023-04-10
-- 129	    phone	    2023-03-11
-- 145	    tablet	    2023-06-02
-- Task: Calculate the total viewership for laptops, phone, and tablet devices separately.

-- Display the total viewership for laptops as laptop_views,
-- phones as phone_views, and tablets as tablet_views.

-- write your sql code


SELECT
    SUM(
        CASE
        WHEN device_type = 'laptop' THEN 1
        ELSE 0 
    END) AS laptop_views,

    SUM(
        CASE
        WHEN device_type = 'phone' THEN 1
        ELSE 0
    END) AS phone_views,

    SUM(
        CASE
        WHEN device_type = 'tablet' THEN 1
        ELSE 0
    END) AS tablet_views

FROM Viewership;