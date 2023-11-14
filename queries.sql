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

SELECT DISTINCT s.name
FROM skills
JOIN job_skills js ON s.id = js.skills_id
ORDER BY s.name ASC;


