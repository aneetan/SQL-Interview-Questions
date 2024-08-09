-- Consider the following table:

-- Table - Books

-- book_id	title	            date	sales
-- 1	    Mockingjay	        2010-01-01	200000
-- 2	    Ready Player One	2011-05-12	1500000
-- 3	    The Hate U Give	    2017-06-09	1200000
-- 4	    Life After Life	    2013-10-12	50000
-- 5	    Lord of the Rings	1954-05-17	150000000
-- 6	    Atonement	        2001-02-23	1000000

-- Write a query to retrieve the titles and the sale numbers of books published
-- in the last decade (2010 - 2019) that have sold more than 1 million copies.

SELECT title, sales
FROM Books
WHERE date BETWEEN '2010-01-01' AND '2019-12-30'
AND sales > 1000000