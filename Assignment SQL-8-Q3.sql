create database crin;
use crin;

CREATE TABLE student_reg (
    sid INT PRIMARY KEY,
    name VARCHAR(50),
    per DECIMAL(5, 2),
    city VARCHAR(50)
);

INSERT INTO student_reg (sid, name, per, city) VALUES
(1, 'Harry', 95.26, 'Pune'),
(2, 'Mac', 98.45, 'Nashik'),
(3, 'Rox', 75.69, 'Nagar'),
(4, 'Shree', 85.65, 'Thane'),
(5, 'Seema', 89.45, 'Mumbai');

CREATE TABLE student_course (
    cid INT,
    sid INT,
    cname VARCHAR(50),
    branch VARCHAR(50)
);

INSERT INTO student_course (cid, sid, cname, branch) VALUES
(1, 1, 'Web designing', 'Mumbai'),
(2, 2, 'Python', 'Pune'),
(3, 4, 'PHP', 'Thane'),
(4, 5, 'DBMS', 'Nashik'),
(3, 1, 'PHP', 'Thane');

select * from student_reg;
select * from student_course;

-- Cross join
select * 
from student_reg cross join student_course;

-- inner join
select * 
from student_reg as A inner join student_course as B
on A.sid = B.sid;