create table Products(
	ProductId INT IDENTITY(1,1) PRIMARY KEY,
	ProductName VARCHAR(100), 
	Brand VARCHAR(100), 
	ManuDate DATE, 
	ExpDate DATE, 
	Price INT
	);

SET DATEFORMAT dmy

INSERT INTO Products
VALUES
('Almond Milk','Almond breeze','10-01-2025','10-07-2025',299),
('Basmati Rice','India Gate','04-05-2024','10-08-2025',899),
('Dark Chocolate Bar','Cadbury','10-03-2025','10-12-2025',120),
('Green Tea Bag','Lipton','11-05-2025','10-07-2026',180),
('Instant Coffee','Nescafe','10-01-2024','19-07-2025',450),
('Olive oil','Borges','05-01-2025','10-07-2027',1000),
('Oats','Quaker','05-01-2025','10-07-2026',219),
('Penanut Butter','Myfitness','10-01-2025','10-08-2028',1299),
('Protein Powder','MuscleBlaze','19-11-2025','23-09-2028',350),
('Whole Wheat Atta','Aashirvaad','14-12-2024','30-07-2026',620);
 
 select * from Products

create table Orders(
	OrderId INT PRIMARY KEY,
	ProductId INT,
	Quantity INT,
	TotalAmount INT,
	OrderDate Date
	);

set dateformat dmy

insert into Orders(OrderId,ProductId,Quantity,TotalAmount,OrderDate) values
(13,1,5,600,'10-12-2025'),
(14,9,1,180,'10-12-2025'),
(15,3,3,1000,'10-12-2025'),
(16,2,8,3600,'10-12-2025'),
(17,5,9,5580,'10-12-2025'),
(18,17,2,650,'10-12-2025'),
(19,28,6,490,'10-12-2025');

select * from Orders;

Select
	p.ProductName,
	o.OrderId
From Products p
inner join Orders o
on p.ProductId = o.ProductId;


Select
	p.ProductName,
	o.OrderId
From Products p
Left join Orders o
on p.ProductId = o.ProductId;


Select
	p.ProductName,
	o.OrderId
From Products p
Right join Orders o
on p.ProductId = o.ProductId;

