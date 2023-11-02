create database university;
use university;

CREATE TABLE students (
    student_id INT,
    student_name VARCHAR(50)
);

CREATE TABLE instructors (
    instructor_id INT PRIMARY KEY,
    instructor_name VARCHAR(50),
    salary DECIMAL(10, 2)
);

CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_title VARCHAR(100),
    department_id INT,
    credits INT
);

CREATE TABLE enrollments (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    section_id INT
);

CREATE TABLE sections (
    section_id INT PRIMARY KEY,
    course_id INT,
    instructor_id INT,
    term VARCHAR(20),
    year INT,
    enrollment INT
);

INSERT INTO students (student_id, student_name) VALUES
    (1, 'Alice'),
    (1,'Roy'),
    (2, 'Bob'),
    (1,'Clark'),
    (1,'Justin'),
    (3, 'Charlie'),
    (4, 'David');

INSERT INTO instructors (instructor_id, instructor_name, salary) VALUES
    (1, 'Einstein', 75000.00),
    (2, 'Curie', 68000.00),
    (3, 'Newton', 80000.00),
    (4, 'Hawking', 90000.00);

INSERT INTO departments (department_id, department_name) VALUES
    (1, 'Comp. Sci.'),
    (2, 'Physics'),
    (3, 'Chemistry');

INSERT INTO courses (course_id, course_title, department_id, credits) VALUES
    (1, 'Database Systems', 1, 3),
    (2, 'Quantum Mechanics', 2, 4),
    (3, 'Programming in Java', 1, 3),
    (4, 'General Chemistry', 3, 4);

INSERT INTO enrollments (enrollment_id, student_id, section_id) VALUES
    (1, 1, 101),
    (2, 2, 101),
    (3, 1, 102),
    (4, 3, 102);

INSERT INTO sections (section_id, course_id, instructor_id, term, year, enrollment) VALUES
    (101, 1, 1, 'Autumn', 2009, 30),
    (102, 1, 2, 'Autumn', 2009, 25),
    (103, 2, 3, 'Autumn', 2009, 20),
    (104, 4, 4, 'Autumn', 2009, 22);
    
select * from students;
select * from instructors;
select * from departments;
select * from courses;
select * from enrollments;
select * from sections;

-- (a)
select A.course_title, B.department_name, A.credits
from courses as A inner join departments as B
on A.department_id = B.department_id
where B.department_name = "Comp. Sci." and credits = 3;

-- (b)
select distinct A.student_id, B.instructor_name
from students as A inner join instructors as B
on A.student_id = B.instructor_id
where instructor_name = "Einstein";

-- (c)
select max(salary) from instructors;

-- (d)
insert into instructors values
(5,"Hoffman",90000);
select instructor_id, instructor_name, salary from instructors
where salary = (select max(salary) from instructors);

-- (e)
select section_id, enrollment from sections
where term = "Autum" or year = 2009;

-- (f)
select max(enrollment) from sections
where term = "Autum" or year = 2009;

-- (g)
select * from sections
where enrollment = (select max(enrollment) from sections);
