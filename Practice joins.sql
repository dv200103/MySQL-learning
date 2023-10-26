use joins;

CREATE TABLE Employee (
  EmployeeId INT PRIMARY KEY,
  FullName VARCHAR(45) NOT NULL,
  Department VARCHAR(45) NOT NULL,
  Salary FLOAT NOT NULL,
  Gender VARCHAR(45) NOT NULL,
  Age INT NOT NULL
);

INSERT INTO Employee (EmployeeId, FullName, Department, Salary, Gender, Age) VALUES (1001, 'John Doe', 'IT', 35000, 'Male', 25);
INSERT INTO Employee (EmployeeId, FullName, Department, Salary, Gender, Age) VALUES (1002, 'Mary Smith', 'HR', 45000, 'Female', 27);
INSERT INTO Employee (EmployeeId, FullName, Department, Salary, Gender, Age) VALUES (1003, 'James Brown', 'Finance', 50000, 'Male', 28);
INSERT INTO Employee (EmployeeId, FullName, Department, Salary, Gender, Age) VALUES (1004, 'Mike Walker', 'Finance', 50000, 'Male', 28);
INSERT INTO Employee (EmployeeId, FullName, Department, Salary, Gender, Age) VALUES (1005, 'Linda Jones', 'HR', 75000, 'Female', 26);
INSERT INTO Employee (EmployeeId, FullName, Department, Salary, Gender, Age) VALUES (1006, 'Anurag Mohanty', 'IT', 35000, 'Male', 25);
INSERT INTO Employee (EmployeeId, FullName, Department, Salary, Gender, Age) VALUES (1007, 'Priyanla Dewangan', 'HR', 45000, 'Female', 27);
INSERT INTO Employee (EmployeeId, FullName, Department, Salary, Gender, Age) VALUES (1008, 'Sambit Mohanty', 'IT', 50000, 'Male', 28);
INSERT INTO Employee (EmployeeId, FullName, Department, Salary, Gender, Age) VALUES (1009, 'Pranaya Kumar', 'IT', 50000, 'Male', 28);
INSERT INTO Employee (EmployeeId, FullName, Department, Salary, Gender, Age) VALUES (1010, 'Hina Sharma', 'HR', 75000, 'Female', 26);

CREATE TABLE Projects (
 ProjectId INT PRIMARY KEY AUTO_INCREMENT,
    ProjectName VARCHAR(200) NOT NULL,
 EmployeeId INT,
    StartDate DATETIME,
    EndDate DATETIME,
    FOREIGN KEY (EmployeeId) REFERENCES Employee(EmployeeId)
);

INSERT INTO Projects (ProjectName, EmployeeId, StartDate, EndDate) VALUES 
('Develop Ecommerse Website from scratch', 1003, NOW(), DATE_ADD(NOW(), INTERVAL 30 DAY)),
('WordPress Website for our company', 1002, NOW(), DATE_ADD(NOW(), INTERVAL 45 DAY)),
('Manage our Company Servers', 1007, NOW(), DATE_ADD(NOW(), INTERVAL 45 DAY)),
('Hosting account is not working', 1009, NOW(), DATE_ADD(NOW(), INTERVAL 7 DAY)),
('MySQL database from my desktop application', 1010, NOW(), DATE_ADD(NOW(), INTERVAL 15 DAY)),
('Develop new WordPress plugin for my business website', NULL, NOW(), DATE_ADD(NOW(), INTERVAL 10 DAY)),
('Migrate web application and database to new server', NULL, NOW(), DATE_ADD(NOW(), INTERVAL 5 DAY)),
('Android Application development', 1004, NOW(), DATE_ADD(NOW(), INTERVAL 30 DAY)),
('Hosting account is not working', 1001, NOW(), DATE_ADD(NOW(), INTERVAL 7 DAY)),
('MySQL database from my desktop application', 1008, NOW(), DATE_ADD(NOW(), INTERVAL 15 DAY)),
('Develop new WordPress plugin for my business website', NULL, NOW(), DATE_ADD(NOW(), INTERVAL 10 DAY));

select * from employee;
desc employee;
select * from projects;
desc projects;
select * from address;
desc address;
CREATE TABLE Address
(
    AddressId INT PRIMARY KEY AUTO_INCREMENT,
    EmployeeId INT,
    Country VARCHAR(50),
    State VARCHAR(50),
    City VARCHAR(50),
    FOREIGN KEY (EmployeeId) REFERENCES Employee(EmployeeId)
);

INSERT INTO Address (EmployeeId, Country, State, City) Values (1001, 'India', 'Odisha', 'BBSR');
INSERT INTO Address (EmployeeId, Country, State, City) Values (1002, 'India', 'Maharashtra', 'Mumbai');
INSERT INTO Address (EmployeeId, Country, State, City) Values (1003, 'India', 'Maharashtra', 'Pune');
INSERT INTO Address (EmployeeId, Country, State, City) Values (1004, 'India', 'Odisha', 'Cuttack');
INSERT INTO Address (EmployeeId, Country, State, City) Values (1005, 'India', 'Maharashtra', 'Nagpur');
INSERT INTO Address (EmployeeId, Country, State, City) Values (1006, 'India', 'Odisha', 'Cuttack');

-- 1) Display names of employees who had not allocated/given any project.
select A.employeeid,fullname as employees_name, projectname as projects 
from employee as A left join projects as B
on A.employeeid = B.employeeid
where B.employeeid is null;

-- 2) Display name of employee whose project duration is maximum.
select a.employeeid, fullname as employees_name, startdate, enddate, max(datediff(enddate,startdate)) as max_date_diff
from employee as a
inner join projects as b
on a.employeeid = b.employeeid
where datediff(enddate,startdate) = (select max(datediff(enddate,startdate)) from projects)
group by a.employeeid, startdate, enddate, employees_name;

-- 3) Display top 5 project having duration is less.
select employeeid, projectname, startdate, enddate, datediff(enddate,startdate) as min_date_diff from projects
order by min_date_diff asc limit 5;

-- 4) Display the names of employee who's salary is between 30000 and 50000.
select employeeid, fullname, salary from employee where salary between 30000 and 50000;

-- 5) Display the names of employee who's name ends with 'a' and should contain 6 characters including 'a'.
select fullname from employee where fullname like "_____%a";

