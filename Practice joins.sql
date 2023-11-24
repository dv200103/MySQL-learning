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
    EndDate DATETIME
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
    City VARCHAR(50)
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

-- Home work : Display the name of the employee(full name), Project name, Duration, State.
/*select A.Fullname, B.ProjectName, datediff(Enddate, Startdate), C.State
from Employee as A left join Projects as B inner join Address as C
on A.EmployeeID = B.EmployeeID = C.EmployeeID
where datediff(Enddate, Startdate) = (select datediff(Enddate,Startdate) from Projects) and state = "Maharashtra";(WRONG WAY)*/

select A.Fullname, B.ProjectName, datediff(B.Enddate, B.Startdate) as Duration, C.state
from Employee as A join Projects as B
on A.EmployeeID = B.EmployeeID
join Address as C
on B.EmployeeID = C.EmployeeID
where state = "Maharashtra";
  
select A.EmployeeID, A.Fullname, B.ProjectName, datediff(B.Enddate, B.Startdate) as Duration
from Employee as A join Projects as B
on A.EmployeeID = B.EmployeeID;

select Temp.Fullname, Temp.ProjectName, Temp.Duration as Duration, C.state
from (select A.EmployeeID, A.Fullname, B.ProjectName, datediff(B.Enddate, B.Startdate) as Duration
from Employee as A join Projects as B
on A.EmployeeID = B.EmployeeID) as Temp join Address as C
on Temp.EmployeeID = C.EmployeeID
where C.State = "Maharashtra";

-- (19-20) of Joins from ALL worksheet SQL docx file.
show tables;

-- Create Faculty table
CREATE TABLE Faculty (
    TeacherId VARCHAR(5) PRIMARY KEY,
    Name VARCHAR(50),
    Address VARCHAR(100),
    State VARCHAR(50),
    PhoneNumber VARCHAR(15)
);

-- Insert values into Faculty table
INSERT INTO Faculty (TeacherId, Name, Address, State, PhoneNumber) VALUES
('T101', 'Savita Sharma', 'A-151, Adarsh Nagar', 'Delhi', '991019564'),
('T102', 'Deepak Ghai', 'K-5/52, Vikas Vihar', 'Mumbai', '893466448'),
('T103', 'MahaLakshmi', 'D-6', 'Delhi', '981166568'),
('T104', 'Simi Arora', NULL, 'Mumbai', '658777564');

-- Create Course table
CREATE TABLE Course (
    CourseId VARCHAR(5) PRIMARY KEY,
    Subject VARCHAR(50),
    TeacherId VARCHAR(5),
    Fee INT,
    FOREIGN KEY (TeacherId) REFERENCES Faculty(TeacherId)
);

-- Insert values into Course table
INSERT INTO Course (CourseId, Subject, TeacherId, Fee) VALUES
('C101', 'Introductory Mathematics', 'T101', 4500),
('C103', 'Physics', 'T101', 5000),
('C104', 'Introductory Computer Science', 'T102', 4000),
('C105', 'Advance Computer Science', 'T104', 6500);

SELECT * FROM Faculty;
SELECT * FROM Course;

-- (i) To display CourseId, TeacherId, Name of Teacher, Phone Number of Teachers living in Delhi.

SELECT B.CourseId, A.TeacherId, A.Name, A.PhoneNumber
FROM Faculty AS A LEFT JOIN Course AS B 
ON A.TeacherId = B.TeacherId
WHERE A.State = "Delhi";

-- (ii) To display TeacherID, Names of Teachers, Subjects of all teachers with names of Teachers starting with ‘S’.

SELECT A.TeacherId, A.Name, B.Subject
FROM Faculty AS A LEFT JOIN Course AS B
ON A.TeacherId = B.TeacherId
WHERE A.Name LIKE "S%";

-- (iii)

SELECT CourseId, Subject,Course.TeacherId,Name,PhoneNumber 
FROM Faculty,Course 
WHERE Faculty.TeacherId = Course.TeacherId AND Fee>=5000;

-- (21) of Joins from ALL worksheet SQL docx file.

CREATE TABLE SAP (
  SAPID VARCHAR(5) NOT NULL,
  ItemCode VARCHAR(255) NOT NULL,
  ItemName VARCHAR(255) NOT NULL,
  ItemStorageLocation VARCHAR(255) NOT NULL,
  PRIMARY KEY (SAPID)
);

INSERT INTO SAP (SAPID, ItemCode, ItemName, ItemStorageLocation) VALUES
("S1001", '1001', 'Receiver', 'W12-B3-R24'),
("S1002", '1002', 'Transponder', 'W13-B7-R87'),
("S1003", '1003', 'Battery Bank', 'W21-B1-R87'),
("S1004", '1004', 'Inverter', 'W21-B11-R2'),
("S1005", '1005', 'Genset', 'W22-B15-R16');


CREATE TABLE Store (
  StoreID INT NOT NULL AUTO_INCREMENT,
  ItemCode VARCHAR(255) NOT NULL,
  StoreLocation VARCHAR(255) NOT NULL,
  ReceivedDate DATE NOT NULL,
  PRIMARY KEY (StoreID)
);

INSERT INTO Store (StoreID, ItemCode, StoreLocation, ReceivedDate) VALUES
(1201, '1001', 'Hauz Khas', '2016-05-20'),
(1202, '1002', 'Rajouri Garden', '2016-06-14'),
(1203, '1003', 'Rohini', '2016-05-06'),
(1204, '1004', 'Hauz Khaas', '2016-07-15'),
(1205, '1005', 'Rajendra Place', '2016-05-27');

SELECT * FROM SAP;
DROP TABLE SAP;
SELECT * FROM Store;

-- (i) To display the ItemCode,ItemName and ReceivedDate of all the items .

SELECT A.ItemCode, A.ItemName, B.ReceivedDate
FROM SAP AS A INNER JOIN Store AS B
ON A.ItemCode = B.ItemCode;

-- (ii)	To display SAPID,ItemName,ItemStorageLocation of all the items whose Received date is after 2nd May 2016.

SELECT A.SAPID, A.ItemName, A.ItemStorageLocation
FROM SAP AS A, Store AS B
WHERE A.ItemCode = B.ItemCode AND B.ReceivedDate > "2016-05-02";

-- (iii)

SELECT SAPID,ItemName,STOREID 
FROM SAP,Store 
WHERE SAP.ItemCode=Store.ItemCode AND StoreLocation = "Hauz Khas";

select current_timestamp();