create database finalquery

use finalquery

-- 1. Create Tables
CREATE TABLE Customers (
    CustomerId INT PRIMARY KEY,
    CustomerName VARCHAR(100)
);

CREATE TABLE Categories (
    CategoryId INT PRIMARY KEY,
    CategoryName VARCHAR(100)
);

CREATE TABLE Products (
    ProductId INT PRIMARY KEY,
    ProductName VARCHAR(100),
    CategoryId INT,
    FOREIGN KEY (CategoryId) REFERENCES Categories(CategoryId)
);

CREATE TABLE Orders (
    OrderId INT PRIMARY KEY,
    CustomerId INT,
    ProductId INT,
    Quantity INT,
    OrderDate DATE,
    FOREIGN KEY (CustomerId) REFERENCES Customers(CustomerId),
    FOREIGN KEY (ProductId) REFERENCES Products(ProductId)
);

-- 2. Insert Sample Data
INSERT INTO Customers VALUES
(1, 'John Doe'),
(2, 'Jane Smith'),
(3, 'Michael Johnson');

INSERT INTO Categories VALUES
(1, 'Electronics'),
(2, 'Clothing'),
(3, 'Books');

INSERT INTO Products VALUES
(1, 'Laptop', 1),
(2, 'Smartphone', 1),
(3, 'T-Shirt', 2),
(4, 'Novel', 3);

INSERT INTO Orders VALUES
(1, 1, 1, 2, '2025-08-01'), -- John buys 2 Laptops
(2, 1, 2, 1, '2025-08-02'), -- John buys 1 Smartphone
(3, 2, 1, 3, '2025-08-03'), -- Jane buys 3 Laptops
(4, 2, 3, 5, '2025-08-04'), -- Jane buys 5 T-Shirts
(5, 3, 4, 4, '2025-08-04'), -- Michael buys 4 Novels
(6, 3, 1, 1, '2025-08-04'); -- Michael buys 1 Laptop


///// Getting maximum order for a particular product


	select top 3 ProductId,sum(Quantity)as totalquantity
	from Orders
	group by ProductId
	order by totalquantity desc



/// maximum order by customer

select c.CustomerId,c.CustomerName,sum(o.Quantity)  as totalorder
from Customers c
join Orders o on o.CustomerId=c.CustomerId
group by c.CustomerId,c.CustomerName
order by totalorder desc

// category maximum order 

select top 3 c.CategoryId, sum(o.Quantity) totalorder
from Categories c
join Products p on p.CategoryId= c.CategoryId
join Orders o  on o.ProductId=p.ProductId
group by c.CategoryId 
order by totalorder desc

