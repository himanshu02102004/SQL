
use himanshudb;

create table Employee3(
ID int NOT NULL UNIQUE,
EmpName varchar(255) NOT NULL,
City varchar(255),
Salary int 

)


insert into Employee3(ID,EmpName,City,Salary)
values('1','yep','jammu','8000');


insert into Employee3(ID,EmpName,City,Salary)
values('1','yhip','noida','5000');


insert into Employee3(ID,EmpName,City,Salary)
values('3','radha','virar','4000');

insert into Employee3(ID,EmpName,City,Salary)
values('4','jetho','bandhan','3000');



insert into Employee3(ID,EmpName,City,Salary)
values('5','tho','ndhan','3000');


select * from Employee3;
