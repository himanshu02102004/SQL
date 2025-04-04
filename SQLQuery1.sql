CREATE DATABASE MyDB

use MyDB;

create table Student(

Id INT PRIMARY KEY,
StudentName varchar(250),
StudentGender varchar(250),
Age INT,
Standard INT,
FatherName varchar(250)


);


insert into Student(Id,StudentName,StudentGender,Age,Standard,FatherName)
values('1','himanshu','male','22','12','jogi');

insert into Student(Id,StudentName,StudentGender,Age,Standard,FatherName)
values('2','pria','female','32','12','premnath');

insert into Student(Id,StudentName,StudentGender,Age,Standard,FatherName)
values('3','som','female','42','10','shubh');



insert into Student(Id,StudentName,StudentGender,Age,Standard,FatherName)
values('5','yash','male','22','15','vath');


insert into Student(Id,StudentName,StudentGender,Age,Standard,FatherName)
values('4','riyia','female','12','10','sonu');

use  MyDB

select * from Student; 