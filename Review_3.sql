create database review3

use review3


create table Department(
DepartmentID  INT Primary key,
DepartmentName varchar(100)
)


create table Employee(
EmployeeID INT Primary key,
EmployeeName varchar(100),
DepartmentId int Null,
FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)


);

INSERT INTO Employee(EmployeeID,EmployeeName,DepartmentID) VALUES 
(1,'HIMU',1),
(2,'VISHWA',3),
(3,'AWALE',NULL),
(4,'PRIYAN',4);


SELECT * FROM Employee
SELECT * FROM Department

INSERT INTO Department(DepartmentID,DepartmentName) VALUES
(1,'ELECTRONIC'),
(2,'TOY'),
(3,'FINANCE'),
(4,'LOAD')

//////////////  QUERY NO.1  SOLUTION /////////////////////////////

select 
 e.EmployeeID,
 e.EmployeeName,
 COALESCE(D.DepartmentName,' NOT ASSIGNED') AS DepartmentName
  from 
	Employee e
 LEFT JOIN  
  Department D ON e.DepartmentID= D.DepartmentID


 
 
 
 
 
 Select * from Department


ALTER TABLE Employee
ALTER COLUMN DepartmentID INT


select 
  



  CREATE TABLE Product(
  ProductId  int primary key,
  ProductName varchar(100),
  
  CategoryId int

  )


  create table category(
  Categoryid int primary key,
  Categoryname varchar(50)
  )

  insert into category(Categoryid,Categoryname) values
  
  (3,'Grocery'),
  (4,'health'),
  (5,'finance')

  insert into Product(ProductId,ProductName,CategoryId) values
 (6,'awale',NULL),
 (7,'PEN',3),
 (8,'BOOK',4),
 (9,'rupiya',5),
 (10,'paracetamol',4)
  


  drop table Product

 


	CREATE PROCEDURE PRODUCTWITHCATEGORY
	@PageNumber  int ,
	@Pagesize    INT 
	AS
	BEGIN
	 
	 SET NOCOUNT ON;
	SELECT
	p.Productid,
	p.ProductName,
	c.Categoryname
	FROM Product p
    LEFT JOIN 
	category c ON p.Productid =c.Categoryid
	ORDER BY 
	 p.Productid
	OFFSET (@Pagenumber -1) * @Pagesize ROWS
	FETCH NEXT @Pagesize ROWS  ONLY;
	END;

	PRODUCTWITHCATEGORY 1 , 3









	insert into Product(p




	select * from Product



	CREATE PROC storePRODUCTWITHCATEGORY
	@Pagenumber int ,
	@Pagesize int 

	AS
   BEGIN
     SET NOCOUNT ON;
	 SELECT 
	 p.Productid,
	 p.ProductName,
	 c.Categoryname
	 FROM Product p
	 left join
	 category c ON c.Categoryid= p.Productid
     order by
	 p.Productid
	 OFFSET (@Pagenumber -1) * @Pagesize ROWS
	 FETCH NEXT @Pagesize ROWS ONLY;
	 END;

	 storePRODUCTWITHCATEGORY 1,5








	
	
	select * from Product








	////////////////// product and productlog table with trigger statements//////

	create table Producttri(
	ProductId int IDENTITY(1,1) primary key,
	ProductName varchar(100),
	PropPrice DECIMAL(10,2),
	Category int 
	
	);

	create table ProductInsertlog(
	LogID	INT IDENTITY(1,1) primary key,
	ProductId INT,
	ProductName varchar(100),
	InsertDate DATETIME
	
	);


	CREATE TRIGGER trg_Product_Insert
	ON Producttri
	AFTER INSERT
	AS
	BEGIN
	  INSERT INTO ProductInsertlog(ProductId,ProductName,InsertDate)
	  SELECT ProductId , ProductName, GETDATE()
	  FROM INSERTED;
	END;

	INSERT INTO Producttri (ProductName,PropPrice,Category)
	VALUES('PEN',15.50,1),
	('BOOK',13,2)

	SELECT * FROM ProductInsertlog
	select * from Producttri








	select  * from ProductInsertlog


	CREATE TRIGGER TRY
	ON Producttri
	AFTER INSERT
	AS 
	BEGIN 
	  INSERT INTO ProductInsertlog(ProductId, ProductName,InsertDate)
	  SELECT ProductId,ProductName,GETDATE()
	  FROM INSERTED;
	END;

	INSERT INTO Producttri(ProductName,PropPrice,Category)
	VALUES ('AWALE',12,2),
	('SHIVA',34,3)

	SELECT * FROM ProductInsertlog








	create proc productwithcategory
	@PageNum int,
	@PageSize int 
	AS
	BEGIN 
	SET ONCOUNT NO

	
	/////////scalar and table value function////////////



	CREATE FUNCTION Dbo.fullname
	(
	@fullname varchar(100),
	@lastname varchar(100)
	)
	RETURNS varchar(100)
	AS
	BEGIN
	RETURN @fullname + ' ' + @lastname
	END

	SELECT Dbo.fullname('him','mis')

