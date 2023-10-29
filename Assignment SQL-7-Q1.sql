create database joining;
use joining;

-- Create the Buildings table
CREATE TABLE Buildings (
    Building_name VARCHAR(2) PRIMARY KEY,
    Capacity INT
);

-- Insert data into the Buildings table
INSERT INTO Buildings (Building_name, Capacity) VALUES
('1e', 24),
('1w', 32),
('2e', 16),
('2w', 20);

-- Create the Employees table
CREATE TABLE Employees (
    Role VARCHAR(50),
    Name VARCHAR(255),
    Building VARCHAR(2),
    Years_employed INT
);

-- Insert data into the Employees table
INSERT INTO Employees (Role, Name, Building, Years_employed) VALUES
('Engineer', 'Becky A.', '1e', 4),
('Engineer', 'Dan B.', '1e', 2),
('Engineer', 'Sharon F.', '1e', 6),
('Engineer', 'Dan M.', '1e', 4),
('Engineer', 'Malcom S.', '1e', 1),
('Artist', 'Tylar S.', '2w', 2);

SELECT * from Buildings;
SELECT * from Employees;

-- (1)
SELECT DISTINCT A.Building_Name AS Employees_Building
FROM Buildings AS A INNER JOIN Employees AS B
ON A.Building_Name = B.Building;

-- OR

SELECT DISTINCT Building FROM Employees;

-- (2)
SELECT * from Buildings;

-- OR

SELECT DISTINCT A.Building_Name, A.Capacity
FROM Buildings AS A LEFT JOIN Employees AS B
ON A.Building_Name = B.Building;

-- (3)
SELECT DISTINCT A.Building_Name, B.Role
FROM Buildings AS A LEFT JOIN Employees AS B
ON A.Building_Name = B.Building;