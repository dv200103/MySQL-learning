create database progress;

use progress;

create table stu_pro(
stu_id int primary key,
stu_name varchar(30),
stu_address varchar(50),
stu_phno bigint,
stu_percentage int);

insert into stu_pro values
(1,"Rahul","Agra",9557806625,85),
(2,"Ankit","Delhi",8855664471,75),
(3,"Shailendra","Noida",7213457896,92);

select * from stu_pro;
-- (1)
select stu_id,stu_name,stu_address,stu_percentage from stu_pro
where stu_percentage > 80;

-- (2)
update stu_pro
set stu_percentage = 87
where stu_id = 1;
truncate stu_pro;
-- (3)
delete from stu_pro
where stu_id = 2;