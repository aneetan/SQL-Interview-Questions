-- Consider the following table:

-- Table - Books

-- id	title	    release_date	publisher
-- 1	Homo Deus	2018	        Harper Collins
-- 2	Kaizen	    2019	        Blue Bird
-- 3	Animal Farm	1945	        Penguin
-- Task: Retrieve the titles of all books published in the 21st century that contain the letter Z.

SELECT title 
FROM Books
WHERE release_date LIKE '20%'
AND title LIKE '%Z%'