CREATE TABLE Student (
	StudentID INT IDENTITY(1,1) PRIMARY KEY,
	FirstName VARCHAR(50),
	LastName VARCHAR(50),
	Email VARCHAR(100),
	DateOfBirth DATE
);

insert into Student (FirstName, LastName, Email, DateOfBirth)
values
('Abhishek', 'Kumar','abhishek@gmail.com','01-01-1999'),
('Amit', 'Kumar', 'amit@yahoomail.com','01-02-2001'),
('Abdul', 'Ahmad', 'abdul@gmail.com', '01-01-1998')

SELECT * FROM Student