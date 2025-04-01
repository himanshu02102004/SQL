use himanshudb;

create table Employee5(
ID int NOT NULL PRIMARY KEY,
EmpName varchar(255),
City varchar(255),
Salary int CHECK(Salary < 5000)
)

insert into Employee5(ID,EmpName,City,Salary)
values('1','yes','odisha','900');

insert into Employee5(ID,EmpName,City,Salary)
values('2','tess','odisfa','567');

insert into Employee5(ID,EmpName,City,Salary)
values('3','FEEss','odiASDa','567');

insert into Employee5(ID,EmpName,City,Salary)
values('4','WESss','QdiASDfa','567');

insert into Employee5(ID,EmpName,City,Salary)
values('5','YTRESess','ASDdisfa','237');

select * from Employee5
ORDER BY Salary ASC;


select * from Employee5
ORDER BY EmpName ASC;


select * from Employee5
ORDER BY Salary DESC;

select * from Employee5
ORDER BY EmpName DESC; 


alter table Employee5
ADD Age int ;


alter table Employee5
DROP COLUMN Age;


select * from Employee5;

UPDATE Employee5
SET Salary ='900'
where  ID =4;

UPDATE Employee5
SET Salary ='900',City='odishaoyo'
where  ID =4;

select * from Employee5

select EmpName
from Employee5;

select EmpName AS myresult
from Employee5;


select * from Employee5
create procedure AllRecords
AS
select * from employee
GO;

exec AllRecords;


/////  store prcoedure with  one  parameter


create procedure AllRecords2 @City varchar(255)
AS
select * from Employee5 where City=@City;
exec AllRecords2  @City ='ABC'

select * from Employee5


///// store procedure with two parameter

create procedure AllRecord3 @City varchar(255), @EmpName varchar(255)
AS
select * from Employee5 where City=@City AND EmpName=@EmpName;

exec AllRecord3  @City ='odisha', @EmpName='yes';



CREATE INDEX MyIndex
on Employee5 (EmpName);

CREATE INDEX MyIndex2
on Employee5(EmpName,Salary);


DROP INDEX Employee5.MyIndex2;

select * from Employee5;

/// all column and row transfer into employee2022

select * into Employee2022
from Employee5;



/// only specific column and row transfer

select EmpName, City into Employee2023
from Employee5;



select * from Employee2022;
select * from Employee2023;

select * from Employee5;


select top 2 * from  Employee5;
select top 50 percent * from Employee5;
select top 75 percent * from Employee5;
select top 80 percent * from Employee5;


select top 2 * from Employee5
where Salary <900;


backup database  himanshudb
to disk='C:\Users\Nimap\Documents\SQL\mybackup.bak';


select * from Employee5;

create view [Employeess ABC] AS
select EmpName,City
from Employee5
where City= 'odisha';

select * from [Employeess ABC]


select * from Employee5;

create view [Salary ABOVE 7000] AS
select EmpName,City,Salary
from Employee5
where Salary < 900;


select * from [Salary ABOVE 7000];

/// for remove purpose

DROP VIEW [Employeess ABC]



drop table Employee5;