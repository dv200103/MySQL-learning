use farmer;
select * from worker;

-- (1)
select * from worker where NAME like "P%";

-- (2)
select NAME from worker where SALARY between 3000 and 5000;

-- (3)
select * from worker order by SALARY desc; 

-- (4)
select ID,NAME as ENAME,DEPARTMENT as Dept,SALARY,LOCATION from worker limit 2;

-- (5)
select * from worker where NAME like "%a_";