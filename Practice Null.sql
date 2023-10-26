create database pr1;
use pr1;

create table test1(
ID int,
Name varchar(30),
Gender varchar(20),
Age int,
Salary int);

insert into test1(ID,Name,Gender,Age,Salary) values
(1,"Kapil","Male",23,23000),
(2,"Abhi","Male",26,34666),
(3,"Karan","Male",25,56568);

insert into test1 (Name,Gender) values ("Vivek","Male");

select Name , Salary, age from test1 where ID is null; -- and Salary is null and Age is null;
delete from test1 where ID is null and Name = "vivek";
update test1 set Name = null where ID is null;

select * from test1 where Age  in(26,25);

select * from test1;
drop table test1;

select truncate(1999,-3);

select distinct Gender from test1;

select gender as category from test1;

select id, Name from test1
order by Name;

select Name from test1 
limit 2,1;

select concat("Good","Morning");
select concat("Good"," ","Morning");
select concat("Good "," Morning");
select concat("Good "," Morning") as Greeetings;

select lower("DATABASE MANAGEMENT SYSTEM");

select upper("database management system");

select replace("Let us learn","us","Them");

select replace("Let us learn","Us","Them");  -- replace is case sensative.

select replace("Let us learn","us","Them") as Study; -- replace function with aliases(as)

select substr("ghfehurgokrejghshgroeg",5,3);

select substr("wefhweifiewgrfw",4,2.6);

select substr("gergregerg",-7,3);

select length("fefjej4567@%$%%");

select reverse("kjoi3i4359$%^&");

select length(ltrim("            354647igusdf$$^&"));

select rtrim("hiuviwgirei32r8236##$$         ");

select abs(-2);

select ceil(2.1);

select floor(2.9);

select mod(19,9);

select round(1.21);

select round(1.984,2);

select round(2224.934,-2);

select truncate(3233.55588,2);

select truncate(43546.56646,-3);

select exp(2);

select power(3,3);

select sqrt(4);

select curdate();

select now();

select sysdate();

select last_day("2023-10-17");

select last_day(curdate());

select datediff("2023-10-17","2001-05-03");

select date_format("2023-09-23","%r");

select month(curdate());

select year(now());

use farmer;
select * from worker;

select min(SALARY) as second_min_salary from(select SALARY from worker where SALARY > (SELECT min(SALARY) from worker))as abc;
select max(SALARY) as second_max_salary from(select SALARY from worker where SALARY < (SELECT max(SALARY) from worker))as abc;




