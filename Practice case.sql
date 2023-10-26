/* Case clause is divided into two types which are 
1) Case Statement : We can give condition for E.G price >= 30
2) Case Expression : We can't give condition, we have to directly maintain the discrete value for E.G  when 30 then "Expensive Products",
	30 is price here.*/


create database case_practice;
use case_practice;

create table products (
Product varchar(20),
Price int
);

insert into products values 
("Pen", 12),
("Pencil", 10),
("Book",30),
("Cardboard", 25),
("Divider", 35);

select * from products;

-- 1) Case Statement 
select product,price, case
when price >= 30 then "Expensive Product" 
when price >= 20 and price < 30 then "Inexpensive products"
else "Affordable Products"
end as "Remarks"
from Products;

create table Railway (
Train varchar(20),
Class varchar(20)
);

insert into railway values 
("A",1),
("B",2),
("C",3);

select * from railway;
truncate table railway;
alter table railway
modify class int;
describe railway;

-- 2) Case Expression
select train, case class
when 1 then "First Class"
when 2 then "Second Class"
else "Third Class"
end as "Type"
from railway;


  