
-- Table: teachers
CREATE TABLE teachers (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    birthdate DATE,
    email VARCHAR(255),
    position VARCHAR(100)
);

-- Table: courses
CREATE TABLE courses (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    startdate DATE,
    maxstudent INTEGER
);

-- Table: students
CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255)
);

-- Table: enrolment
CREATE TABLE enrolment (
    student_id INTEGER REFERENCES students(id),
    course_id INTEGER REFERENCES courses(id),
    PRIMARY KEY (student_id, course_id)
);

-- Table: lessons
CREATE TABLE lessons (
    id SERIAL PRIMARY KEY,
    course_id INTEGER REFERENCES courses(id),
    theacher_id INTEGER REFERENCES teachers(id),
    date DATE
);

-- Table: lesson_info
CREATE TABLE lesson_info (
    lesson_id INTEGER REFERENCES lessons(id),
    time TIME,
    topic VARCHAR(255),
    room_number VARCHAR(50),
    PRIMARY KEY (lesson_id)
);


INSERT INTO teachers (id, name, birthdate, email, position) VALUES (1, 'Carol Lee', '1992-08-13', 'adamsmarisa@banks.com', 'Lecturer');
INSERT INTO teachers (id, name, birthdate, email, position) VALUES (2, 'Taylor Nguyen', '1987-10-20', 'mark05@yahoo.com', 'Professor');
INSERT INTO teachers (id, name, birthdate, email, position) VALUES (3, 'Gabriela Jones', '1991-07-30', 'webstervalerie@lee.com', 'Lecturer');
INSERT INTO teachers (id, name, birthdate, email, position) VALUES (4, 'Mitchell Snyder', '1968-07-04', 'robert85@everett.biz', 'Lecturer');
INSERT INTO teachers (id, name, birthdate, email, position) VALUES (5, 'Alexa Johnson', '1991-03-14', 'mhart@hotmail.com', 'Professor');
INSERT INTO teachers (id, name, birthdate, email, position) VALUES (6, 'Robert Brown', '1981-11-01', 'msnyder@yahoo.com', 'Professor');
INSERT INTO teachers (id, name, birthdate, email, position) VALUES (7, 'Todd Good', '1991-09-29', 'ghamilton@baker-gonzalez.org', 'Assistant Professor');
INSERT INTO teachers (id, name, birthdate, email, position) VALUES (8, 'Donna Roberts', '1982-02-23', 'andrewjones@thomas.biz', 'Assistant Professor');
INSERT INTO teachers (id, name, birthdate, email, position) VALUES (9, 'Bailey Brown', '1985-01-28', 'wmarquez@price.com', 'Professor');
INSERT INTO teachers (id, name, birthdate, email, position) VALUES (10, 'Bradley Griffin', '1993-10-20', 'kclark@welch-martin.biz', 'Assistant Professor');

INSERT INTO courses (id, name, startdate, maxstudent) VALUES (1, 'Data Science Intro', '2024-05-20', 34);
INSERT INTO courses (id, name, startdate, maxstudent) VALUES (2, 'Data Science Advanced', '2025-04-07', 43);
INSERT INTO courses (id, name, startdate, maxstudent) VALUES (3, 'Machine Learning Intro', '2025-05-08', 28);
INSERT INTO courses (id, name, startdate, maxstudent) VALUES (4, 'Machine Learning Advanced', '2024-07-19', 29);
INSERT INTO courses (id, name, startdate, maxstudent) VALUES (5, 'AI Intro', '2025-03-14', 40);
INSERT INTO courses (id, name, startdate, maxstudent) VALUES (6, 'AI Advanced', '2025-04-02', 38);
INSERT INTO courses (id, name, startdate, maxstudent) VALUES (7, 'Deep Learning Basics', '2025-01-06', 35);
INSERT INTO courses (id, name, startdate, maxstudent) VALUES (8, 'Natural Language Processing', '2024-09-02', 39);
INSERT INTO courses (id, name, startdate, maxstudent) VALUES (9, 'Computer Vision', '2024-10-03', 32);
INSERT INTO courses (id, name, startdate, maxstudent) VALUES (10, 'Reinforcement Learning', '2024-11-16', 26);

INSERT INTO students (id, name, email) VALUES (1, 'Nicholas Wilkerson', 'bakergary@garcia.com');
INSERT INTO students (id, name, email) VALUES (2, 'Joshua Murillo', 'klara@yahoo.com');
INSERT INTO students (id, name, email) VALUES (3, 'Calvin Williams', 'charlessullivan@henson.com');
INSERT INTO students (id, name, email) VALUES (4, 'Jennifer Jordan', 'joann06@clark.biz');
INSERT INTO students (id, name, email) VALUES (5, 'Katrina Taylor DDS', 'krista00@gmail.com');
INSERT INTO students (id, name, email) VALUES (6, 'Christopher Scott', 'medinagary@hoffman.com');
INSERT INTO students (id, name, email) VALUES (7, 'Aaron Wilcox IV', 'shawn65@yahoo.com');
INSERT INTO students (id, name, email) VALUES (8, 'Brittney Shelton', 'velazquezjames@moore-pearson.com');
INSERT INTO students (id, name, email) VALUES (9, 'Paula Nelson', 'katelyn76@benson.com');
INSERT INTO students (id, name, email) VALUES (10, 'Todd Garza', 'stephaniemiller@gmail.com');
INSERT INTO students (id, name, email) VALUES (11, 'Ashley Henderson', 'croberts@avery-cortez.com');
INSERT INTO students (id, name, email) VALUES (12, 'Miguel Thompson', 'jeffrey46@gmail.com');
INSERT INTO students (id, name, email) VALUES (13, 'Joshua Chambers', 'christopher46@jenkins.info');
INSERT INTO students (id, name, email) VALUES (14, 'Ryan Richardson', 'arianaferrell@king.info');
INSERT INTO students (id, name, email) VALUES (15, 'Juan Thompson', 'michael30@gmail.com');
INSERT INTO students (id, name, email) VALUES (16, 'Thomas Coleman', 'jasonberry@gmail.com');
INSERT INTO students (id, name, email) VALUES (17, 'Roberto Rose', 'deanmathew@friedman.com');
INSERT INTO students (id, name, email) VALUES (18, 'James Rangel', 'angelahenry@brown-dixon.com');
INSERT INTO students (id, name, email) VALUES (19, 'Thomas Reid', 'johnparker@walton.biz');
INSERT INTO students (id, name, email) VALUES (20, 'Mario Vargas', 'yusamantha@gmail.com');
INSERT INTO students (id, name, email) VALUES (21, 'Joshua Warner', 'wbrown@hotmail.com');
INSERT INTO students (id, name, email) VALUES (22, 'John Harrison', 'tjames@yahoo.com');
INSERT INTO students (id, name, email) VALUES (23, 'Kathleen Lopez', 'timothy21@yahoo.com');
INSERT INTO students (id, name, email) VALUES (24, 'Dana Sanchez', 'palmertyler@garcia.biz');
INSERT INTO students (id, name, email) VALUES (25, 'Andrew Gonzalez', 'lowegeorge@yahoo.com');
INSERT INTO students (id, name, email) VALUES (26, 'Patricia Gordon', 'gary80@gmail.com');
INSERT INTO students (id, name, email) VALUES (27, 'James Jordan', 'susan83@austin.org');
INSERT INTO students (id, name, email) VALUES (28, 'Robert Ibarra', 'sanchezangela@yahoo.com');
INSERT INTO students (id, name, email) VALUES (29, 'Edward Gilbert', 'michaelrichmond@gmail.com');
INSERT INTO students (id, name, email) VALUES (30, 'Eddie Mitchell', 'jennifercastro@smith.com');
INSERT INTO students (id, name, email) VALUES (31, 'Charlene Green', 'franksmith@gmail.com');
INSERT INTO students (id, name, email) VALUES (32, 'Cynthia Ramsey', 'jared54@yahoo.com');
INSERT INTO students (id, name, email) VALUES (33, 'Dustin Gilbert', 'michelle54@jones-johnson.com');
INSERT INTO students (id, name, email) VALUES (34, 'George Brown', 'pattersonchristina@gmail.com');
INSERT INTO students (id, name, email) VALUES (35, 'Victoria Shelton', 'ejohnson@hotmail.com');
INSERT INTO students (id, name, email) VALUES (36, 'Ebony Garrett', 'cameronmatthew@hotmail.com');
INSERT INTO students (id, name, email) VALUES (37, 'Brianna Rodriguez', 'adamcooke@gmail.com');
INSERT INTO students (id, name, email) VALUES (38, 'Brittney Reed', 'charles13@hawkins-atkins.com');
INSERT INTO students (id, name, email) VALUES (39, 'Monique Grimes', 'bberry@yahoo.com');
INSERT INTO students (id, name, email) VALUES (40, 'Daniel Zuniga', 'jennifervasquez@hotmail.com');
INSERT INTO students (id, name, email) VALUES (41, 'Melissa White', 'cheryl54@carpenter.com');
INSERT INTO students (id, name, email) VALUES (42, 'Charles Williams', 'higginsjacob@hotmail.com');
INSERT INTO students (id, name, email) VALUES (43, 'Brandi Nunez', 'robyn78@spence.net');
INSERT INTO students (id, name, email) VALUES (44, 'Taylor Garcia', 'dawnerickson@hotmail.com');
INSERT INTO students (id, name, email) VALUES (45, 'Adam Howard', 'iwhite@mcknight.com');
INSERT INTO students (id, name, email) VALUES (46, 'Kelsey Ortiz', 'ucastro@morales.com');
INSERT INTO students (id, name, email) VALUES (47, 'Matthew Mcdaniel', 'joseph20@yahoo.com');
INSERT INTO students (id, name, email) VALUES (48, 'Michael Carter', 'keithking@baker.biz');
INSERT INTO students (id, name, email) VALUES (49, 'Dennis Manning', 'wisestephanie@hotmail.com');
INSERT INTO students (id, name, email) VALUES (50, 'Christopher Cooper', 'shahmolly@yahoo.com');
INSERT INTO students (id, name, email) VALUES (51, 'Stephen Lopez', 'keith87@smith.com');
INSERT INTO students (id, name, email) VALUES (52, 'Alexandra Hobbs', 'ewalters@hotmail.com');
INSERT INTO students (id, name, email) VALUES (53, 'April Morrison', 'misty04@gmail.com');
INSERT INTO students (id, name, email) VALUES (54, 'Tammy Reed', 'eric05@gmail.com');
INSERT INTO students (id, name, email) VALUES (55, 'Christine Martinez', 'dawnhernandez@hotmail.com');
INSERT INTO students (id, name, email) VALUES (56, 'Kelsey Smith', 'philliplopez@evans.com');
INSERT INTO students (id, name, email) VALUES (57, 'Evan Lopez DDS', 'jfritz@gmail.com');
INSERT INTO students (id, name, email) VALUES (58, 'Lisa Chavez', 'maria77@yahoo.com');
INSERT INTO students (id, name, email) VALUES (59, 'Eddie Bell', 'gregorywilliamson@ray.com');
INSERT INTO students (id, name, email) VALUES (60, 'Megan Rhodes', 'wjordan@yahoo.com');
INSERT INTO students (id, name, email) VALUES (61, 'Judith Gonzalez', 'cooperruben@bradley.com');
INSERT INTO students (id, name, email) VALUES (62, 'Joel Bell', 'sford@yahoo.com');
INSERT INTO students (id, name, email) VALUES (63, 'Jennifer Schaefer', 'kevinross@hotmail.com');
INSERT INTO students (id, name, email) VALUES (64, 'Jenna Miller', 'ybarr@weiss.com');
INSERT INTO students (id, name, email) VALUES (65, 'Kayla Schmidt', 'karen97@frazier.net');
INSERT INTO students (id, name, email) VALUES (66, 'Mark Rosales', 'danielrios@king.com');
INSERT INTO students (id, name, email) VALUES (67, 'Anthony Mendez', 'barbara21@yahoo.com');
INSERT INTO students (id, name, email) VALUES (68, 'Chad Smith', 'jamesayala@sparks.com');
INSERT INTO students (id, name, email) VALUES (69, 'Shannon Robbins', 'marshmichael@yahoo.com');
INSERT INTO students (id, name, email) VALUES (70, 'Melissa Smith', 'mikerobertson@young-gonzales.com');
INSERT INTO students (id, name, email) VALUES (71, 'Jill Arellano', 'johnking@vaughn.net');
INSERT INTO students (id, name, email) VALUES (72, 'Rachel Huber', 'sylvia58@yahoo.com');
INSERT INTO students (id, name, email) VALUES (73, 'Michelle Hernandez', 'markfigueroa@yahoo.com');
INSERT INTO students (id, name, email) VALUES (74, 'Leah Miller', 'qyang@yahoo.com');
INSERT INTO students (id, name, email) VALUES (75, 'William Adams', 'johnblake@gmail.com');
INSERT INTO students (id, name, email) VALUES (76, 'Jamie Robinson', 'usmith@ramos.net');
INSERT INTO students (id, name, email) VALUES (77, 'Kevin Bass', 'lewisevelyn@garrett.info');
INSERT INTO students (id, name, email) VALUES (78, 'Aaron Smith', 'greg18@hotmail.com');
INSERT INTO students (id, name, email) VALUES (79, 'Matthew Jackson', 'trice@gmail.com');
INSERT INTO students (id, name, email) VALUES (80, 'Jeffery Wallace', 'kingmichael@hill-sherman.com');
INSERT INTO students (id, name, email) VALUES (81, 'Christopher Johnson', 'wattsheidi@harris.net');
INSERT INTO students (id, name, email) VALUES (82, 'Linda Harper', 'morankristin@richard.com');
INSERT INTO students (id, name, email) VALUES (83, 'Dillon Mcclure', 'kevin02@gmail.com');
INSERT INTO students (id, name, email) VALUES (84, 'Kelsey Martin', 'laurahull@clark.com');
INSERT INTO students (id, name, email) VALUES (85, 'Ricardo White', 'kathybennett@delacruz.com');
INSERT INTO students (id, name, email) VALUES (86, 'Matthew Ferrell', 'howellelizabeth@yahoo.com');
INSERT INTO students (id, name, email) VALUES (87, 'Samantha Stewart DDS', 'marshjeffery@schultz-gardner.com');
INSERT INTO students (id, name, email) VALUES (88, 'Cynthia Brown', 'brendataylor@farrell.com');
INSERT INTO students (id, name, email) VALUES (89, 'Kenneth Perry', 'devinfrancis@hotmail.com');
INSERT INTO students (id, name, email) VALUES (90, 'Todd Brown', 'danielle63@yahoo.com');
INSERT INTO students (id, name, email) VALUES (91, 'Joseph Montgomery', 'tammy26@thomas.com');
INSERT INTO students (id, name, email) VALUES (92, 'Kimberly Hernandez', 'iprince@jackson-wilson.org');
INSERT INTO students (id, name, email) VALUES (93, 'Dylan Huff II', 'mark13@hotmail.com');
INSERT INTO students (id, name, email) VALUES (94, 'John Smith', 'christopherfarrell@gmail.com');
INSERT INTO students (id, name, email) VALUES (95, 'Maria Reed', 'ashley46@gmail.com');
INSERT INTO students (id, name, email) VALUES (96, 'Benjamin Jackson', 'abbottthomas@yahoo.com');
INSERT INTO students (id, name, email) VALUES (97, 'Ryan Wilson', 'maria80@franklin.com');
INSERT INTO students (id, name, email) VALUES (98, 'Tony Simmons', 'hillrobert@smith.com');
INSERT INTO students (id, name, email) VALUES (99, 'Scott Gonzalez', 'colton76@gmail.com');
INSERT INTO students (id, name, email) VALUES (100, 'Linda Graves', 'nriley@gardner.com');

INSERT INTO enrolment (student_id, course_id) VALUES (33, 3);
INSERT INTO enrolment (student_id, course_id) VALUES (20, 1);
INSERT INTO enrolment (student_id, course_id) VALUES (4, 10);
INSERT INTO enrolment (student_id, course_id) VALUES (4, 1);
INSERT INTO enrolment (student_id, course_id) VALUES (67, 4);
INSERT INTO enrolment (student_id, course_id) VALUES (3, 5);
INSERT INTO enrolment (student_id, course_id) VALUES (85, 6);
INSERT INTO enrolment (student_id, course_id) VALUES (80, 4);
INSERT INTO enrolment (student_id, course_id) VALUES (70, 5);
INSERT INTO enrolment (student_id, course_id) VALUES (48, 6);
INSERT INTO enrolment (student_id, course_id) VALUES (47, 10);
INSERT INTO enrolment (student_id, course_id) VALUES (67, 6);
INSERT INTO enrolment (student_id, course_id) VALUES (15, 9);
INSERT INTO enrolment (student_id, course_id) VALUES (50, 2);
INSERT INTO enrolment (student_id, course_id) VALUES (98, 9);
INSERT INTO enrolment (student_id, course_id) VALUES (84, 2);
INSERT INTO enrolment (student_id, course_id) VALUES (4, 2);
INSERT INTO enrolment (student_id, course_id) VALUES (94, 3);
INSERT INTO enrolment (student_id, course_id) VALUES (100, 5);
INSERT INTO enrolment (student_id, course_id) VALUES (52, 4);
INSERT INTO enrolment (student_id, course_id) VALUES (86, 4);
INSERT INTO enrolment (student_id, course_id) VALUES (43, 5);
INSERT INTO enrolment (student_id, course_id) VALUES (21, 10);
INSERT INTO enrolment (student_id, course_id) VALUES (17, 9);
INSERT INTO enrolment (student_id, course_id) VALUES (49, 6);
INSERT INTO enrolment (student_id, course_id) VALUES (75, 4);
INSERT INTO enrolment (student_id, course_id) VALUES (47, 4);
INSERT INTO enrolment (student_id, course_id) VALUES (15, 4);
INSERT INTO enrolment (student_id, course_id) VALUES (45, 5);
INSERT INTO enrolment (student_id, course_id) VALUES (55, 1);
INSERT INTO enrolment (student_id, course_id) VALUES (74, 10);
INSERT INTO enrolment (student_id, course_id) VALUES (88, 8);
INSERT INTO enrolment (student_id, course_id) VALUES (11, 1);
INSERT INTO enrolment (student_id, course_id) VALUES (13, 9);
INSERT INTO enrolment (student_id, course_id) VALUES (42, 9);
INSERT INTO enrolment (student_id, course_id) VALUES (75, 6);
INSERT INTO enrolment (student_id, course_id) VALUES (29, 5);
INSERT INTO enrolment (student_id, course_id) VALUES (33, 2);
INSERT INTO enrolment (student_id, course_id) VALUES (65, 4);
INSERT INTO enrolment (student_id, course_id) VALUES (28, 3);
INSERT INTO enrolment (student_id, course_id) VALUES (68, 3);
INSERT INTO enrolment (student_id, course_id) VALUES (43, 3);
INSERT INTO enrolment (student_id, course_id) VALUES (31, 3);
INSERT INTO enrolment (student_id, course_id) VALUES (36, 10);
INSERT INTO enrolment (student_id, course_id) VALUES (44, 9);
INSERT INTO enrolment (student_id, course_id) VALUES (39, 3);
INSERT INTO enrolment (student_id, course_id) VALUES (95, 8);
INSERT INTO enrolment (student_id, course_id) VALUES (84, 9);
INSERT INTO enrolment (student_id, course_id) VALUES (98, 7);
INSERT INTO enrolment (student_id, course_id) VALUES (93, 6);
INSERT INTO enrolment (student_id, course_id) VALUES (55, 8);
INSERT INTO enrolment (student_id, course_id) VALUES (96, 7);
INSERT INTO enrolment (student_id, course_id) VALUES (22, 10);
INSERT INTO enrolment (student_id, course_id) VALUES (28, 8);
INSERT INTO enrolment (student_id, course_id) VALUES (1, 7);
INSERT INTO enrolment (student_id, course_id) VALUES (48, 3);
INSERT INTO enrolment (student_id, course_id) VALUES (73, 1);
INSERT INTO enrolment (student_id, course_id) VALUES (96, 9);
INSERT INTO enrolment (student_id, course_id) VALUES (4, 4);
INSERT INTO enrolment (student_id, course_id) VALUES (58, 6);
INSERT INTO enrolment (student_id, course_id) VALUES (18, 3);
INSERT INTO enrolment (student_id, course_id) VALUES (38, 2);
INSERT INTO enrolment (student_id, course_id) VALUES (3, 9);
INSERT INTO enrolment (student_id, course_id) VALUES (41, 2);
INSERT INTO enrolment (student_id, course_id) VALUES (82, 6);
INSERT INTO enrolment (student_id, course_id) VALUES (10, 5);
INSERT INTO enrolment (student_id, course_id) VALUES (66, 2);
INSERT INTO enrolment (student_id, course_id) VALUES (33, 6);
INSERT INTO enrolment (student_id, course_id) VALUES (87, 1);
INSERT INTO enrolment (student_id, course_id) VALUES (25, 9);
INSERT INTO enrolment (student_id, course_id) VALUES (21, 2);
INSERT INTO enrolment (student_id, course_id) VALUES (25, 5);
INSERT INTO enrolment (student_id, course_id) VALUES (39, 9);
INSERT INTO enrolment (student_id, course_id) VALUES (24, 3);
INSERT INTO enrolment (student_id, course_id) VALUES (25, 10);
INSERT INTO enrolment (student_id, course_id) VALUES (48, 1);
INSERT INTO enrolment (student_id, course_id) VALUES (95, 3);
INSERT INTO enrolment (student_id, course_id) VALUES (49, 10);
INSERT INTO enrolment (student_id, course_id) VALUES (23, 3);
INSERT INTO enrolment (student_id, course_id) VALUES (52, 9);
INSERT INTO enrolment (student_id, course_id) VALUES (33, 9);
INSERT INTO enrolment (student_id, course_id) VALUES (31, 7);
INSERT INTO enrolment (student_id, course_id) VALUES (59, 10);
INSERT INTO enrolment (student_id, course_id) VALUES (78, 2);
INSERT INTO enrolment (student_id, course_id) VALUES (93, 2);
INSERT INTO enrolment (student_id, course_id) VALUES (43, 4);
INSERT INTO enrolment (student_id, course_id) VALUES (32, 3);
INSERT INTO enrolment (student_id, course_id) VALUES (65, 3);
INSERT INTO enrolment (student_id, course_id) VALUES (48, 2);
INSERT INTO enrolment (student_id, course_id) VALUES (24, 8);
INSERT INTO enrolment (student_id, course_id) VALUES (83, 10);
INSERT INTO enrolment (student_id, course_id) VALUES (93, 9);
INSERT INTO enrolment (student_id, course_id) VALUES (53, 5);
INSERT INTO enrolment (student_id, course_id) VALUES (83, 7);
INSERT INTO enrolment (student_id, course_id) VALUES (57, 7);
INSERT INTO enrolment (student_id, course_id) VALUES (15, 2);
INSERT INTO enrolment (student_id, course_id) VALUES (57, 8);
INSERT INTO enrolment (student_id, course_id) VALUES (88, 3);
INSERT INTO enrolment (student_id, course_id) VALUES (8, 1);
INSERT INTO enrolment (student_id, course_id) VALUES (61, 8);
INSERT INTO enrolment (student_id, course_id) VALUES (12, 4);
INSERT INTO enrolment (student_id, course_id) VALUES (83, 8);
INSERT INTO enrolment (student_id, course_id) VALUES (39, 6);
INSERT INTO enrolment (student_id, course_id) VALUES (92, 1);
INSERT INTO enrolment (student_id, course_id) VALUES (36, 4);
INSERT INTO enrolment (student_id, course_id) VALUES (23, 1);
INSERT INTO enrolment (student_id, course_id) VALUES (17, 10);
INSERT INTO enrolment (student_id, course_id) VALUES (49, 1);
INSERT INTO enrolment (student_id, course_id) VALUES (44, 7);
INSERT INTO enrolment (student_id, course_id) VALUES (2, 6);
INSERT INTO enrolment (student_id, course_id) VALUES (54, 4);
INSERT INTO enrolment (student_id, course_id) VALUES (65, 6);
INSERT INTO enrolment (student_id, course_id) VALUES (69, 8);
INSERT INTO enrolment (student_id, course_id) VALUES (5, 1);
INSERT INTO enrolment (student_id, course_id) VALUES (11, 5);
INSERT INTO enrolment (student_id, course_id) VALUES (50, 1);
INSERT INTO enrolment (student_id, course_id) VALUES (52, 3);
INSERT INTO enrolment (student_id, course_id) VALUES (30, 6);
INSERT INTO enrolment (student_id, course_id) VALUES (62, 10);
INSERT INTO enrolment (student_id, course_id) VALUES (37, 10);
INSERT INTO enrolment (student_id, course_id) VALUES (37, 3);
INSERT INTO enrolment (student_id, course_id) VALUES (91, 2);
INSERT INTO enrolment (student_id, course_id) VALUES (52, 7);
INSERT INTO enrolment (student_id, course_id) VALUES (69, 6);
INSERT INTO enrolment (student_id, course_id) VALUES (83, 2);
INSERT INTO enrolment (student_id, course_id) VALUES (34, 2);
INSERT INTO enrolment (student_id, course_id) VALUES (46, 5);
INSERT INTO enrolment (student_id, course_id) VALUES (47, 3);
INSERT INTO enrolment (student_id, course_id) VALUES (60, 5);
INSERT INTO enrolment (student_id, course_id) VALUES (27, 1);
INSERT INTO enrolment (student_id, course_id) VALUES (21, 3);
INSERT INTO enrolment (student_id, course_id) VALUES (58, 3);
INSERT INTO enrolment (student_id, course_id) VALUES (4, 6);
INSERT INTO enrolment (student_id, course_id) VALUES (61, 9);
INSERT INTO enrolment (student_id, course_id) VALUES (47, 9);
INSERT INTO enrolment (student_id, course_id) VALUES (83, 5);
INSERT INTO enrolment (student_id, course_id) VALUES (68, 5);
INSERT INTO enrolment (student_id, course_id) VALUES (25, 3);
INSERT INTO enrolment (student_id, course_id) VALUES (25, 7);
INSERT INTO enrolment (student_id, course_id) VALUES (100, 4);
INSERT INTO enrolment (student_id, course_id) VALUES (58, 1);
INSERT INTO enrolment (student_id, course_id) VALUES (60, 4);
INSERT INTO enrolment (student_id, course_id) VALUES (6, 10);
INSERT INTO enrolment (student_id, course_id) VALUES (38, 1);
INSERT INTO enrolment (student_id, course_id) VALUES (81, 9);
INSERT INTO enrolment (student_id, course_id) VALUES (91, 8);
INSERT INTO enrolment (student_id, course_id) VALUES (42, 7);
INSERT INTO enrolment (student_id, course_id) VALUES (49, 2);
INSERT INTO enrolment (student_id, course_id) VALUES (12, 8);
INSERT INTO enrolment (student_id, course_id) VALUES (29, 4);
INSERT INTO enrolment (student_id, course_id) VALUES (22, 8);
INSERT INTO enrolment (student_id, course_id) VALUES (44, 5);
INSERT INTO enrolment (student_id, course_id) VALUES (7, 9);
INSERT INTO enrolment (student_id, course_id) VALUES (24, 4);
INSERT INTO enrolment (student_id, course_id) VALUES (63, 10);
INSERT INTO enrolment (student_id, course_id) VALUES (62, 5);
INSERT INTO enrolment (student_id, course_id) VALUES (55, 10);
INSERT INTO enrolment (student_id, course_id) VALUES (81, 7);
INSERT INTO enrolment (student_id, course_id) VALUES (6, 9);
INSERT INTO enrolment (student_id, course_id) VALUES (87, 3);
INSERT INTO enrolment (student_id, course_id) VALUES (90, 9);
INSERT INTO enrolment (student_id, course_id) VALUES (10, 7);
INSERT INTO enrolment (student_id, course_id) VALUES (24, 10);
INSERT INTO enrolment (student_id, course_id) VALUES (66, 8);
INSERT INTO enrolment (student_id, course_id) VALUES (5, 4);
INSERT INTO enrolment (student_id, course_id) VALUES (4, 8);
INSERT INTO enrolment (student_id, course_id) VALUES (37, 4);
INSERT INTO enrolment (student_id, course_id) VALUES (28, 7);
INSERT INTO enrolment (student_id, course_id) VALUES (84, 3);
INSERT INTO enrolment (student_id, course_id) VALUES (57, 3);
INSERT INTO enrolment (student_id, course_id) VALUES (68, 9);
INSERT INTO enrolment (student_id, course_id) VALUES (95, 5);
INSERT INTO enrolment (student_id, course_id) VALUES (40, 8);
INSERT INTO enrolment (student_id, course_id) VALUES (26, 6);
INSERT INTO enrolment (student_id, course_id) VALUES (96, 6);
INSERT INTO enrolment (student_id, course_id) VALUES (56, 2);
INSERT INTO enrolment (student_id, course_id) VALUES (31, 1);
INSERT INTO enrolment (student_id, course_id) VALUES (74, 9);
INSERT INTO enrolment (student_id, course_id) VALUES (81, 8);
INSERT INTO enrolment (student_id, course_id) VALUES (74, 2);
INSERT INTO enrolment (student_id, course_id) VALUES (3, 4);
INSERT INTO enrolment (student_id, course_id) VALUES (8, 8);
INSERT INTO enrolment (student_id, course_id) VALUES (41, 1);

INSERT INTO lessons (id, course_id, theacher_id, date) VALUES (1, 1, 10, '2025-02-25');
INSERT INTO lessons (id, course_id, theacher_id, date) VALUES (2, 9, 10, '2024-06-28');
INSERT INTO lessons (id, course_id, theacher_id, date) VALUES (3, 5, 3, '2024-11-03');
INSERT INTO lessons (id, course_id, theacher_id, date) VALUES (4, 5, 9, '2024-09-16');
INSERT INTO lessons (id, course_id, theacher_id, date) VALUES (5, 10, 1, '2024-11-06');
INSERT INTO lessons (id, course_id, theacher_id, date) VALUES (6, 6, 2, '2024-11-01');
INSERT INTO lessons (id, course_id, theacher_id, date) VALUES (7, 6, 10, '2025-01-01');
INSERT INTO lessons (id, course_id, theacher_id, date) VALUES (8, 6, 4, '2025-01-21');
INSERT INTO lessons (id, course_id, theacher_id, date) VALUES (9, 6, 3, '2025-02-02');
INSERT INTO lessons (id, course_id, theacher_id, date) VALUES (10, 9, 5, '2024-10-02');
INSERT INTO lessons (id, course_id, theacher_id, date) VALUES (11, 10, 3, '2025-04-28');
INSERT INTO lessons (id, course_id, theacher_id, date) VALUES (12, 1, 2, '2024-12-18');
INSERT INTO lessons (id, course_id, theacher_id, date) VALUES (13, 6, 4, '2024-08-21');
INSERT INTO lessons (id, course_id, theacher_id, date) VALUES (14, 4, 1, '2025-04-04');
INSERT INTO lessons (id, course_id, theacher_id, date) VALUES (15, 4, 7, '2024-06-18');
INSERT INTO lessons (id, course_id, theacher_id, date) VALUES (16, 2, 4, '2024-10-02');
INSERT INTO lessons (id, course_id, theacher_id, date) VALUES (17, 6, 6, '2024-05-28');
INSERT INTO lessons (id, course_id, theacher_id, date) VALUES (18, 5, 2, '2025-03-28');
INSERT INTO lessons (id, course_id, theacher_id, date) VALUES (19, 8, 2, '2024-12-03');
INSERT INTO lessons (id, course_id, theacher_id, date) VALUES (20, 10, 10, '2024-07-29');
INSERT INTO lessons (id, course_id, theacher_id, date) VALUES (21, 9, 3, '2024-11-01');
INSERT INTO lessons (id, course_id, theacher_id, date) VALUES (22, 1, 1, '2025-02-17');
INSERT INTO lessons (id, course_id, theacher_id, date) VALUES (23, 1, 7, '2024-06-12');
INSERT INTO lessons (id, course_id, theacher_id, date) VALUES (24, 4, 10, '2024-10-15');
INSERT INTO lessons (id, course_id, theacher_id, date) VALUES (25, 3, 3, '2025-05-08');
INSERT INTO lessons (id, course_id, theacher_id, date) VALUES (26, 7, 9, '2025-01-29');
INSERT INTO lessons (id, course_id, theacher_id, date) VALUES (27, 7, 4, '2024-12-08');
INSERT INTO lessons (id, course_id, theacher_id, date) VALUES (28, 6, 4, '2024-07-02');
INSERT INTO lessons (id, course_id, theacher_id, date) VALUES (29, 8, 5, '2024-11-20');
INSERT INTO lessons (id, course_id, theacher_id, date) VALUES (30, 5, 5, '2025-02-15');
INSERT INTO lessons (id, course_id, theacher_id, date) VALUES (31, 10, 1, '2024-11-12');
INSERT INTO lessons (id, course_id, theacher_id, date) VALUES (32, 1, 8, '2025-02-04');
INSERT INTO lessons (id, course_id, theacher_id, date) VALUES (33, 7, 2, '2024-10-10');
INSERT INTO lessons (id, course_id, theacher_id, date) VALUES (34, 9, 9, '2025-01-05');
INSERT INTO lessons (id, course_id, theacher_id, date) VALUES (35, 9, 9, '2024-06-18');
INSERT INTO lessons (id, course_id, theacher_id, date) VALUES (36, 9, 10, '2024-12-14');
INSERT INTO lessons (id, course_id, theacher_id, date) VALUES (37, 3, 4, '2025-04-16');
INSERT INTO lessons (id, course_id, theacher_id, date) VALUES (38, 2, 10, '2024-05-18');
INSERT INTO lessons (id, course_id, theacher_id, date) VALUES (39, 2, 8, '2024-12-07');
INSERT INTO lessons (id, course_id, theacher_id, date) VALUES (40, 3, 9, '2025-03-22');
INSERT INTO lessons (id, course_id, theacher_id, date) VALUES (41, 9, 2, '2024-12-28');
INSERT INTO lessons (id, course_id, theacher_id, date) VALUES (42, 1, 2, '2024-06-16');
INSERT INTO lessons (id, course_id, theacher_id, date) VALUES (43, 1, 5, '2025-02-10');
INSERT INTO lessons (id, course_id, theacher_id, date) VALUES (44, 9, 1, '2024-10-23');
INSERT INTO lessons (id, course_id, theacher_id, date) VALUES (45, 6, 2, '2024-10-18');
INSERT INTO lessons (id, course_id, theacher_id, date) VALUES (46, 4, 9, '2025-03-15');
INSERT INTO lessons (id, course_id, theacher_id, date) VALUES (47, 7, 5, '2024-08-24');
INSERT INTO lessons (id, course_id, theacher_id, date) VALUES (48, 7, 8, '2024-08-20');
INSERT INTO lessons (id, course_id, theacher_id, date) VALUES (49, 2, 10, '2024-09-09');
INSERT INTO lessons (id, course_id, theacher_id, date) VALUES (50, 6, 3, '2024-07-14');

INSERT INTO lesson_info (lesson_id, time, topic, room_number) VALUES (1, '10:30:00', 'Data Preprocessing', 'Room 107');
INSERT INTO lesson_info (lesson_id, time, topic, room_number) VALUES (2, '15:30:00', 'Model Evaluation', 'Room 109');
INSERT INTO lesson_info (lesson_id, time, topic, room_number) VALUES (3, '11:00:00', 'Natural Language Processing', 'Room 108');
INSERT INTO lesson_info (lesson_id, time, topic, room_number) VALUES (4, '11:45:00', 'Natural Language Processing', 'Room 101');
INSERT INTO lesson_info (lesson_id, time, topic, room_number) VALUES (5, '11:15:00', 'Natural Language Processing', 'Room 101');
INSERT INTO lesson_info (lesson_id, time, topic, room_number) VALUES (6, '17:45:00', 'Time Series', 'Room 110');
INSERT INTO lesson_info (lesson_id, time, topic, room_number) VALUES (7, '15:15:00', 'Model Evaluation', 'Room 107');
INSERT INTO lesson_info (lesson_id, time, topic, room_number) VALUES (8, '15:45:00', 'Model Evaluation', 'Room 104');
INSERT INTO lesson_info (lesson_id, time, topic, room_number) VALUES (9, '12:15:00', 'Model Evaluation', 'Room 108');
INSERT INTO lesson_info (lesson_id, time, topic, room_number) VALUES (10, '15:15:00', 'Natural Language Processing', 'Room 101');
INSERT INTO lesson_info (lesson_id, time, topic, room_number) VALUES (11, '17:15:00', 'Model Evaluation', 'Room 102');
INSERT INTO lesson_info (lesson_id, time, topic, room_number) VALUES (12, '10:45:00', 'Model Evaluation', 'Room 102');
INSERT INTO lesson_info (lesson_id, time, topic, room_number) VALUES (13, '11:00:00', 'Supervised Learning', 'Room 103');
INSERT INTO lesson_info (lesson_id, time, topic, room_number) VALUES (14, '13:00:00', 'Time Series', 'Room 103');
INSERT INTO lesson_info (lesson_id, time, topic, room_number) VALUES (15, '17:30:00', 'Data Preprocessing', 'Room 106');
INSERT INTO lesson_info (lesson_id, time, topic, room_number) VALUES (16, '11:00:00', 'Supervised Learning', 'Room 103');
INSERT INTO lesson_info (lesson_id, time, topic, room_number) VALUES (17, '15:30:00', 'Model Evaluation', 'Room 104');
INSERT INTO lesson_info (lesson_id, time, topic, room_number) VALUES (18, '17:15:00', 'Supervised Learning', 'Room 104');
INSERT INTO lesson_info (lesson_id, time, topic, room_number) VALUES (19, '9:15:00', 'Neural Networks', 'Room 109');
INSERT INTO lesson_info (lesson_id, time, topic, room_number) VALUES (20, '10:00:00', 'Supervised Learning', 'Room 102');
INSERT INTO lesson_info (lesson_id, time, topic, room_number) VALUES (21, '12:30:00', 'Data Preprocessing', 'Room 106');
INSERT INTO lesson_info (lesson_id, time, topic, room_number) VALUES (22, '11:45:00', 'Supervised Learning', 'Room 110');
INSERT INTO lesson_info (lesson_id, time, topic, room_number) VALUES (23, '16:00:00', 'Data Preprocessing', 'Room 103');
INSERT INTO lesson_info (lesson_id, time, topic, room_number) VALUES (24, '11:15:00', 'Data Preprocessing', 'Room 108');
INSERT INTO lesson_info (lesson_id, time, topic, room_number) VALUES (25, '9:15:00', 'Time Series', 'Room 105');
INSERT INTO lesson_info (lesson_id, time, topic, room_number) VALUES (26, '13:00:00', 'Neural Networks', 'Room 109');
INSERT INTO lesson_info (lesson_id, time, topic, room_number) VALUES (27, '15:15:00', 'Supervised Learning', 'Room 103');
INSERT INTO lesson_info (lesson_id, time, topic, room_number) VALUES (28, '15:00:00', 'Natural Language Processing', 'Room 109');
INSERT INTO lesson_info (lesson_id, time, topic, room_number) VALUES (29, '10:45:00', 'Time Series', 'Room 108');
INSERT INTO lesson_info (lesson_id, time, topic, room_number) VALUES (30, '12:30:00', 'Model Evaluation', 'Room 109');
INSERT INTO lesson_info (lesson_id, time, topic, room_number) VALUES (31, '17:30:00', 'Supervised Learning', 'Room 110');
INSERT INTO lesson_info (lesson_id, time, topic, room_number) VALUES (32, '15:15:00', 'Supervised Learning', 'Room 108');
INSERT INTO lesson_info (lesson_id, time, topic, room_number) VALUES (33, '11:00:00', 'Natural Language Processing', 'Room 110');
INSERT INTO lesson_info (lesson_id, time, topic, room_number) VALUES (34, '10:15:00', 'Supervised Learning', 'Room 102');
INSERT INTO lesson_info (lesson_id, time, topic, room_number) VALUES (35, '13:15:00', 'Natural Language Processing', 'Room 101');
INSERT INTO lesson_info (lesson_id, time, topic, room_number) VALUES (36, '17:30:00', 'Supervised Learning', 'Room 106');
INSERT INTO lesson_info (lesson_id, time, topic, room_number) VALUES (37, '14:00:00', 'Supervised Learning', 'Room 104');
INSERT INTO lesson_info (lesson_id, time, topic, room_number) VALUES (38, '10:00:00', 'Natural Language Processing', 'Room 101');
INSERT INTO lesson_info (lesson_id, time, topic, room_number) VALUES (39, '14:15:00', 'Natural Language Processing', 'Room 105');
INSERT INTO lesson_info (lesson_id, time, topic, room_number) VALUES (40, '12:30:00', 'Neural Networks', 'Room 107');
INSERT INTO lesson_info (lesson_id, time, topic, room_number) VALUES (41, '17:15:00', 'Time Series', 'Room 110');
INSERT INTO lesson_info (lesson_id, time, topic, room_number) VALUES (42, '12:30:00', 'Time Series', 'Room 103');
INSERT INTO lesson_info (lesson_id, time, topic, room_number) VALUES (43, '9:45:00', 'Data Preprocessing', 'Room 108');
INSERT INTO lesson_info (lesson_id, time, topic, room_number) VALUES (44, '17:45:00', 'Data Preprocessing', 'Room 108');
INSERT INTO lesson_info (lesson_id, time, topic, room_number) VALUES (45, '10:15:00', 'Model Evaluation', 'Room 108');
INSERT INTO lesson_info (lesson_id, time, topic, room_number) VALUES (46, '8:30:00', 'Model Evaluation', 'Room 102');
INSERT INTO lesson_info (lesson_id, time, topic, room_number) VALUES (47, '11:30:00', 'Supervised Learning', 'Room 103');
INSERT INTO lesson_info (lesson_id, time, topic, room_number) VALUES (48, '14:00:00', 'Model Evaluation', 'Room 109');
INSERT INTO lesson_info (lesson_id, time, topic, room_number) VALUES (49, '12:30:00', 'Unsupervised Learning', 'Room 104');
INSERT INTO lesson_info (lesson_id, time, topic, room_number) VALUES (50, '8:15:00', 'Model Evaluation', 'Room 105');