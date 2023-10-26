-- Insert into

create table customers(
customer_id int primary key,
last_name varchar(50),
address varchar(100),
city varchar(50));

# add column first_name after customer_id in the cutomers table
alter table customers
add first_name varchar(50) after customer_id;

desc customers;
# change the name of a column city to state
alter table customers
rename column city to state;

desc customers;
# change the name of a column address to city 
alter table customers
change address city varchar(50);

desc customers;

insert into customers
values(1,'jayesh','patil','Thane','MH'),
(2,'Sameer','pardhi','Kalyan','MH'),
(3,'Siddhesh','patel','surat','GJ'),
(4,'Naresh','Shetttttyy','Chennai','TN'),
(5,'Subhash','Reddy','Manglore','KN'),
(6,'George','Bush','Satara','MH'),
(7,'Kim Jong','Un','Ghatkopar','MH'),
(8,'Barack','Obama','Nalasopara','MH'),
(9,'Shreeyash','Vekhande','Pune','MH'),
(10,'Jawwad','Khan','Mumbra','MH');

-- update
#update the name of city where the name is Kim Jong
update customers
set city='Mumbai';

truncate table customers;

update customers
set city='Mumbai'
where first_name='Kim Jong';

#udate the surame where the name is Naresh and city is chennai
update customers
set last_name = 'Shetty'
where customer_id=4;

#update the surname as Jadhav, city as Pune and state as MH where the name is siddhesh
update customers
set last_name='Jadhav',city='Pune',state='MH'
where customer_id=3;

#delete a record where the city is pune
delete from customers
where city='pune';

#delete without any condition
delete from customers;
