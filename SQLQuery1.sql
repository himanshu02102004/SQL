create database pratices;

use pratices;

create table Department(
 DepartmentID INT Primary Key,
 DepartmentNmae VARCHAR(50) NOT NULL
	

);


create table Employee(
EmployeeId INT Primary Key,
EmployeeName Varchar(50),
DepartmentID INT ,
Salary Decimal(10,2),


FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)

);



create table Salaries(
EmployeeId INT Primary key,
Salary Decimal(10,2),

FOREIGN KEY (EmployeeId) REFERENCES Employee(EmployeeId)

);


USE pratices

INSERT INTO Department
VALUES (1,'HR'), (2,'IT'), (3,'FINANCE');
