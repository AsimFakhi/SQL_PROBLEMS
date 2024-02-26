CREATE TABLE IF NOT EXISTS candidates(
	candidate_id int,
    skill varchar(50)
);
/*
Given a table of candidates and their skills, you're tasked with finding the candidates best suited for an open Data Science job.
You want to find candidates who are proficient in Python, Tableau, and PostgreSQL.
Write a query to list the candidates who possess all of the required skills for the job. Sort the output by candidate ID in ascending order.
*/
INSERT INTO candidates VALUES
(123,'Python'),
(123,'Tableau'),
(123,'PostgreSQL'),
(234,'R'),
(234,'PowerBI'),
(234,'SQL Server'),
(345,'Python'),
(345,'Tableau'),
(345,'PostgreSQL'),
(345,'SQL Server'),
(561,'Tableau'),
(561,'PostgreSQL');

SELECT candidate_id, COUNT(skill)
FROM candidates
WHERE skill IN ('Python', 'Tableau','PostgreSQL')
GROUP BY candidate_id
HAVING COUNT(skill) = 3
;

SELECT * FROM candidates;

