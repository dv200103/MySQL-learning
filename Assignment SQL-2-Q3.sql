-- (1)
create database electronic;
use electronic;

create table e_data(
eid int,
ename varchar(30),
esalary float,
email varchar(80),
dob date);

insert into e_data values
(1,"XYZ",3000.89,"xyz@gmail.com","1990-08-30"),
(2,"ABC",2300.90,"abc@gmail.com","1980-03-21");

select * from e_data;
truncate e_data;
drop table e_data;

-- (2)
update e_data
set esalary = 4000.68, dob = "1993-08-30"
where eid=1;

-- (3)
delete from e_data;