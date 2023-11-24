CREATE DATABASE ORG; 
SHOW DATABASES;
USE ORG;

CREATE TABLE Worker (

WORKER_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT, FIRST_NAME CHAR(25),
LAST_NAME CHAR(25), SALARY INT(15), JOINING_DATE DATETIME, DEPARTMENT CHAR(25)
);
 
INSERT INTO Worker

(WORKER_ID, FIRST_NAME, LAST_NAME, SALARY,
JOINING_DATE, DEPARTMENT) VALUES

(001, 'Monika', 'Arora', 100000, '14-02-20
09.00.00', 'HR'),

(002, 'Niharika', 'Verma', 80000, '14-06-11
09.00.00', 'Admin'),

(003, 'Vishal', 'Singhal', 300000, '14-02-20
09.00.00', 'HR'),

(004, 'Amitabh', 'Singh', 500000, '14-02-20
09.00.00', 'Admin'),

(005, 'Vivek', 'Bhati', 500000, '14-06-11
09.00.00', 'Admin'),

(006, 'Vipul', 'Diwan', 200000, '14-06-11
09.00.00', 'Account'),

(007, 'Satish', 'Kumar', 75000, '14-01-20
09.00.00', 'Account'),

(008, 'Geetika', 'Chauhan', 90000, '14-04-11
09.00.00', 'Admin');

select * from worker;

-- Q-1. Write an SQL query to fetch “FIRST_NAME” from Worker table using the alias name as <WORKER_NAME>.
select FIRST_NAME from worker as WORKER_NAME;

-- Q-2. Write an SQL query to fetch “FIRST_NAME” from Worker table in upper case.
select upper(FIRST_NAME) from worker;

-- Q-3. Write an SQL query to fetch unique values of DEPARTMENT from Worker table.
 select distinct DEPARTMENT from worker;
 
-- Q-4. Write an SQL query to print the first three characters of  FIRST_NAME from Worker table.
select substring(FIRST_NAME,1,3) from worker;

-- Q-5. Write an SQL query to find the position of the alphabet (‘a’) in the first name column ‘Amitabh’ from Worker table.
select instr(FIRST_NAME,"A") as Place from worker where FIRST_NAME = "Ämitabh";
-- OR
select position("A" in FIRST_NAME) as Place from worker where FIRST_NAME = "Ämitabh";

-- Q-6. Write an SQL query to print the FIRST_NAME from Worker table after removing white spaces from the right side.
select rtrim(FIRST_NAME) from worker;

-- Q-7. Write an SQL query to print the DEPARTMENT from Worker table after removing white spaces from the left side.
select ltrim(DEPARTMENT) from worker;

-- Q-8. Write an SQL query that fetches the unique values of DEPARTMENT from Worker table and prints its length.
select distinct DEPARTMENT, length(DEPARTMENT) from worker;

-- Q-9. Write an SQL query to print the FIRST_NAME from Worker table after replacing ‘a’ with ‘A’.
select replace(FIRST_NAME,"a","A") from worker;

/*Q-10. Write an SQL query to print the FIRST_NAME and LAST_NAME from Worker table into a single column COMPLETE_NAME. 
A space char should separate them.*/
select concat(FIRST_NAME," ",LAST_NAME) as COMPLETE_NAME from worker;

-- Q-11. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending.
select * from worker order by FIRST_NAME asc;

-- Q-12. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending and DEPARTMENT Descending.
select * from worker order by FIRST_NAME asc, DEPARTMENT desc;

-- Q-13. Write an SQL query to print details for Workers with the first name as “Vipul” and “Satish” from Worker table.
select * from worker where FIRST_NAME in ("Vipul","Satish");
-- OR
select * from worker where FIRST_NAME = "Vipul" or FIRST_NAME = "Satish";

-- Q-14. Write an SQL query to print details of workers excluding first names, “Vipul” and “Satish” from Worker table.
select * from worker where FIRST_NAME not in ("Vipul","Satish");

-- Q-15. Write an SQL query to print details of Workers with DEPARTMENT name as “Admin”.
select * from worker where DEPARTMENT = "Admin";

-- Q-16. Write an SQL query to print details of the Workers whose FIRST_NAME contains ‘a’.
select * from worker where FIRST_NAME like "%a%";

-- Q-17. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘a’.
select * from worker where FIRST_NAME like "%a";

-- Q-18. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets.
select * from worker where FIRST_NAME like "_____h";

-- Q-19. Write an SQL query to print details of the Workers whose SALARY lies between 100000 and 500000.
select * from worker where salary between 100000 and 500000;

-- Q-20. Write an SQL query to print details of the Workers who have joined in Feb’2014.
select * from worker where month(JOINING_DATE) = 02 and year(JOINING_DATE) = 2014;

-- Q-21. Write an SQL query to fetch the count of employees working in the department ‘Admin’.
select count(DEPARTMENT) from worker where DEPARTMENT = "Admin";

-- Q-22. Write an SQL query to fetch worker names with salaries >= 50000 and <= 100000.
select concat(FIRST_NAME," ",LAST_NAME) as WORKER_NAME, salary from worker where salary between 50000 and 100000;

