create table Department (
	DepartmentId INT identity(1,1) primary key,
	DepartmentName varchar(50) not null
	);

	insert into Department (DepartmentName)
	values
	('Computer Science'),('Mechanical'),('Electrical');


	insert into Department (DepartmentName)
	values (NULL);