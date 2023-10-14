create database assign;
use assign;
-- (1)
create table emp(
ename varchar(25),
dept char(30),
salary float(8,2),
mobnum bigint);

-- (2)
alter table emp
drop mobnum;

-- (3)
alter table emp
add HRA varchar(50);

-- (4)
alter table emp
modify dept varchar(30);

-- (5)
/* mobnumm can't be reaname because it was removed in -- (2),
if still you want to rename the mobnum column themn first we have to add mobnum column and then we can rename the mobnum column,
Here is the code in order to do above changes 

alter table emp
add mobnum bigint;

alter table emp
change mobnum contcat bigint;   */

-- (6)
desc emp;
