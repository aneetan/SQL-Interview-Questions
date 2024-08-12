-- Consider the following table:

-- Table - Candidates

-- candidate_id	name	python	SQL
-- 1	        Harry	Good	Good
-- 2	        Dennis	Poor	Decent
-- 3	        Wayne	Good	Poor
-- 4	        Ryan	Good	Good
-- 5	        Darren	Good	Good
-- Retrieve the candidates suitable for a job in data science
-- under the alias fit_candidate and sort the result in ascending order of candidate_id.

-- Assumption: A candidate is suitable for the job if they are Good at both python and SQL.

SELECT candidate_id, name as fit_candidate
FROM Candidates
WHERE python='Good' AND SQL='Good'
ORDER BY candid ASC