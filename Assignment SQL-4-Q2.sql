create database EMPDEPENDENT;
use  EMPDEPENDENT;

create table EMPLOYEE (
    AadhaarNo varchar(30),
    Name varchar(255),
    Address varchar(255),
    Department varchar(50),
    EmpID int primary key
);

insert into Employee values
	("1234 5678 9012", "Rahul Sharma", "Powai", "IT", 1001),
	("2345 6789 0123", "Pratik Patil", "Dadar", "HR", 1002),
	("3456 7890 1234", "Sunil Naik", "Kalyan", "Sales", 1003),
	("4567 8901 2345", "Vivek Vishwakarma", "Dombivali", "Marketing", 1004),
	("5678 9012 3456", "Annant Ray ", "Kanjurmarg", "Engineering", 1005);

select * from EMPLOYEE;
drop table EMPLOYEE;
desc EMPLOYEE;

create table DEPENDENT (
    EmpID int,
    DependentName varchar(255),
    Relationship varchar(50)
);

insert into DEPENDENT values
	(1001,"Dilip Sharma","Brother"),
    (1002,"Prabhas Patil","Father"),
	(1003,"Sudir Naik","Son"),
    (1004,"Deepak VishwaKarma","Brother"),
    (1005,"Ritik Ray","Son");
    
select * from DEPENDENT;
drop table DEPENDENT;
desc DEPENDENT;

-- (a)
select A.EmpID, Name as Employee_Name, DependentName as Relatives
from EMPLOYEE as A inner join DEPENDENT as B
on A.EmpID = B.EmpID;

-- (b)
update EMPLOYEE set Department = "Production" where EmpID in (1002,1003);

select * from EMPLOYEE where Department = "Production";

-- (c)
delete from DEPENDENT where EmpID in (1003,1004);

select A.EmpID, Name as Employee_Name, DependentName as Relatives
from EMPLOYEE as A left join DEPENDENT as B
on A.EmpID = B.EmpID
where B.EmpID is null;

-- (d)
insert into DEPENDENT values 
(1001,"Nehal Sharma","Brother"),
(1005,"Aman Ray","Brother");

update EMPLOYEE set Department = "Sales" where EmpID in (1001,1005);

select distinct A.EmpID, Name as Employee_Name, Department
from EMPLOYEE as A inner join DEPENDENT as B
on A.EmpID = B.EmpID
Where Department = "Sales" and A.EmpID in (select EmpID from DEPENDENT group by EmpID having count(*) = 2);
