use kudvenkat_Qeury


create table Employees(
EmployeeID int primary key,
Name nvarchar(50),
ManagerID int null,
CONSTRAINT   FK_manager foreign key (ManagerID) references Employees(EmployeeID)
);


INSERT INTO Employees (EmployeeID, Name, ManagerID) VALUES
(1, 'Mike', 3),
(2, 'Rob', 1),
(3, 'Todd', NULL),
(4, 'Ben', 1),
(5, 'Sam', 1);




////Left  outer self join 

select  E.Name  as Employee, M.Name as Manager
from Employees E
left join Employees M
on  E.ManagerID= M.EmployeeID


///inner self join


select  E.Name  as Employee, M.Name as Manager
from Employees E
INNER join Employees M
on  E.ManagerID= M.EmployeeID


// CROSS JOIN
select  E.Name  as Employee, M.Name as Manager
from Employees E
CROSS join Employees M


/// QUERY AT INDEXES 

CREATE INDEX Employeeindex on Employees( EmployeeID)




/// REPALCE NULL VALUES
SELECT E.Name AS Employee , ISNULL(M.Name,'No Manager ') as manager
FROM Employees E
Left JOIN Employees M
ON E.ManagerID= M.EmployeeID


SELECT E.Name AS Employee ,
        case 
       WHEN  M.Name is null then 'no manager' else M.name 
	   end as manager 
FROM Employees E
 LEFT JOIN Employees M
ON E.ManagerID= M.EmployeeID


select ISNULL('para','no manager')  as manager
select coalesce('priya','NO MANAGER') as manager 


SELECT E.Name AS Employee , COALESCE(M.Name,'No Manager') as Manager
FROM Employees E
LEFT JOIN Employees M
ON E.ManagerID= M.EmployeeID


create table tblperson2(
ID int primary key,
FirstName  nvarchar(50),
MiddleName nvarchar(50),
lastName nvarchar(50)
);




insert into tblperson2 values (1,'sunny',null,null),
(2,null,'raj',null),
(3,null,'ravo',null),
(4,'rajat','Sharma',null),
(5,null,null,'prithvi')


select * from tblperson2




select  id,coalesce(FirstName,MiddleName,LastName) as name
from tblperson2


CREATE TABLE tblcustomer1 (
    Id INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100) NOT NULL
);


INSERT INTO tblcustomer1(Id, Name, Email) VALUES
(1, 'rajat', 'e@R.com'),
(2, 'Sam', 'S@S.com');






select  Id,Name,Email
from tblcustomer1
union 
select id,Name,Email from tblcustomer2



select * from tblcustomer1

create proc sptblecustomer1byemailandname
@Name nvarchar(50),
@Email nvarchar(50)

as
begin 
select name ,email from tblcustomer1 where name= @Name 
 and  Email= @Email
end

sptblecustomer1byemailandname  'rajat', 'e@R.com'


select RIGHT('ABCDE',3)


select * from tblEmployee

CREATE TABLE dbo.tblEmployee(
    Id INT IDENTITY(1,1) PRIMARY KEY,
    FirstName NVARCHAR(50) NOT NULL,
    LastName NVARCHAR(50) NOT NULL,
    Email NVARCHAR(100) NOT NULL UNIQUE
);
GO

-- Insert data
INSERT INTO dbo.tblEmployee (FirstName, LastName, Email) VALUES
('Sam',   'Sony',   'Sam@aaa.com'),
('Ram',   'Barber', 'Ram@aaa.com'),
('Sara',  'Sanosky','Sara@ccc.com'),
('Todd',  'Gartner','Todd@bbb.com'),
('John',  'Grover', 'John@aaa.com'),
('Sana',  'Lenin',  'Sana@ccc.com'),
('James', 'Bond',   'James@bbb.com'),
('Rob',   'Hunter', 'Rob@ccc.com'),
('Steve', 'Wilson', 'Steve@aaa.com'),
('Pam',   'Broker', 'Pam@bbb.com');
GO



//// SPACE FUNCTION 
select * from tblEmployee
select FirstName + SPACE(5) + LastName as FullName
from tblEmployee


////PATINDEX() FUNCTION 
SELECT Email,PATINDEX('%@aaa.com', Email) as Firstoccurence
FROM  tblEmployee
WHERE  PATINDEX('%@aaa.com', Email) > 0



select Email, REPLACE(Email,'.com','.net') as convetemail
from tblEmployee


select GETDATE()

SELECT ISDATE(Getdate()) --return 1

select Month(GETDATE())
select year(getdate())
select DAY(getdate())

SELECT year('01/31/2024')--- return 2024

select DATENAME(day,getdate())
select DATENAME(WEEKDAY,GETDATE())

SELECT DATENAME(DAY,GETDATE())



///QUERY
SELECT Name,