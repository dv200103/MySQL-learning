/* Insert into */

create table customers(
customerid int,
lastname varchar(50),
address varchar(50),
city varchar(50));

alter table customers
add firstname varchar(50) after customerid;
desc customers;

alter table customers
change city state varchar(50);
desc customers;

alter table customers
change address city varchar(50);
desc customers;

insert into customers
values(1,'Jayesh','Patil','Thane','MH'),
(2,'Mahesh','Shinde','Pune','MH'),
(3,'Naresh','Sherrtty','Chennai','TN'),
(4,'Subhash','Reddy','Banglore','KN'),
(5,'Jaswinder','Singh','Bhatinda','PN'),
(6,'George','Bush','Satara','MH'),
(7,'Kim Jong','Un','Sangli','MH'),
(8,'Mohandas','Chaudhary','Ooty','KN'),
(9,'Sandesh','Jadhav','Ratnagiri','MH'),
(10,'Vijay','Patil','Amravati','MH');

/* Update */

/* update the name of city where name is KIm Jong */
update customers
set city='Bhandup' where firstname='Kim Jong';

/* update the name of city where name is George Bush */
update customers
set city='Nalasopara' where customerid=6;

/* update two values once at a time */
update customers
set firstname='Nagesh',lastname='Shetty' where customerid=3;

update customers
set lastname='Gandhi' where customerid=8;

/* Delete */
delete from customers
where customerid=6;

# if I not use where condition
delete from customers;
