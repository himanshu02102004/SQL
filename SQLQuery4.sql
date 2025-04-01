use himanshudb;

create table Employee4(
ID int NOT NULL PRIMARY KEY,
EmpName varchar(255),
City varchar(255),
Salary int 
)

insert into Employee4(ID,EmpName,City,Salary)
values('1','yes','odisha','900');

select * from Employee4;