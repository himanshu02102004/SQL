create database exercises;


use exercises

create table tblEmployee(
 ID INT PRIMARY KEY,
 Name VARCHAR(50),
 Gender VARCHAR(60),
 Salary VARCHAR(70),
 DepartmentId INT
);


create table tbldepartment(
Id INT PRIMARY KEY,
DepartmentName VARCHAR(50),
Location VARCHAR(50),
DepartmentHead VARCHAR(70)

);


ALTER TABLE tblEmployee
ALTER COLUMN Salary INT
SELECT * FROM tblEmployee
INSERT INTO tblEmployee(ID,Name,Gender,Salary,DepartmentId) VALUES
(1,'AWALE','MALE', 7898,1),
(2,'PRAJWAL','MALE',5678,3),
(3,'RAJ','MALE',678,1),
(4,'PRINCY','FEMALE',7898,2),
(5,'MAYA','FEMALE',3456,4),

INSERT INTO tblEmployee(ID,Name,Gender,Salary,DepartmentId) VALUES
(6,'SNEHA','FEMALE',456,NULL),
(7,'MEGHA','FEMALE',908,NULL);



SELECT * FROM tbldepartment

INSERT INTO tbldepartment(Id,DepartmentName,Location,DepartmentHead) VALUES
(1,'IT','MUMBAI','ROHAN'),
(2,'COMP','DELHI','MOHIT'),
(3,'FINANCE','KOLKATA','SAHIL'),
(4,'LOAN','NOIDA','VIRAT'),
(5,'HR','PANVEL','VISHAL');

SELECT NAME ,GENDER,