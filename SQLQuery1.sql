create database himanshudb;

use himanshudb;


select * from employee;

select * from employee
order by Salary;

select * from employee
order by Salary DESC;


select * from employee
order by City,Salary ;



select * from employee
where City='gumba' AND Salary='5000';


select * from employee
where City='gumba' OR City='mumba';


select * from employee
where not salary='5000'



select * from employee
where City IN('fumba','mumba');

select * from employee
where EmpName NOT IN ('pom','tom');

select * from employee
where EmpName  IN ('pom','tom');


select * from employee
where Salary BETWEEN 5000 AND 5000;

select * from employee
where Salary  NOT  BETWEEN 5000 AND 1000;

select * from employee
where EmpName   BETWEEN 'priyan' AND 'tom'
ORDER BY EmpName;	










insert into employee(ID,EmpName,City,Salary)
values('7','priyan','naishik','2000');

select * from employee
where City LIKE  'M%';

select * from employee
where City LIKE  '_U%';

select * from employee
where City NOT LIKE 'M%';








select max(Salary) AS Result
from employee;


select min(Salary) AS result
from employee;


select SUM(Salary)
from employee;

select SUM(Salary)
from employee
where Salary >=5000;


select AVG(Salary)
from employee

select AVG(Salary)
from employee
where Salary > 2000;


select * from employee;

select count(City)
from employee;


select count (Salary)
from employee
where Salary >=5000;

select count(*)
from employee;







