use CrudTask

create procedure spname
As
Begin 
Select ID from Users
End 

select * from Users
spname

select c.CategoryId ,c.Name,p.PropName
from Categories c
join Products p  ON p.CategoryId=c.CategoryId