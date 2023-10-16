-- (1)
create database dr;
use dr;
create table dr_info(
Dr_ID int primary key,
Dr_Name varchar(30),
Dept varchar(30));

-- (2)
insert into dr_info values
(1011,"Ärjun A","Ortho"),
(1022,"Varun M","Paediatrics"),
(1033,"Manohar","ENT");

-- (3)  
update dr_info 
set Dr_ID = 1044
where Dr_Name = "Manohar";

truncate dr_info;
drop table dr_info;
select * from dr_info;

-- (4)
delete from dr_info
where Dr_ID = 1011;

-- (5) (6)
alter table dr_info
add salary int default 50000;