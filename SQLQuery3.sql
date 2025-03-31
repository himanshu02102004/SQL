create table  employee(

ID int,
EmpName varchar(255),
City varchar(255),
Salary int
);


insert into employee(ID,EmpName,City,Salary)
values('1','tom','mumba','5000');


insert into employee(ID,EmpName,City,Salary)
values('2','tom','mumba','5000');

insert into employee(ID,EmpName,City,Salary)
values('3','uom','rumba','5000');

insert into employee(ID,EmpName,City,Salary)
values('4','pom','fumba','5000');

insert into employee(ID,EmpName,City,Salary)
values('5','tom','qumba','5000');

insert into employee(ID,EmpName,City,Salary)
values('6','bom','gumba','5000');

select * from employee

select ID,EmpName from employee;

select distinct City from employee;

select * from employee;

select EmpName
from employee
where Salary=5000;

select *
from employee
where Salary=5000;

select *
from employee
where EmpName='uom';