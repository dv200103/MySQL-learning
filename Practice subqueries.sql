use farmer;
show tables;
select * from worker;

select min(salary) from worker; -- gives the min salary
 
select min(salary) from worker where salary !=(select min(salary) from worker); -- gives the second min salary

select max(salary) from worker; -- gives max salary 7000

select max(salary) from worker where salary != (select max(salary) from worker); -- gives second max salary 6000

select max(salary) from worker where salary < (select max(salary) from worker where salary != (select max(salary) from worker));
-- gives third highest salary

select * from worker where salary = (select max(salary) from worker where salary != (select max(salary) from worker));
-- gives the row or record of the second max salary
  
select salary from worker where salary = (select max(salary) from worker where salary != (select max(salary) from worker))  salary = (select max(salary) from worker where salary < (select max(salary) from worker where salary != (select max(salary) from worker)));
-- gives the second highest salary and third highest salary in single query.

select * from worker where salary = (select max(salary) from worker where salary != (select max(salary) from worker)) or salary = (select max(salary) from worker where salary < (select max(salary) from worker where salary != (select max(salary) from worker)));
-- gives the rows or records of second highest salary and third highest salary

select * from worker where salary in ((select max(salary) from worker), (select max(salary) from worker where salary != (select max(salary) from worker)), (select max(salary) from worker where salary < (select max(salary) from worker where salary != (select max(salary) from worker))));
-- gives the maximum, second max, third max salary with the use of "in operator 

select * from worker where salary < All (select max(salary) from worker union select max(salary) from worker where salary != (select max(salary) from worker) union select max(salary) from worker where salary < (select max(salary) from worker where salary != (select max(salary) from worker)));
-- gives all the minimum value which doesn't contain maximum value, second max and third max.


select * from worker where salary < All (select max(salary) from worker where salary < (select max(salary) from worker where salary != (select max(salary) from worker)));
-- gives all the minimum value which doesn't contain maximum value, second max and third max.

select max(SALARY) as second_max_salary from(select SALARY from worker where SALARY < (SELECT max(SALARY) from worker))as abc;

update worker set  salary = 6000 where id in (4,5);
update worker set salary = 4000 where id = 4;
update worker set salary = 3000 where id = 5;

-- 1. Write a query to find the employees whose salary is equal to the salary of at least one employee in department of id 300?
select Name,Salary from worker where Name != (select name from worker where ID = 3) and salary = (select salary from worker where ID = 3);

-- 2. Write a query to find the employees whose salary is greater than at least on employee in department of id 500?
select Name,Salary from worker where  Salary > (select Salary from worker where id = 5);

-- 3.)  Write a query to find the employees whose salary is less than the salary of all employees in department of id 100?
select Name,Salary from worker where Salary < (select Salary from worker where id = 1); 

select * from worker where salary > any (select Salary from worker where id in (5,4,1)); 
-- esme(ID:5=Salary:3000,4=4000,1=5000) se jo bhi minimum salary hai usse toh zyada hee rahna chaiye salary, More than minimum(3000 ID is 5)

select * from worker where salary < any (select Salary from worker where id in (1,3,2)); 
-- esme(ID:1=Salary:5000,3=6000,2=7000) se jo bhi maximum salary hai usse toh kam hee rahna chaiye salary, Less than maximum(7000 ID is 2)

select * from worker where salary > all (select Salary from worker where id in (5,4,1)); 
-- esme(ID:5=Salary:3000,4=4000,1=5000) se jo bhi maximum salary hai usse toh zyada hee rahna chaiye salary, more than maximum(5000 ID is 1)

select * from worker where salary < all (select Salary from worker where id in (1,3,2)); 
-- esme(ID:1=Salary:5000,3=6000,2=7000) se jo bhi maximum salary hai usse toh kam hee rahna chaiye salary, Less than minimum(5000 ID is 1)