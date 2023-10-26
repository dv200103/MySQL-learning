# create database pqr
create database pqr;

/* create database having name is 123 */
create database 123;
/* create database having special character in its name */
create database a@r;
/* create database having alphanumeric name */
create database sql35;

create database 123sql;

create database mno;

/* show all the existing databases */
show databases;

/* wriet a query to drop a database */
drop database pqr;

/* write a query to use a particular database  by default*/
use sql35;

/* Write a query to create a table student having columns SID,first_name,last_name,city,country */
create table student(
SID int,
First_Name char(50),
Last_Name char(50),
City char(50),
Country char(50));

/* write a query to describe a table table */
describe student;
desc student;

/* Write a query to drop a entire table */
drop table student;


show tables;

create table student(
SID int,
First_Name char(50),
Last_Name char(50),
City char(50),
Country char(50));

show tables;

drop table student;

create table student(
SID int,
First_Name char(50),
Last_Name char(50),
City char(50),
Country char(50));

/* Rename the table student as studentdata */
rename table student to studentdata;
show tables;