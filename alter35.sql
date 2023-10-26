create table customers(
customer_id int,
last_name varchar(100),
city varchar(50),
country varchar(50));

/* add column contact at the last in customers table*/
alter table customers
add contact int;

desc customers;

/* add column first name after customer id in customers table */
alter table customers
add first_name varchar(50) after customer_id ;

desc customers;

/* add SrNo. as first column in customers table */
alter table customers
add SrNo int first;

desc customers;

/* change column name first_name to custname oin the table */
alter table customers
change first_name cust_name;

alter table customers
rename column firstname to custname;

alter table customers
change first_name cust_name varchar(50);
desc customers;

/*  change last_name to surname in the employee table */

alter table customers
change last_name surname varchar(50);
desc customers;

/* modify datatype of column cust_name as varchar(200) */
alter table customers
modify column cust_name varchar(200);
desc customers;

/* drop column SrNo from customers table */
alter table customers
drop column srno;
desc customers;

/* Insert records in the customers table */
insert into customers(customer_id,cust_name,surname,city,country,contact)
values(1,'Prathamesh','Mahadik','Thane','Uganda',9922);

insert into customers(customer_id,cust_name,surname,city,country,contact)
values(2,'Lavu','Remulkar','Pune','Bangladesh',8855),
(3,'Shrikant','Deshmukh','Azamgarh','Nepal',7766);

#Approach2
insert into customers
values(4,'Mangesh','yadav','Mirzapur','Nigeria',5544);

insert into customers
values(5,'Harsh','Gupta','Colombo','West-Indies',3322),
(6,'Manas','Nair','Gorakhpur','Zimbabwe',4567),
(7,'Siddhesh','Jachak','Dholakpur','Russia',7894);

/* delete all the records from customers table */
truncate table customers;

/* Drop table customers */
drop table customers;