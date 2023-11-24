create database khan_query;
use khan_query;

create table chk(
Sr_No int primary key auto_increment,
Age int
);
drop table chk;
select * from chk;
desc chk;
insert into chk(Age) values
(1),
(41),
(21);

BEGIN;
DELETE FROM chk WHERE Sr_No = 2;
ROLLBACK;

alter table chk modify Age int check(Age >= 18);
update chk set Age = 18 where Sr_no = 1;

create table tesla (
Product varchar(10),
Unit int,
Price int
);

insert into tesla values
("ABC",1,10000),
("ADC",2,20000),
("ABD", null, null);

select * from tesla;

select Product, Unit, Price, unit <=> price as compare from tesla; 

create table empt(
SrNo int,
Name varchar(10)
);

insert into empt values
(1,"Asif     k"),
(2,"Aman");

select * from empt;
drop table empt;
select replace(Name," ","") from empt;

