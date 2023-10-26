/* Application of the reverse function in corporate*/
-- Data validation for email verification.
create database rev;
use rev;

create table users(
id int primary key auto_increment,
email varchar(255) not null);

insert into users(email) values 
("abc@gmail.com"),
("xyz@gmail.com");

select * from users where reverse(email) like "%moc.liamg@%";

select * from users;

-- Data manipulation for creating new column.
create table orders(
id int primary key auto_increment,
order_number int  not null);

insert into orders(order_number) values 
(164575),
(366347);

alter table orders add column rev_order_number int;
update orders set rev_order_number = reverse(order_number); 
drop table orders;
select * from orders;

-- Data encryption for password
create table pass(
id int primary key auto_increment,
username varchar(255) not null,
Password varchar(50) not null);

insert into pass (username,Password) values
("abcd12","3874ryurg"),
("gfhj22","vgfyukjkl4");

update pass set password = reverse(password);
drop table pass;
select * from pass;

-- Data security for sensitive details like credit card number.
create table customers(
id int primary key auto_increment,
Name varchar(255) not null,
Credit_Card_number varchar(255) not null);

insert into customers (Name,Credit_Card_number) values
("ohgijrhg","6462-3768-2589"),
("gvifvhej","3286-3252-2055");

update customers set Credit_Card_number = reverse(Credit_Card_number);
select * from customers;
 