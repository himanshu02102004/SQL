use finalquery;


/// duplicate remove
with duplcate_remove as (
 select *,
 row_number()  over(partition by name  order by id   ) as  duplicate
 from ##People 
)


select *
from duplcate_remove

 delete *
from duplcate_remove 
where duplicate > 1



CREATE TABLE ##SalesData (
    id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    sale_date DATETIME
);

INSERT INTO ##SalesData (id, customer_name, sale_date) VALUES
(1,  'John Smith',       '2000-01-15 10:30:00'),
(2,  'Emma Johnson',     '2001-02-20 12:15:00'),
(3,  'Michael Brown',    '2002-03-25 14:45:00'),
(4,  'Olivia Davis',     '2003-04-10 09:20:00'),
(5,  'William Wilson',   '2004-05-18 17:10:00'),
(6,  'Sophia Taylor',    '2005-06-22 11:05:00'),
(7,  'James Anderson',   '2006-07-14 13:30:00'),
(8,  'Ava Thomas',       '2007-08-19 15:00:00'),
(9,  'Benjamin Moore',   '2008-09-23 08:50:00'),
(10, 'Isabella Martin',  '2009-10-05 16:40:00'),
(11, 'Lucas Lee',        '2010-11-11 07:15:00'),
(12, 'Mia Perez',        '2011-12-25 19:55:00'),
(13, 'Henry White',      '2012-01-30 14:20:00'),
(14, 'Charlotte Harris', '2013-02-14 10:10:00'),
(15, 'Alexander Clark',  '2014-03-03 09:00:00'),
(16, 'Amelia Lewis',     '2015-04-08 18:45:00'),
(17, 'Daniel Walker',    '2016-05-22 12:35:00'),
(18, 'Evelyn Hall',      '2017-06-12 20:15:00'),
(19, 'Matthew Allen',    '2018-07-29 06:25:00'),
(20, 'Harper Young',     '2019-08-04 13:15:00'),
(21, 'Joseph King',      '2020-09-10 11:50:00'),
(22, 'Ella Scott',       '2021-10-18 08:05:00'),
(23, 'David Green',      '2022-11-23 21:40:00'),
(24, 'Luna Adams',       '2023-12-31 23:55:00'),
(25, 'Samuel Baker',     '2024-01-05 05:15:00'),
(26, 'Scarlett Nelson',  '2025-02-09 14:00:00'),
(27, 'Jack Carter',      '2026-03-15 16:20:00'),
(28, 'Victoria Mitchell','2027-04-21 18:30:00'),
(29, 'Leo Roberts',      '2028-05-27 19:45:00'),
(30, 'Grace Turner',     '2029-06-30 07:05:00');

select * 
from ##SalesData
WHERE  YEAR(sale_date) BETWEEN 2008 AND 2030

CREATE TABLE Salary (
    id INT PRIMARY KEY,
    salary DECIMAL(10,2)
);

INSERT INTO Salary (id, salary) VALUES
(1, 250.00),
(2, 300.00),
(3, 450.00),
(4, 600.00);

select 
from Salary s1
inner join Salary s2





SELECT MAX(salary) secondMAX
FROM Salary
WHERE salary < (SELECT MAX(salary) FROM Salary);

