--Practice on joins


CREATE TABLE Customers (
    customer_id INT,
    name VARCHAR(50),
    city VARCHAR(50)
);

INSERT INTO Customers VALUES
(1, 'Sagar', 'Delhi'),
(2, 'Aman', 'Mumbai'),
(3, 'Ravi', 'Pune'),
(4, 'Neha', 'Delhi'),
(5, 'Priya', 'Bangalore'),
(6, 'Karan', 'Chennai');

CREATE TABLE Products (
    product_id INT,
    product_name VARCHAR(50),
    price INT
);

INSERT INTO Products VALUES
(101, 'Laptop', 50000),
(102, 'Mobile', 20000),
(103, 'Tablet', 30000),
(104, 'Headphones', 2000),
(105, 'Smartwatch', 8000);

CREATE TABLE Orders (
    order_id INT,
    customer_id INT,
    product_id INT,
    quantity INT
);

INSERT INTO Orders VALUES
(1001, 1, 101, 1),
(1002, 2, 102, 2),
(1003, 1, 103, 1),
(1004, 3, 104, 3),
(1005, 7, 105, 1),   -- ❗ invalid customer (real world dirty data)
(1006, 4, 106, 1);   -- ❗ invalid product

---------------------------------------------------------------------------------------------------------------------------------------------

select * from Customers
select * from Orders
select * from Products

--inner join (which customer buy which product
select 
c.name,
o.quantity,
p.product_name,
p.price
from Customers c inner join Orders o
on c.customer_id = o.customer_id
join Products p
on o.product_id = p.product_id

--left outer join (to check how many customers havnt buy anyhting or inavtive users)
select * from Customers c left join Orders o
on c.customer_id = o.customer_id
left join Products p
on o.product_id = p.product_id
--where order_id is not null


--right outer join (which products havent sold yet or dead inventory)
select *
--o.product_id,
--p.product_name,
--o.quantity,
--o.order_id,
--p.price 
from Customers c right join orders o 
on c.customer_id = o.customer_id
full outer join Products p
on o.product_id = p.product_id


--full outer join 
select * from Customers c full outer join Orders o
on c.customer_id = o.customer_id
full outer join Products p
on o.product_id = p.product_id
 




