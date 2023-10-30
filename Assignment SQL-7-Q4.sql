use SchoolUniform;

create table student (
SID int,
NAME varchar(30),
LOCATION varchar(30)
);

insert into student values
(1,"Ajith","Chennai"),
(2,"Ramaya","Pune"),
(3,"Divya","Delhi"),
(4,"Kumar","Goa"),
(5,"Sanjay","Kolkata"),
(6,"Jerry","Nagpur"),
(null,null,null);

create table projects (
id int,
project varchar(30)
);

insert into projects values
(2,"python"),
(3,"web"),
(3,"sql"),
(4,"python"),
(2,"java"),
(null,null),
(7,"Numpy"),
(9,"Panda");

select * from student;
select * from projects;

-- (1)
select A.SID, A.NAME, A.LOCATION, B.project
from student as A inner join projects as B
on A.SID = B.ID;

-- Explaination
/* Inner join is used to fetch the common data between two table based on the any one specific column of one table for example 
ID */

--  (2) 
select A.SID, A.NAME, A.LOCATION, B.project
from student as A left join projects as B
on A.SID = B.ID;

/* Left join gives the rows of common data (inner join) and as well as gives the data of column (ID) for left table which is on the left side
of the join function , if the value is not present in other table for left column of left table which is maintain after on clause then it will
show null, left join is used when we have to fetch the common data as well as the data from the left table for any specific column and fetch the
rows of left table through that column.*/

-- (3)
select A.SID, A.NAME, A.LOCATION, B.project
from student as A Right join projects as B
on A.SID = B.ID;

/* Right join is used to fetch the common data between two table as well as the data from the right table ,
It is totally opposite of the left join, it is used when we have to prioritize or fetch the data from the right table.*/

-- (4)
select A.SID, A.NAME, A.LOCATION, B.project
from student as A cross join projects as B;

/* Cross join is used when we have to get the every possibility of the two table data, in this firstly one row of the one table gets paired
with the all the rows of the other table and then second row of the first table get paired with the all the rows of the other table and so 
on until all the rows of first table gets paired with all the rows of the other table for examlple if we have 6 row one table and 6 row of
other table then output for cross join will come with 36 rows = 6 rows * 6 rows.*/

 
