create	database SchoolUniform;
use SchoolUniform;

create table UNIFORM (
    ucode int primary key,
    uname varchar(255),
    ucolor varchar(255)
);

insert into UNIFORM values
    (1, 'Shirt', 'White'),
    (2, 'Pant', 'Grey'),
    (3, 'Tie', 'Blue');

create table COST (
    ucode int,
    size varchar(255),
    price int
);

insert into COST values
    (1, 'L', 580),
    (1, 'M', 500),
    (2, 'L', 890),
    (2, 'M', 810);
    
select * from UNIFORM;
select * from COST;
    
-- (1)
select A.ucode, A.uname, A.ucolor, B.price, B.size 
from UNIFORM as A, COST as B
where A.ucode = B.ucode;

-- (2)
select A.ucode, A.uname, A.ucolor, B.price, B.size 
from UNIFORM as A join COST as B
on A.ucode = B.ucode;

-- (3)
select A.ucode, A.uname, A.ucolor, B.price, B.size 
from UNIFORM as A natural join COST as B;



