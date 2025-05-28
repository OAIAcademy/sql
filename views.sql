-- create view
CREATE VIEW inscription AS
SELECT s.name as student, c.name as course
FROM students as s
         JOIN enrolment e on s.id = e.student_id
         JOIN courses c on c.id = e.course_id;

-- use view
SELECT student, count(*)
FROM inscription
GROUP BY student;

-- delete
DROP VIEW inscription;

-- materialized view
CREATE MATERIALIZED VIEW teacher_room AS
SELECT date,teachers.name,li.room_number
FROM teachers
JOIN lessons l on teachers.id = l.theacher_id
JOIN lesson_info li on l.id = li.lesson_id
GROUP BY teachers.name,li.room_number,date
order by date;

REFRESH MATERIALIZED VIEW teacher_room;

DROP MATERIALIZED VIEW teacher_room;