create database emp_db;

show databases;

use emp_db;

create table emp(
id int primary key auto_increment,
name varchar(100),
age int not null check(age>=25),
department varchar(100),
salary int default 0,
city varchar(50) not null,
contact int(10) not null);

desc  emp;

insert into emp(name,age,department,salary,city,contact)
values('Rohan',26,'IT',85000,'Mumbai',1234);

insert into emp
values(null,'Lavu',27,'Support',80000,'Thane',4567);

insert into emp
values(null,'Priyanka',25,'HR',55000,'Pune',1111),
(null,'Akshay',28,'IT',65000,'Thane',1222),
(null,'Shrikant',29,'IT',75000,'Mumbai',4444);

insert into emp(name,age,department,city,contact)
values('Vrushti',27,'Support','Powai',9999);

insert into emp
values(null,'Harsh',26,'HR',60000,'Kanpur',1456),
(null,'Siddhesh',28,'IT',78000,'Thane',1233),
(null,'Anish',29,'IT',95000,'Mumbai',7894);

insert into emp
values(null,'Reshma',25,'HR',65000,'Thane',1258),
(null,'Shruti',25,'IT',88000,'Powai',5865),
(null,'Tanvi',26,'Support',82000,'Mumbai',8532);



/* Select all the columns from the table */
select *
from emp;

/* to select only one column */
select name
from emp;

/* select more than one column */
select name,age,department
from emp;

/* select name as first_name from table (alias:as)*/
select name as first_name
from emp;

select name first_name
from emp;

/* Multiple alias */
select name as first_name,department as dept,salary as monthly_salary
from emp;

select * from emp;

/* Operators */
-- Arithmetic Operators (+,-,*,/,%)

select 12+3;
select 12-3;
select 12*3;
select 12/3;
select 13%3;

create table temp(
x int,
y int);

insert into temp
values(10,3),(9,2),(6,3),(5,2);

select x,y,x+y from temp;

select x,y,x+y,x-y,x*y,x/y,x%y from temp;

select x,y,x+y as Addition,
x-y as Subtraction,
x*y as Multiplication,
x/y as Division,
x%y as modulus
from temp;

/* Comparison oparators */

/* select all the records of IT department */
select *
from emp
where department='it';

/* select all the records excluding IT department */
select *
from emp
where department != 'IT';
select *
from emp
where department <> 'IT';

/* Select all the records whose salry is above 80000 */
select *
from emp
where salary > 80000;

/* Select all the records whose salry is either or above 80000 */
select *
from emp
where salary >= 80000;

/* Select all the records whose salry is either or below 80000 */
select *
from emp
where salary <= 80000;

/* Select all the records whose salary is 80000 */
select *
from emp
where salary = 80000;

/* Select all the records whose salary is not 80000 */
select *
from emp
where salary != 80000;

/* Select all the records whose salry is below 80000 */
select *
from emp
where salary < 80000;

select * from emp;

/* Logical Operators (and,or,not)*/

/* select all the records where salary is above 90000 in it department */
select *
from emp
where salary > 90000 and department='it';

/* select all the records where salary is below 80000 in it department */
select *
from emp
where salary < 80000 and department='IT';


/* select all the records who live in Mumbai or Thane */

select *
from emp
where city='thane' or city='mumbai'; 

/* select all the records who live in Mumbai or Powai or Kanpur */
select *
from emp
where city='powai' or city='mumbai' or city='kanpur';

 /* select all the records excluding who live in Mumbai */
 
select *
from emp
where not city ='mumbai';

select *
from emp
where city !='mumbai';

/* select all the records whose salary lies within 55000 to 85000 */
select *
from emp
where salary >=55000 and salary <= 85000;

select *
from emp
where salary between 55000 and 85000;

/* select all the records whose excluding salary lies within 55000 to 85000 */
select *
from emp
where salary not between 55000 and 85000;

/* select unique department from the table */
select department from emp;

select unique department from emp;

select distinct department from emp;

/* select unique names of cities from the table */
select distinct city from emp;

/* select all the records from mumbai,powai,thane */
select *
from emp
where city ='mumbai' or city = 'powai' or city='thane';

select *
from emp
where city in ('mumbai','thane','powai');

/* select all the records excluding mumbai,powai,thane */

select *
from emp
where city not in ('mumbai','thane','powai');

/* LIKE Operator : filtering purpose */
select * from emp;

select * from emp where name like 'a%'; -- starts with a
select * from emp where name like '%a'; -- ends with a
select * from emp where name like '_a%'; -- second alphabet is a
select * from emp where name like '%a%'; -- a is anywhere
select * from emp where name like 'L___';-- start with L and exactly three characters after L
select * from emp where name like 'p%a';-- name starts with p and ends with a 

select * from emp where name not like 'a%';-- name not starts with a

/* Limit clause */
select * from emp;-- all records

select * from emp limit 5; -- top 5 records

/* select records from 5 to 10 */
select *
from emp
where id >=5 and id <=10;

select *
from emp
where id between 5 and 10;

select *
from emp
limit 5,6; -- starting is exclusive so we have to take 4 as starting position

select *
from emp
limit 4,6;

/* order by */
select * from emp;

/* select all the records from the table in increasing order of salary */
select *
from emp
order by salary;

select *
from emp
order by salary asc;

/* select all the records from the table in decreasing order of salary */
select *
from emp
order by salary desc;

/* Find a person with a highest salary in a table*/
select *
from emp
order by salary desc limit 1;

/* Find a person with a second highest salary in a table*/
select *
from emp
order by salary desc limit 1,1;