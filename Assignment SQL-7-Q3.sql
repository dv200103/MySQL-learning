use SchoolUniform;

create table employees (
    id int,
    employee_name varchar(255),
    dept_id int
);

insert into employees values
(1, 'john', 4),
(2, 'sid', 1),
(3, 'payal', 5),
(4, 'tushar', 3),
(5, 'manoj', null);

create table departments (
    dept_id int,
    dept_name varchar(255)
);

insert into departments values
(1, 'sales'),
(2, 'HR'),
(3, 'Engineering'),
(4, 'IT'),
(5, 'MANAGEMENT');

select * from employees;
select * from departments;

select A.dept_id, A.id, A.employee_name, B.dept_name
from employees as A join departments as B
on A.dept_id = B.dept_id;
