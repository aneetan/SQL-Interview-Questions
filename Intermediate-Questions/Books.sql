-- Consider the following table:

-- Table - Books

-- id	title	    release_date	publisher
-- 1	Homo Deus	2018	        Harper Collins
-- 2	Kaizen	    2019	        Blue Bird
-- 3	Animal Farm	1945	        Penguin

-- Write an SQL query to retrieve the titles of all books that have more than one word in their title,
-- but none of the words contain the letter Z. Order the book titles in ascending order.

SELECT title 
FROM Books
WHERE title LIKE '% %' 
AND title NOT LIKE '%Z%'
ORDER BY title ASC