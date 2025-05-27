-- index b-tree
CREATE INDEX idx_lesson_time ON lesson_info (time);
DROP INDEX idx_lesson_time;
-- index for hash
CREATE INDEX idx_name ON students USING hash (name);
DROP INDEX idx_name;

-- index multiple columns
CREATE INDEX idx_enrlorment ON enrolment using hash (course_id, student_id);
DROP INDEX idx_enrlorment;

-- index specific filter
CREATE INDEX idx_maxstudents ON courses (maxstudent) where maxstudent < 30;
DROP INDEX idx_maxstudents;

-- explain query
EXPLAIN
SELECT name, COUNT(*) as count
FROM enrolment
JOIN courses on courses.id = enrolment.course_id
GROUP BY name
HAVING COUNT(*) > (
    SELECT AVG(enrolments_counts.count)
    FROM (
             SELECT course_id, COUNT(*) as count
             FROM enrolment
             GROUP BY course_id
         ) as enrolments_counts
);
