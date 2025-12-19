CREATE DATABASE IndexDemoDB;
GO
USE IndexDemoDB;
GO

CREATE TABLE Employees (
	EmployeeId INT IDENTITY(1,1) PRIMARY KEY,
	EmployeeName VARCHAR(100),
	Department VARCHAR(500),
	Salery INT
	);

INSERT INTO Employees (EmployeeName, Department, Salery)
VALUES
('Amit','IT',60000),
('Neha','HR',50000),
('Rahul','Finance',70000),
('Priya','IT',65000),
('Sonal','HR',48000),
('Karan','IT',72000),
('Anita','Finance',68000),
('Vikram','IT',80000);

select * from Employees where
Department = 'IT';

CREATE INDEX IDX_Employees_Department
ON Employees(Department);

EXEC sp_helpindex 'Employees';