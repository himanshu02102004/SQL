use finalquery

select * from Employee

create function getempit(@Department int)
RETURNS TABLE
as
return 
(
select ID,Name, Department
from Employee

);

select * from getempit('II')


create function multivalue(@Depart nvarchar(50))
RETURNS @result table 
(
  ID int, 
  Name nvarchar(50),
  Department nvarchar(30)
)
AS
BEGIN 
  insert into @result
  select ID,Name, Department
  from Employee
  where Department = @Depart;
  RETURN ;
END;

select * from multivalue('IT');


select * from Employee

CREATE FUNCTION employeefunc(@depart nvarchar(50))
RETURNS @result table
(
     IDS INT,
    Name nvarchar(50),
    Department nvarchar(50)
)
AS
BEGIN 
  INSERT INTO @result
  select ID, NAME , Department 
  from Employee
  where Department= @depart
  Return ;
end;


Select * from  employeefunc('IT')


select * from Employee
with employeecte AS (
  select ID,Name,Department
  from Employee

  union all

  select 
  e.ID, e.Name, e.Department
  from Employee e
  inner join  cte_employee ct
  on ct.Name= e.ID
)



CREATE TABLE EmployeeHierarchy (
    EmployeeID INT PRIMARY KEY,
    EmployeeName NVARCHAR(50),
    ManagerID INT NULL
);


/// recursive cte


WITH EmployeeCTE AS (
    -- Anchor member (CEO)
    SELECT EmployeeID, EmployeeName, ManagerID, 0 AS Level
    FROM EmployeeHierarchy
    WHERE ManagerID IS NULL

    UNION ALL

    -- Recursive member (fetch subordinates)
    SELECT e.EmployeeID, e.EmployeeName, e.ManagerID, 
    FROM EmployeeHierarchy e
    INNER JOIN EmployeeCTE c ON e.ManagerID = c.EmployeeID
)
SELECT * FROM EmployeeCTE;