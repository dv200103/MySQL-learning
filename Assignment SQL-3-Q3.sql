create database farmer;
use farmer;

-- (1)
create table worker(
ID int,
NAME varchar(20),
DEPARTMENT varchar(30),
SALARY int,
LOCATION varchar(30));

insert into worker values
(1,"Jay","HR",5000,"Chennai"),
(2,"Yash","Management",7000,"Pune"),
(3,"Annand","Training",6000,"Chennai"),
(4,"Ruhi","Sales",4000,"Delhi"),
(5,"Pratik","Admin",3000,null);

select * from worker;
drop table worker;

-- (2)
select NAME as WORKER_NAME
from worker;

-- (3)
select distinct DEPARTMENT from worker;