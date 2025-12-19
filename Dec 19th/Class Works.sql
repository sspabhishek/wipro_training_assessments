CREATE DATABASE TwoTableDB2;
GO
USE TwoTableDB2;
GO

CREATE TABLE Customers (
	CustomerId INT PRIMARY KEY,
	CustomerName VARCHAR(50),
	City VARCHAR(50)
);

CREATE TABLE Orders (
	OrderId INT PRIMARY KEY,
	OrderAmount DECIMAL(10,2),
	CustomerId INT NULL
);

INSERT INTO Customers VALUES
(1, 'Amit', 'Hyderabad'),
(2, 'Neha', 'Bangalore'),
(3, 'Rahul', 'Delhi'),
(4, 'Priya', 'Mumbai');

INSERT INTO Orders VALUES
(1001, 5000, 1),
(1002, 12000, 1),
(1003, 7000, 2),
(1004, 9000, NULL),
(1005, 15000, 99);

SELECT * FROM Customers;
SELECT * FROM Orders;

INSERT INTO Customers VALUES (5, 'Suresh', 'Chennai');

UPDATE Customers
SET City = 'Pune'
WHERE CustomerName = 'Priya';

DELETE FROM Customers
WHERE CustomerName = 'Rahul';

SELECT * FROM Customers WHERE City = 'Bangalore';

SELECT c.CustomerName,
o.OrderAmount
FROM Customers c
INNER JOIN Orders o
ON c.CustomerId = o.CustomerId;

SELECT c.CustomerName, o.OrderAmount
FROM Customers c
LEFT JOIN Orders o
on c.CustomerId = o.CustomerId;


SELECT o.OrderId, c.CustomerName, o.OrderAmount
FROM Customers c
RIGHT JOIN Orders o
on c.CustomerId = o.CustomerId;

SELECT c.CustomerId, c.CustomerName
FROM Customers c
LEFT JOIN Orders o
ON c.CustomerId = o.CustomerId
WHERE o.CustomerId IS NULL;

SELECT o.OrderId, o.OrderAmount, o.CustomerId
FROM Orders o
LEFT JOIN Customers c
ON o.CustomerId = c.CustomerId
WHERE c.CustomerId IS NULL;

