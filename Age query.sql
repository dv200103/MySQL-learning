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

alter table chk modify Age int check(Age >= 18);
update chk set Age = 18 where Sr_no = 1;
