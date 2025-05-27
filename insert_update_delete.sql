-- insertion
INSERT INTO students (id, name, email)
VALUES (101, 'MARCO TORLASCI', 'marco.torlaschi@occupyai.tech');

-- update
UPDATE students
SET name = 'MARCO TORLASCHI'
WHERE id = 101;

-- delete
DELETE FROM students WHERE id = 101

