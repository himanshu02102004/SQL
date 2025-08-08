


SELECT C.customer_name, C.city
FROM customer C


SELECT product_name, price
FROM product 
where price > 1000



select  *
from customer_transactionn
where transaction_date > '2025-07-01';

select distinct c.customer_id ,c.customer_name
from customer c
JOIN Orders o on c.customer_id=o.customer_id

select *
from Orders
where order_date >='2025-06-01' AND  order_date <='2025-07-01';


SELECT *  FROM product




select *
FROM product
where product_name LIKE 'P%'

select * from customer_transactionn


///////top 3 transaction of customer

SELECT Top 3  customer_id, customer_name, SUM(ct.transaction_amount) as total_amt
FROM customer c
join customer_transactionn  ct on c.customer_id= ct.customer_ids
GROUP BY  c.customer_id ,c.customer_name
Order by total_amt desc


select * from Orders

///Get the number of orders placed by each customer.




select c.customer_id,c.customer_name, Count(o.order_id) as totalorder
from  Orders o
join customer c on c.customer_id= o.customer_id
group by c.customer_id,c.customer_name


//Find customers who haven’t made any transactions in the last 6 months.

select customer_id , customer_name
from customer
where customer_id NOT IN (
   select distinct ct.customer_ids
   from customer_transactionn ct
   where ct.transaction_date>='2025-01-28'
 

);



////////List customers who haven’t made any orders.

select  c.customer_id ,c.customer_name
from customer c
where customer_id NOT IN  (
  
  select DISTINCT  o.customer_id
  from Orders o
  
);



//////Get all products that were never ordered.




select customer_id, customer_name
from customer 
where customer_id not in(
   SELECT DISTINCT o.product_id  
   FROM Orders o

);








SELECT * FROM customer_transactionn
select * from customer
insert into customer values
(6,'kandu','hyderabad'),
(7,'shayad','kashmir')



////////Show the customer who made the highest single transaction.

select top 1 ct.customer_ids ,ct.transaction_amount, c.customer_name
from customer_transactionn ct
join customer c on  ct.customer_ids= c.customer_id
order by ct.transaction_amount desc




select * from Orders

////List all customers who have placed orders for more than one product (using DISTINCT).

select customer_id
from Orders
group by customer_id
having COUNT (DISTINCT product_id) >1 ;

select * from  customer_transactionn


//////Find the total number of transactions done per customer.


select customer_ids, COUNT(*) AS total_transaction 
from customer_transactionn
group by customer_ids



///// List  the  most recent transaction made by each customer.


select 
customer_ids,MAX(transaction_amount) as most_recent_transaction
FROM
customer_transactionn
Group by customer_ids

select * from Orders


//////////////Show customer name, product name, and order date from orders



select c.customer_name,p.product_name, o.order_date
from Orders o
join product p on p.product_id= o.product_id
join customer c  on c.customer_id=o.customer_id


////// Get a list of all customers along with their total number of transactions.

select c.customer_id, c.customer_name, Count(ct.transaction_id)
from customer_transactionn ct
join customer c on ct.customer_ids=c.customer_id
group by c.customer_id,  c.customer_name


select * from product
select * from Orders
select * from customer


////Show all products ordered by customer 'Ravi Kumar'.

select c.customer_name,o.product_id , o.order_date
from customer c
join Orders o on c.customer_id= o.customer_id
where c.customer_name='shri'



//// List customer names who have ordered products that cost more than ₹2000.


select c.customer_name, p.price
from Orders o 
join product p on o.customer_id=o.customer_id
join customer c on c.customer_id=o.customer_id
where p.price > 2000


/// Show customer name, transaction amount, and transaction date (from joined tables).

select c.customer_name,ct.transaction_amount,ct.transaction_date
from customer c
join customer_transactionn ct on c.customer_id= ct.customer_ids