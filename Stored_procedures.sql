use exercises2

create database Storedquery

use Storedquery


create table product(
productid INT  PRIMARY KEY,
productName NVARCHAR(100),
CategoryID INT,
Createdby NVARCHAR(50),
CreatedDate  Datetime
);



CREATE TABLE Category(

CategoryID int Primary key,
CategoryName nvarchar(100)
);


create table users(
userID int primary key,
userName nvarchar(100)
);


SELECT * FROM product



select * from product


CREATE PROC STOREDPROCEDUREREPORT
AS
BEGIN 
SELECT
p.productid,
p.productName,
p.CategoryID,
p.Createdby,
p.CreatedDate
FROM product p
 INNER JOIN  Category c ON c.CategoryID=p.CategoryID
 INNER JOIN users u ON p.Createdby=u.userName
 ORDER BY
 p.CreatedDate DESC
 END

 EXEC STOREDPROCEDUREREPORT


 SELECT * FROM product
 insert into Category values
 (1,'Electronic'),
 (2,'GAMING');

 INSERT INTO users VALUES
 (1,'UJWAL'),
 (2,'RAHUL');

 INSERT INTO product VALUES
 (1,'PHONE',1,'UJWAL',2025-2-20),
 (2,'FREEFIRE',2,'RAHUL',2025-3-13);


