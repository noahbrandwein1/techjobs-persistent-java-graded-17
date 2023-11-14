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

SELECT skill.name
FROM skill
INNER JOIN job_skills ON skill.id = job_skills.skills_id
WHERE job_skills.jobs_id IS NOT NULL
ORDER BY skill.name ASC;










