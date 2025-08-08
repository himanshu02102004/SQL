use finalquery

CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50) NOT NULL,
    salary DECIMAL(10, 2) NOT NULL
);

-- Insert sample data
INSERT INTO Employee (emp_id, emp_name, salary) VALUES
(1, 'John Doe', 50000.00),
(2, 'Jane Smith', 60000.00),
(3, 'Michael Johnson', 75000.00),
(4, 'Emily Davis', 55000.00),
(5, 'David Wilson', 45000.00);





select * from Employee;

select *
from Employee
where salary >(select avg(salary ) as sas from Employee)





with avg_salary (avg_s) as 
       (select cast (AVG(salary) as int )  from Employee)


select * 
from Employee e, avg_salary av 
where e.salary > av.avg_s

CREATE TABLE StoreProducts (
    store_id INT,
    store_name VARCHAR(50),
    product VARCHAR(50),
    quantity INT,
    cost INT
);

INSERT INTO StoreProducts (store_id, store_name, product, quantity, cost) VALUES
-- Store 1 (3 products)
(1, 'Apple Originals 1', 'iPhone 12 Pro', 1, 1000),
(1, 'Apple Originals 1', 'MacBook Pro 13', 3, 2000),
(1, 'Apple Originals 1', 'AirPods Pro', 2, 280),

-- Store 2 (2 products)
(2, 'Apple Originals 2', 'iPhone 12 Pro', 2, 1000),
(2, 'Apple Originals 2', 'MacBook Air', 1, 1100),

-- Store 3 (3 products)
(3, 'Apple Originals 3', 'iPhone 12 Pro', 1, 1000),
(3, 'Apple Originals 3', 'MacBook Pro 13', 3, 2000),
(3, 'Apple Originals 3', 'AirPods Pro', 3, 280),

-- Store 4 (2 products)
(4, 'Apple Originals 4', 'iPhone 12', 2, 1000),
(4, 'Apple Originals 4', 'AirPods Pro', 1, 280);





select * from StoreProducts




/// total sale per each stores ---total sale

select s.store_id,sum(cost) as total_cost_per_store
from StoreProducts s
group by s.store_id


// find the avg sale from all the stores

select avg(total_cost_per_store) as avg_sale_for_all_stores	  
from  ( select s.store_id,sum(cost) as avg_cost_per_store
from StoreProducts s
group by s.store_id ) x;



// find total sale > avg sale for all stores

// with cte

with Total_Sale(store_id,total_cost_per_store) as (
         select s.store_id,sum(cost) as total_cost_per_store
         from StoreProducts s
         group by s.store_id),

		 avg_sale(avg_sale_for_all_stores) as (
		 select avg (total_cost_per_store)  as avg_sales_for_stores 
		 from Total_Sale)
		 
select * 
from Total_Sale ts
join avg_sale   av
on ts.total_cost_per_store  > av.avg_sale_for_all_stores

		 














// without cte
select * 
from (
      select s.store_id,sum(cost) as total_cost_per_store
      from StoreProducts s
      group by s.store_id
      ) total_sales

join (select avg(total_cost_per_store) as avg_sale_for_all_stores	  
from  ( select s.store_id,sum(cost) as total_cost_per_store
from StoreProducts s
group by s.store_id ) x) avg_sales
on total_sales.total_cost_per_store > avg_sales.avg_sale_for_all_stores



CREATE TABLE Employee2(
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50) NOT NULL,
    monthly_salary DECIMAL(10,2) NOT NULL
);


INSERT INTO Employee2(emp_id, emp_name, monthly_salary) VALUES
(1, 'John Doe', 5000.00),
(2, 'Jane Smith', 7000.00),
(3, 'Michael Johnson', 9000.00),
(4, 'Emily Davis', 4500.00),
(5, 'David Wilson', 8000.00);




CREATE FUNCTION  GetAnnualSalary(@monthly_salary DECIMAL(10,2))
RETURN  DECIMAL(10,2)
AS
BEGIN

EM

