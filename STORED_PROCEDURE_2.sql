


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



select * from CUSTOMER3

select *  from Orders where CustomerId=1;
select * from Orders where CustomerId=2;





SELECT  C.CustomerName,
        o.OrderiD,
		o.OrderDate
FROM CUSTOMER3 C
LEFT JOIN Orders o
ON  C.CustomerId= o.CustomerId








////////////////// **CREATED STORED **PROCEDURE  //////////////////////////////////////




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


 ////FOR SEARCH PURPOSE
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


///////////////////// ENCRYPTION ADDED//////////////////

ALTER PROC sPGetEmployeeByNameandCustomerId
@Name nvarchar(20),
@CustomerID int 
WITH Encryption 
as
Begin
Select Name ,CustomerID FROM Customer   Where Name=@Name and CustomerID=@CustomerID
END





////////////// TO VIEW THE TABLE///////////////////////////
sp_helptext sPGetEmployeeByNameandCustomerId






////   STORED PROCEDURE WITH  OUTPUT  PARAMETER

CREATE TABLE tblDepartment(
DepartmentID int Primary key,
DepartmentName varchar(40)

);

SELECT * FROM tblDepartment;  

use exercises2
insert into tblDepartment(DepartmentID,DepartmentName)values 
(1,'hr'),
(2,'finance'),
(3,'loan');


CREATE TABLE tblEmplyee(
Id INT PRIMARY KEY,
Names VARCHAR(40),
DepartmentID INT ,
FOREIGN KEY (DepartmentID)  REFERENCES tblDepartment(DepartmentID)

);

INSERT INTO tblEmplyee values
(1,'hima',1),
(2,'sanu',2),
(3,'prathamesh',3);


Create Procedure spGetEmployeeCountbyName
@Names nvarchar(40),
@EmployeeCount int output
as 
Begin 
   Select @EmployeeCount=COUNT(Id) from tblEmplyee where Names = @Names
END







// upaar wale ko declare and call out karne ke liye use hota hai

/////////////declare with output keyword/////////////

DECLARE @TotalCount int 
Execute spGetEmployeeCountbyName 'hima', @TotalCount output
Print @TotalCount





////////////used without output word//////////
DECLARE @TotalCount int 
Execute spGetEmployeeCountbyName 'hima', @TotalCount 
if (@TotalCount is null)
  Print '@TotalCount is  null'
  else
  Print '@TotalCount is not null'

Print @TotalCount




/////////DIRECT PARAMETER USED /////////////////////

Declare  @totalcount int
Execute  spGetEmployeeCountbyName @EmployeeCount =@totalcount out , @Names='Hima'
Print @totalcount


sp_help spGetEmployeeCountbyName

tble2

sp_depends spGetEmployeeCountbyName

sp_depends Customer1


// STORED PROCEDURE WITH OUT PARAMETER PRACTICES


 select * from CUSTOMER3


CREATE PROC spgetbyCusnameandid
@CustomerName nvarchar(50),
@CustomerCount int  output
as 
begin
 select @CustomerCount=COUNT(CustomerId)  from CUSTOMER3 Where  CustomerName=@CustomerName
End




DECLARE @totalCount int 
EXECUTE spgetbyCusnameandid 'bhup' ,@totalCount Output
Print @totalCount



DECLARE @totalCount int
EXECUTE spgetbyCusnameandid 'bhup', @totalcount Output
Print @totalCount 




insert into CUSTOMER3 VALUES
(4,'bhup');

DECLARE @totalcount int
EXECUTE spgetbyCusnameandid      @CustomerCount=@totalcount  out,@CustomerName='bhup'
print @totalcount



///////////STORED PROCEDURE BY OUTPUT PARAMETER OR RETURN VALUES


select * from Customer


CREATE PROC spgettotalcountemployee
@TotalCount int output
as
begin
SELECT @TotalCount=COUNT(CustomerID) FROM Customer
END


DECLARE @TotalCustomer int 
EXECUTE spgettotalcountemployee @TotalCustomer output
PRINT @TotalCustomer




/// samething write with return keyword



CREATE PROC spgettotalcountemployee1
AS
BEGIN 
return (select COUNT(CustomerID) FROM Customer)
End

DECLARE @TOTAL int
EXECUTE @TOTAL=spgettotalcountemployee1
PRINT  @TOTAL



select * from  Customer



/////////spgetcustomer by id  //////////////// 

CREATE PROC spgetcustomerid
@CustomerID int,
@Name nvarchar(50) output
as
begin 
select Name from Customer where CustomerID=@CustomerID
END


DECLARE @Name nvarchar(50)
EXECUTE spgetcustomerid 1 , @Name out
print 'NAME =' + @Name


// samething written with return keyword

CREATE PROC spgetcustomerid1
@CustomerID int
as 
begin 
 return (Select Name from Customer where CustomerID=@CustomerID)
 END

 declare @Resultid nvarchar(20)
 execute @Resultid=spgetcustomerid1 1
 print  'Result = ' + @Resultid