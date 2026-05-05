CREATE DATABASE Company_DB;
USE Company_DB;

CREATE TABLE Departments (
    DeptId INT PRIMARY KEY,
    DeptName VARCHAR(50)
);

CREATE TABLE Employees (
    EmpId INT PRIMARY KEY,
    EmpName VARCHAR(100),
    DeptId INT
);

INSERT INTO Departments VALUES
(1, 'IT'),
(2, 'Sales'),
(3, 'Marketing');

INSERT INTO Employees VALUES
(101, 'Nguyễn Văn Tuấn', 1),
(102, 'Trần Mai Phương', 1),
(103, 'Lê Quốc Bảo', NULL);

SELECT * 
FROM Employees e
INNER JOIN Departments d
ON e.DeptId = d.DeptId;

SELECT * 
FROM Employees e
LEFT JOIN Departments d
ON e.DeptId = d.DeptId;

SELECT * 
FROM Employees e
RIGHT JOIN Departments d
ON e.DeptId = d.DeptId;