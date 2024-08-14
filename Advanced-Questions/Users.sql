-- Consider the following table:

-- Table - Users

-- user_id	name
-- 1	    aLicE
-- 2	    boB
-- Write an SQL query to fix the Users table so that only the first character is
-- uppercase and the rest are lowercase. Display the resulting table.


-- Process:
-- 1. Split the string first letter to uppercase
-- 2. Split rest to lowercase
-- 3. concatenate using ||

UPDATE Users
SET name =
    UPPER(substr(name, 1, 1)) || LOWER(substr(name, 2));

SELECT * FROM Users;


