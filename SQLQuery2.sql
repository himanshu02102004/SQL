use himanshudb;

create table Employees(

ID int NOT NULL,
EmpName varchar(255) NOT NULL,
City varchar(255),
Salary int 
)


insert into Employees(ID,EmpName,City,Salary)
values('1','Tom','mumbai','8000');


insert into Employees(ID,EmpName,City,Salary)
values('2','jom','Jaipur','9000');



select * from Employees;

