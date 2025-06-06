



///  N+ 1 PROBLEM

USE exercises2

CREATE TABLE CUSTOMER3(
CustomerId INT PRIMARY KEY,
CustomerName Varchar(50)
);


Create table Orders(
OrderiD  INT Primary key,
CustomerId INT,
OrderDate  DATE 
FOREIGN KEY (CustomerId) REFERENCES CUSTOMER3(CustomerId)
);

insert into CUSTOMER3
values(1,'bhup'),
(2,'sahil'),
(3,'priyan');

insert into Orders values
(1,1,'2025-2-23'),
(2,3,'2024-5-15'),
(3,2,'2022-6-12');

use exercises2

select * from CUSTOMER3

select *  from Orders where CustomerId=1;
select * from Orders where CustomerId=2;





SELECT  C.CustomerName,
        o.OrderiD,
		o.OrderDate
FROM CUSTOMER3 C
LEFT JOIN Orders o
ON  C.CustomerId= o.CustomerId




use exercises2
SELECT * FROM Customer
CREATE PROCEDURE spGetCustomer 
AS
BEGIN
  SELECT  CustomerName,CustomerCode,CustomerPhoneNumber From Customer1
END

spGetCustomer









/// THIS IS FOR  PARMETER

CREATE PROC sPGetEmployeeByNameandCustomerId
 @Name  nvarchar(20),
 @CustomerID int
 as 
 BEGIN
   Select Name ,CustomerID FROM Customer Where Name=@Name  and CustomerID= @CustomerID
 END

 sPGetEmployeeByNameandCustomerId 'HIMA' ,2

 sp_helptext spGetCustomer
 
 CREATE PROCEDURE spGetCustomer  
AS  
BEGIN  
  SELECT  CustomerName,CustomerCode,CustomerPhoneNumber From Customer1  
END












ALTER PROCEDURE spGetCustomer
AS
BEGIN 
  SELECT  CustomerName, CustomerCode , CustomerPhoneNumber  order by CustomerName
END

 spGetCustomer



 ////alter the stored procedure




 ALTER PROCEDURE spGetCustomer  
AS  
BEGIN  
  SELECT  CustomerName,CustomerCode,CustomerPhoneNumber From Customer1 order by CustomerName  
END


/////////////////////

ALTER PROC sPGetEmployeeByNameandCustomerId
@Name nvarchar(20),
@CustomerID int 
WITH Encryption 
as
Begin
Select Name ,CustomerID FROM Customer   Where Name=@Name and CustomerID=@CustomerID
END

sp_helptext sPGetEmployeeByNameandCustomerId

select * from Customer
select * from Product


create proc spbyOrdersandProduct
@ProductID int,
@ProductName varchar(30)
as
begin
select ProductID,ProductName from Product where ProductID=@ProductID and ProductName=@ProductName
End

spbyOrdersandProduct 1,'Laptop';
spbyOrdersandProduct 1,'Laptop'

select * from Orders
select * from Product


create  proc  spbyOrdersProduct
As
begin 
select ProductID , ProductName from Product
End

spbyOrdersProduct

