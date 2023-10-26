create database  cnst;
use cnst;

-- 1. Not Null
/* Not null : No blank record in that particular column */
create table student(
studentID int not null,
name varchar(255),
standard int);

desc student;

insert into student
values(Null,'jayesh',3);

drop table student;

-- 2:Unique
/* To avoid duplication or repetition in aparticular column */
create table student(
studentID int unique,
name varchar(255),
standard int);

desc student;

insert into student
values(1,'Akshay',3),
(1,'Lavu',5);

drop table student;

-- 3.Primary key
/* Combination of not null and unique */
create table student(
studentID int unique not null,
name varchar(255),
standard int);

desc student;
drop table student;

create table student(
studentID int primary key,
name varchar(255),
standard int);

desc student;

insert into student
values(1,'Jayesh',3),
(Null,'harsg',5),
(1,'mangesh',4);

drop table student;

-- 4.check
/* to evaluate a partucalr condition in a column while inserting a record */

create table student(
studentID int primary key,
first_name varchar(255),
last_name varchar(255),
contact varchar(10),
Age int check(age>=15));

desc student;

insert into student
values(1,'jayesh','patil','12345678',14);

insert into student
values(1,'jayesh','patil','12345678',16);

drop table student;

-- 5.default
/* to assign some default value to the particular column when the value is not inserted */

create table student(
studentID int primary key,
first_name varchar(255),
last_name varchar(255),
contact varchar(10),
Age int check(age>=15),
email varchar(40) default 'xyz@gmail.com');

desc student;

insert into student(studentID,first_name,last_name,contact,Age)
values(1,'jayesh','patil','123456',17);

