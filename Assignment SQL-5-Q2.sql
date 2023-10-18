create database marketing;
use marketing;

create table SALESMAN(
SNO char(3),
SNAME varchar(30),
SALARY int,
BONUS float(4,2),
DATE_OF_JOIN date);

insert into SALESMAN values
("A01","Beena Mehta",30000,45.23,str_to_date("29-10-2019","%d-%m-%Y")),
("A02","K.L Sahay",50000,25.34,str_to_date("13-03-2018","%d-%m-%Y")),
("B03","Nisha Thakkar",30000,35.00,str_to_date("18-03-2017","%d-%m-%Y")),
("B04","Neela Yadav",80000,null,str_to_date("31-12-2018","%d-%m-%Y")),
("C05","Gautam Gola",20000,null,str_to_date("23-01-1989","%d-%m-%Y")),
("C06","Trapti Garg ",70000,12.37,str_to_date("15-06-1987","%d-%m-%Y")),
("D07","Neena Sharma",50000,27.89,str_to_date("18-03-1999","%d-%m-%Y"));

drop table SALESMAN;
select * from SALESMAN;

-- (a)
update SALESMAN set BONUS = round(BONUS);
alter table SALESMAN modify BONUS int;
select SNAME,BONUS from SALESMAN;

-- (b)
select SNAME,locate("ta",SNAME) as position from SALESMAN;

-- (c)
select SNAME,substr(SNAME,2,4) as characters from SALESMAN;

-- (d)
select DATE_OF_JOIN,date_format(DATE_OF_JOIN,"%b") as Joining_Month from SALESMAN;

-- (e)
select DATE_OF_JOIN,date_format(DATE_OF_JOIN,"%a") as Joining_Weekday from SALESMAN;