-- Consider the following table:

-- Table - Users

-- user_id	name
-- 1	    aLicE
-- 2	    boB
-- Task: Fix the names so that they are all in uppercase and return the column as cap_name.

-- Expected Output

-- user_id	cap_name
-- 1	    ALICE
-- 2	    BOB

SELECT user_id, UPPER(name) AS cap_name
FROM Users;

