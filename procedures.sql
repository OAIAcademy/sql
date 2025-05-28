CREATE OR REPLACE PROCEDURE clean_old_data() AS
$$
BEGIN
    DELETE
    FROM lessons
    WHERE lessons.date < CURRENT_DATE - interval '30 years';
END
$$ LANGUAGE plpgsql;

CALL clean_old_data();

-- add trigger to stop insertion

CREATE OR REPLACE FUNCTION check_maxstudents() RETURNS TRIGGER
    LANGUAGE plpgsql as
$$
BEGIN
    IF (SELECT count(*) FROM enrolment where enrolment.course_id == new.course_id) >=
       (SELECT maxstudent FROM courses where courses.id = new.course_id) THEN
        RAISE EXCEPTION 'Max student reached';
    END IF;
    RETURN new;
END
$$;

CREATE TRIGGER check_enrolment
    BEFORE INSERT
    on enrolment
    FOR EACH ROW
EXECUTE PROCEDURE check_maxstudents();

