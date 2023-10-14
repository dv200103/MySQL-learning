/*(1)*/ 
create database emp;

use emp;

/*(2)*/
create table employee(
emp_id int,
Name varchar(50),
Age int,
Gender varchar(30));

/*(3)*/ 
alter table employee rename to empinfo;

/*(4)*/
select * from empinfo;