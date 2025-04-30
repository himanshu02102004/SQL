SELECT TOP (1000) [Id]
      ,[DepartmentName]
      ,[Location]
      ,[DepartmentHead]
  FROM [exercises].[dbo].[tbldepartment]


  select * from tblEmployee
  select * from  tbldepartment

 select Name,Gender,Salary,DepartmentName
  from tblEmployee
  INNER JOIN tbldepartment
  ON tblEmployee.DepartmentId=tbldepartment.Id

  
  select Name,Gender,Salary,DepartmentName
  from tblEmployee
  LEFT JOIN tbldepartment
  ON tblEmployee.DepartmentId=tbldepartment.Id



   select * from tblEmployee
  select * from  tbldepartment


  SELECT Name ,Gender,Salary,DepartmentName
  from tblEmployee
  RIGHT OUTER JOIN tbldepartment
  on tblEmployee.DepartmentId= tbldepartment.Id

   select * from tblEmployee
  select * from  tbldepartment

 SELECT NAME,Gender,Salary,DepartmentName
 from tblEmployee
 FULL OUTER JOIN tbldepartment
 ON tblEmployee.DepartmentId=tbldepartment.Id



 select name,gender,salary ,departmentName
 from tblEmployee
 CROSS JOIN tbldepartment

 select * from tblEmployee


 select name,gender 
 from tblEmployee
 where name ='awale' and gender='male'


 select * from tblEmployee



 //// DESC ORDER use this keyword    and  (FOR ASCENDING ORDER asc)
 select name ,gender,ID
 from tblEmployee
 order by ID DESC

 /// for ALIAS FRIENDLY NAME

 SELECT NAME as names,
         gender as gen
	from tblEmployee
	order by ID DESC


	
	// for unique person 
SELECT DISTINCT NAME
from tblEmployee


select * from tblEmployee



Select name
from tblEmployee
where name like '%L' 

Select name 
from tblEmployee
where name like 'A_A'




USE  exercises

INSERT INTO tblEmployee(ID,Name,Gender)
VALUES (8,'PRAJWAL','MALE');

ALTER TABLE tblEmployee
ALTER COLUMN Gender VARCHAR(30);



SELECT Name, Gender from [dbo].tblEmployee
UNION 
Select DepartmentName,Location from [dbo].tbldepartment



select * from tblEmployee
INNER JOIN tbldepartment
ON tblEmployee.ID=tbldepartment.Id

create database exercises2


use exercises2

CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY ,
    Name VARCHAR(20)
);

CREATE TABLE Product (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Price DECIMAL(2,2)
);

CREATE TABLE ProductCustomer(
ProductCustomerID INT PRIMARY KEY,
 CustomerID INT,
  ProductID INT ,

  FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
  FOREIGN KEY(ProductID) REFERENCES   Product(ProductID)

);


INSERT INTO Customer(CustomerID,Name) VALUES
(1,'PRAJWAL'),
(2,'HIMA');

ALTER TABLE Product
ALTER COLUMN Price DECIMAL(8,2);
INSERT INTO Product (ProductID, ProductName,Price) VALUES 
(1,'Laptop', 12.0), 
(2,'Phone', 85.0);

SELECT * FROM Customer

select * from Product


ALTER TABLE ProductCustomer
ADD SaleDate DATE;

select * from ProductCustomer

INSERT INTO ProductCustomer(ProductCustomerID,CustomerID,ProductID,SaleDate) VALUES
(1,1,1,'2025-04-29'),
(2,2,2,'2025-04-23');

SELECT c.NAME,p.ProductName,
        p.PRICE ,pc.SaleDate
   FROM ProductCustomer as pc
   INNER JOIN Customer as c
   on pc.CustomerID= c.CustomerID
   INNER JOIN Product as p
   on pc.ProductID=p.ProductID;
   


///GROUP BY CLAUSE (whatwhever in select also having in groupby like productname)

SELECT p.ProductName,
      sum(p.Price) as totalsales,
	  count(*) as noofitems
 from   ProductCustomer as pc
  INNER JOIN Customer as c
  on  pc.CustomerID= c.CustomerID
  INNER JOIN Product as p
  on p.ProductID= p.ProductID
  group by p.ProductName
  having count(*) > 1





  /// self join concept

  CREATE TABLE Customer1 (
    CustomerId INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    CustomerCode INT,
    CustomerPhoneNumber VARCHAR(20),
    CustomerSSN VARCHAR(20),
    CustomerReferenceId_fk INT NULL,
    FOREIGN KEY (CustomerReferenceId_fk) REFERENCES Customer1(CustomerId)
);

INSERT INTO Customer1(CustomerId,CustomerName,CustomerCode,CustomerPhoneNumber,CustomerSSN,CustomerReferenceId_fk) 
VALUES
(1,'SHIV',1001,'940','PAN9912',NULL),
(2, 'Raju',   2002, '9898',  'PAN9088', 1),
(3, 'Shaam',  3002, '9898',  'PAN9810', 1),
(4, 'Khadak', 4002, '9898',  'PAN9812', 3),
(5, 'Rajeev', 4003, '9787',  'PAN9102', NULL),
(6, 'Shiv',   1003, '98999', 'PAN1008', 5),
(7, 'Sam',    8009, '9898',  'PAN8908', 1),
(8, 'Sim',    9088, '898',   'PAN81222', NULL);

SELECT * FROM Customer1


SELECT  C1.CustomerName AS Customer,
      I C2.CustomerName AS ReferredBy
FROM Customer1  C1
INNER JOIN Customer1 C2
ON    C1.CustomerReferenceId_fk= C2.CustomerId;



SELECT * FROM Customer1

SELECT C1.CustomerName AS Customer,
      ISNULL( C2.CustomerName,'DIRECT WALKING') AS ReferredBy
FROM Customer1 C1
LEFT JOIN Customer1  C2
ON  C1.CustomerReferenceId_fk = C2.CustomerId 


select * from Customer1

select * from Customer
select * from ProductCustomer

INSERT INTO Customer(CustomerID,Name) VALUES
(3,'RIZWAN'),
(4,'YOGI');

SELECT * FROM ProductCustomer

INSERT INTO ProductCustomer(ProductCustomerID,CustomerID,ProductID,SaleDate) VALUES
(3,3,2,'2024-6-13');
  







//// SUBQUERIES


SELECT Name FROM Customer
Where Customer.CustomerID IN 
(SELECT ProductCustomer.CustomerID
   FROM ProductCustomer);



   SELECT * FROM Product order by Price


   /// EXPLAIN IN NOTES
   select ProductName from Product as p1
   Where 2=(select Count(*)
     FROM Product p2
	 Where p2.Price >=p1.Price)

INSERT INTO Product(ProductID,ProductName,Price)VALUES
(3,'MOUSE',400),
(4,'WATCH',600),
(5,'CHARGER',700);





SELECT 
MAX(Price) AS MAXIMUMCOST,
MIN(Price) AS MINIMUMCOST,
AVG(Price) AS OVERALLCOST
FROM Product


SELECT * 
FROM Product
Where Price
BETWEEN 100 and 600



select *
into tble2
from Product


select * from tble2

select top 2 * from  tble2
order by Price desc

use exercises2

SELECT * FROM TbleProducttable
SELECT *
INTO TbleProducttable
FROm Product






Select * from TbleProducttable2



update TbleProducttable2
set PropName ='Phone',
  PropPrice=56
  where  PropID=2



CREATE TABLE TbleProducttable2(

PropID INT PRIMARY KEY,
PropName VARCHAR(50),
PropPrice DECIMAL(5,2)

)