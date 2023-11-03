create database subq;
use subq;

CREATE TABLE CUSTOMER (
    CUST_ID INT PRIMARY KEY,
    NAME VARCHAR(50),
    OCCUPATION VARCHAR(50),
    AGE INT
);

INSERT INTO CUSTOMER (CUST_ID, NAME, OCCUPATION, AGE)
VALUES
    (101, 'PETER', 'ENGINEER', 32),
    (102, 'JOSEPH', 'DEVELOPER', 30),
    (103, 'JOHN', 'LEADER', 28),
    (104, 'STEPHEN', 'SCIENTIST', 45),
    (105, 'SUZI', 'CARPENTER', 26),
    (106, 'BOB', 'ACTOR', 25),
    (107, NULL, NULL, NULL);
    
    CREATE TABLE ORDERS (
    ORDER_ID INT PRIMARY KEY,
    CUST_ID INT,
    PROD_NAME VARCHAR(50),
    ORDER_DATE DATE
);

INSERT INTO ORDERS (ORDER_ID, CUST_ID, PROD_NAME, ORDER_DATE)
VALUES
    (1, 101, 'LAPTOP', '2022-01-10'),
    (2, 103, 'DESKTOP', '2022-02-11'),
    (3, 106, 'IPHONE', '2022-03-13'),
    (4, 104, 'MOBILE', '2022-03-05'),
    (5, 102, 'TV', '2022-03-20');

select * from customer;
select * from orders;

-- (1)
select *
from customer as A right join orders as B
on A.CUST_ID = B.CUST_ID
where A.CUST_ID is null;

-- (2)
select * from customer as A left join orders as B
on A.CUST_ID = B.CUST_ID
where B.CUST_ID is null;

-- (3)
select A.Name
from customer as A inner join orders as B
on A.CUST_ID = B.CUST_ID
where prod_name = "Laptop";

-- (4)
select *
from customer as A inner join orders as B
on A.CUST_ID = B.CUST_ID
where prod_name = "Iphone";

-- (5)
select * from customer as A left join orders as B
on A.CUST_ID = B.CUST_ID
where B.CUST_ID is null;

-- (6)
select count(Customer_order.cust_id) from (select A.cust_id
from customer as A inner join orders as B
on A.CUST_ID = B.CUST_ID) as Customer_order;