-- Suppose you have the following table:

-- Table - Books
-- book_id	title	            date	    sales
-- 1	    Mockingjay	        2010-01-01	200000
-- 2	    Ready Player One	2011-05-12	1500000
-- 3	    The Hate U Give	    2017-06-09	1200000
-- 4	    Life After Life	    2013-10-12	50000
-- 5	    Lord of the Rings	1954-05-17	150000000
-- 6	    Atonement	        2001-02-23	1000000
-- Task: Retrieve all books published in the 21st century in descending order of their sales.

SELECT *
FROM Books
WHERE strftime('%Y', Books.date) LIKE '20%'
ORDER BY sales DESC