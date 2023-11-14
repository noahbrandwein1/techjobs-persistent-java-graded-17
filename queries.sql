--Part 1

-- Table: job
-- Columns:
-- employer VARCHAR(255)
--  id INT
--  name VARCHAR(255)
--  skills VARCHAR(255)

--Part 2

SELECT name
FROM employer
WHERE location = "St. Louis City";

--Part 3

DROP TABLE job;

--Part 4

SELECT s.name
FROM skill s
JOIN job_skills js ON s.id = js.skills_id
WHERE js.jobs_id IS NOT NULL
ORDER BY s.name ASC;







