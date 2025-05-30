-- get all data from a table
SELECT *
FROM students;

-- select only some columns (projection)
select name, email
from students;

-- select distinct
SELECT DISTINCT position
FROM teachers;

-- limit number of rows
SELECT *
FROM students
LIMIT 10 OFFSET 5;

-- filter rows (selection)
SELECT *
FROM teachers
WHERE (position = 'Lecturer' or position = 'Professor')
  and birthdate >= '1990-1-1';

SELECT *
FROM teachers
WHERE birthdate not between '1990-1-1' and '1995-1-1';

--using a subquery

SELECT *
FROM teachers
WHERE id in (
    SELECT lessons.theacher_id
    FROM lessons
    WHERE lessons.date >= '2025-1-1'
);

-- sorting
SELECT *
FROM lessons
ORDER BY date DESC, course_id ASC;

-- aggregation

SELECT COUNT(*)
FROM students;

SELECT COUNT(DISTINCT position)
FROM teachers;

SELECT AVG(maxstudent) as average, MIN(maxstudent) as minimum
FROM courses;

-- groupby
SELECT student_id, COUNT(*) as count
FROM enrolment
GROUP BY student_id
ORDER BY count DESC;

SELECT course_id, COUNT(*) as count
FROM enrolment
GROUP BY course_id
HAVING COUNT(*) > 10;

SELECT topic, room_number, max(time)
FROM lesson_info
GROUP BY topic, room_number;

-- join

SELECT name, date
FROM lessons,
     courses
where courses.id = lessons.course_id
ORDER BY name;

select c.name, (c.maxstudent - count(*)) as disponibilita
from enrolment
         join courses c on c.id = enrolment.course_id
group by course_id, c.name, c.maxstudent
order by disponibilita desc;

-- subquery

SELECT name, COUNT(*) as count
FROM enrolment
         JOIN courses on courses.id = enrolment.course_id
where courses.startdate > '2025-1-1'
GROUP BY name
HAVING COUNT(*) > (
    SELECT AVG(enrolments_counts.count)
    FROM (
             SELECT course_id, COUNT(*) as count
             FROM enrolment
             GROUP BY course_id
         ) as enrolments_counts
)
order by count;
