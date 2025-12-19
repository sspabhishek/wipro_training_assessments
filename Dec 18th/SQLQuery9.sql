insert into Departments
values
(1, 'Engineering'),
(2,'HR'),
(3,'Finance')

insert into Employees values
(101, 'Amit', 1),
(102, 'Neha', 2),
(103, 'Rahul', NULL),
(104, 'Sonal',99);

select * from Departments;
select * from Employees;

select
	e.EmpName,
	d.DeptName
from Employees e
inner join Departments d
on e.DeptId = d.DeptId;

select
	e.EmpName,
	d.DeptName
from Employees e
left join Departments d
on e.DeptId = d.DeptId;

select
	e.EmpName,
	d.DeptName
from Employees e
right join Departments d
on e.DeptId = d.DeptId;