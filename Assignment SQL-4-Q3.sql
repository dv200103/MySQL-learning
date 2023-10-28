create database WORKS_ON_DB;
use WORKS_ON_DB;

CREATE TABLE emp (
    eno INT PRIMARY KEY,
    ename VARCHAR(255),
    bdate DATE,
    title VARCHAR(255),
    salary DECIMAL(10, 2),
    dno INT
);

INSERT INTO emp (eno, ename, bdate, title, salary, dno)
VALUES
    (101, 'John', '1980-05-10', 'Manager', 60000.00, 1),
    (102, 'Alice', '1985-12-15', 'Engineer', 55000.00, 2),
    (103, 'Bob', '1990-08-20', 'Analyst', 50000.00, 2),
    (104, 'Carol', '1988-04-25', 'Technician', 45000.00, 1);

CREATE TABLE proj (
    pno INT PRIMARY KEY,
    pname VARCHAR(255),
    budget DECIMAL(10, 2),
    dno INT
);

INSERT INTO proj (pno, pname, budget, dno)
VALUES
    (1, 'Project A', 80000.00, 1),
    (2, 'Project B', 60000.00, 2),
    (3, 'Project C', 75000.00, 1);

CREATE TABLE dept (
    dno INT PRIMARY KEY,
    dname VARCHAR(255),
    mgreno INT
);

INSERT INTO dept (dno, dname, mgreno)
VALUES
    (1, 'Sales', 101),
    (2, 'R&D', 102);

CREATE TABLE workson (
    eno INT,
    pno INT,
    resp VARCHAR(255),
    hours INT
);

INSERT INTO workson (eno, pno, resp, hours)
VALUES
    (101, 1, 'Manager', 40),
    (102, 2, 'Developer', 35),
    (103, 2, 'Analyst', 30),
    (104, 1, 'Technician', 25),
    (101, 3, 'Manager', 38),
    (104, 3, 'Technician', 20);

select * from emp;
select * from proj;
select * from dept;
select * from workson;

-- (1)
update proj set budget = 105000 where pno = 3;

select pno, pname from proj where budget > 100000;

-- (2)
update workson set hours = 8 where pno = 3 and resp = "Manager";

select * from workson where hours = 8 and resp = "Manager";

-- (3)
update emp set title = "EE" where eno = 102;

update emp set title = "SA" where eno = 103;

select eno, ename from emp where title in ("EE","SA") and salary > 35000;

-- (4)
alter table emp modify dno varchar(10);

update emp set dno = "D1" where dno = 1;
update emp set dno = "D2" where dno = 2;

select ename from emp where dno = "D1" order by salary desc;

-- (5)
select * from dept order by dname;