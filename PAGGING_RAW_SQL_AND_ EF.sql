
create database exercises2

use exercises2


use Storedquery

select * from product
select * from users


insert into product values
(5,'codepant',1,'raghav',2024-3-12)

insert into users values
(3,'soni'),
(4,'raghav'),
(5,'shivam'),
(6,'raj');

CREATE PROC spGetPaggedProduct
@Pagesize INT,
@Pagenumber INT
AS
BEGIN
SELECT
P.productid,
P.productName,
P.CategoryID,
P.Createdby
FROM product P
Order by productid
OFFSET (@Pagenumber -1) * @Pagesize  ROWS
FETCH NEXT @Pagesize ROWS ONLY;
END
EXEC spGetPaggedProduct @PageNumber=1, @Pagesize=2;

select * from product






////////////////////////SERVER SIZE PAGGING WITH EF/////////

