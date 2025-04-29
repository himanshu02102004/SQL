SELECT TOP (1000) [EmployeeId]
      ,[EmployeeName]
      ,[DepartmentID]
      ,[Salary]
  FROM [pratices].[dbo].[Employee]


  use pratices

  insert into Employee values 
  (101,'himanshu',1,5000),
  (102,'prajwal',2,7000),
  (103,'zaid',3,600);



  select * from Department

  select * from Employee

  use pratices
  create table Salaries(
  EmployeeId INT PRIMARY KEY,
  Salary Decimal(10,2),

  FOREIGN KEY (EmployeeId) REFERENCES Employee(EmployeeId)

  );



  DROP TABLE Salaries;


