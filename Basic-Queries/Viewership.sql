SELECT
    SUM(
        CASE 
        WHEN device_type = 'laptop' then 1
        ELSE 0
        END
    ) AS laptop_views,

    SUM(
        CASE
        WHEN device_type IN ('phone', 'tablet') then 1
        ELSE 0 
        END
    ) AS mobile_views

FROM Viewership