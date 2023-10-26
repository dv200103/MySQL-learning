/* String fucntions */
# 1 concat : used to combine two or multiple strings
select concat('jayesh','patil');
select concat('jayesh','patil') as fullname;
select concat('jayesh',' ','patil') as fullname;
/* display the name and city of an employee in a single column */
select concat(name,city) from emp;
select concat(name,'-->',CITY) name_city
from emp;

/* display the name and department in a single column of Mumbai location only */
select concat(name,'-->',department) as name_dept
from emp
where city='mumbai'; 

#2 lower : convert the string into lowercase

select lower('JaYeSH');
select lower(name) from emp;

/* display name in lowercase,age,salary,department from the table */
select lower(name) as Capital_name,age,salary,department
from emp;

#3 upper : convert the string into upper case
select upper('jayESh');
select upper(city) from emp;



/* display name in uppercase,age,salary,departmwnt from the table */
select upper(name) as Capital_name,age,salary,department
from emp;

#4 replace :  to replace a particular string with some value

select replace('Good morning','morning','night');
select replace('Good morning','o','a');

/* replace IT with Information technology in a emp table */
select replace(department,'IT','Information Technology')
from emp;

#5 substring : used to extract subpart of the string or column which contains string data
select substr('ITvedant',3,6);
select substring('jayesh',1,3);

/* Display first 4 alphabets of name from the emp table */
select substr(name,1,4) from emp;

select name,substr(name,1,4) as substring_name
from emp;

#6 length : use to find length of the string
select length('jay');

/* Display city and kength of the city from emp table */
select city,length(city)
from emp;

#7 left : to select the characters from the left side
select left('jayesh',3);
select name, left(name,3) from emp;

#8 right : to select the characters from the right side
select right('jayesh',3);
select name, right(name,3) from emp;

select concat(left('jayesh',3),right('jayesh',3));

#9 trim : removes spaces from both thje sides
select trim('    jayesh   ');
select trim('jayesh  patil');

select ltrim('    jayesh   ');
select rtrim('    jayesh   ');

/* math fucntions */

select abs(-45);
select abs(45);

select ceil(12.7);

select floor(12.7);

select round(12.4);

select mod(12,5);

select sin(90);
select cos(85);
select tan(45);

select pi();

select truncate(9.999999,2);

select log(10);
select log10(10);

select pow(10,5);

select sqrt(4); 

/* date Functions */

select now();

select curdate();

select curtime();

select sysdate(); -- date and time 

select month(now());
select year(now());
select day(now());
select date(now());

select hour(now());
select minute(now());
select second(now());
select time(now());

select datediff('2023-05-25','2002-02-11');
select datediff(curdate(),'2002-02-11');

/* Aggregate functions */

select count(name) from emp;
select count(name) as emp_count from emp;

select sum(salary) from emp;
select sum(salary) as total_salary from emp;

select max(age) from emp;
select max(age) as max_age from emp;

select min(age) from emp;
select min(age) as min_age from emp;

select avg(salary) from emp;
select avg(salary) as average_salary from emp;

/* Group by */
select * from emp;

/* display citywise count of employees */

select city, count(name) from emp;

select city, count(name) from emp group by city;

/* display departmentwise count of employees */
select department, count(name) from emp group by department;

/* display age wise count of employees */
select age, count(name) from emp group by age;

/* department wise count of employees group by age */
select department, count(name) from emp group by age;-- age is not mentioned in select statement

select age, department, count(name) from emp group by age;-- age is mentioned in select statement

/* city wise min, max, avg salary */
select city, min(salary) from emp group by city;
select city, max(salary) from emp group by city;
select city, avg(salary) from emp group by city;
select city, min(salary), max(salary), avg(salary) from emp
group by city;

/* Display cities whose minimum salary is atleast 60000 */
select city, min(salary) from emp group by city;-- group by operation

select city, min(salary) from emp group by city where min(salary)>=60000;-- where not work after group by

select city, min(salary) from emp group by city having min(salary)>=60000;-- actual solution with having

/* Display the cities whosse maximum salary is atleast 80000 */
select city, max(salary) from emp group by city having max(salary)>=80000;

/* display the ages whose salary is atleast 80000 */
select age, max(salary) from emp group by age having max(salary) >=80000;