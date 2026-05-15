-- 01_data_understanding

USE [E_Commerce];


SELECT * FROM customers;
SELECT * FROM orders;
SELECT * FROM order_items;
SELECT * FROM products;


--======================================================================
-- 1)Question : Total rows in each table
--Description : Find the total number of rows in each table.
--======================================================================

SELECT 
	'customers' AS table_name,
	COUNT(*) AS total_rows 
FROM 
	customers 
	
UNION ALL

SELECT 
	'orders',
	COUNT(*)  
FROM 
	orders

UNION ALL

SELECT 
	'order_items', 
	COUNT(*) 
FROM 
	order_items

UNION ALL

SELECT 
	'products', 
	COUNT(*) 
FROM 
	products;



--===========================================================================================
--Question 2: City wise cutomers distribution
--Description:Find category-wise product counts and their percentage share of total products.
--===========================================================================================

SELECT city,
	COUNT(customer_id) AS total_customers,
	CAST( 
		ROUND(
		COUNT(customer_id)*100.0 / SUM(COUNT(customer_id)) OVER(), 
		2 
		) AS DECIMAL(5,2)
	) AS percentage
FROM 
	customers
GROUP BY 
	city
ORDER BY
	percentage DESC;



--==========================================================================================
--Question 3: Product per category
--Description:Calculate the number of products in each category and their percentage
--            contribution to the total products, ordered by highest percentage. 
--=========================================================================================

SELECT 
	category,
	COUNT(product_id) AS total_products,
	CAST( 
		ROUND(
		COUNT(product_name)*100.0 / SUM(COUNT(product_name)) OVER(),
		2 
		) AS DECIMAL(5,2)
	) AS percentage
FROM 
	products
GROUP BY 
	category
ORDER BY 
	percentage DESC;



--===================================================================
--Question 4:  Most Expensive Products
--Description: Identified the top 5 most expensive products using
--             DENSE_RANK() window function.
--===================================================================

SELECT 
	product_name, 
	price, 
	rank_by_price 
FROM
	(SELECT 
		product_name,
		price,
		DENSE_RANK() OVER (
			ORDER BY price DESC
		) AS rank_by_price
	FROM 
		products 
	) ranked_products
WHERE 
	rank_by_price <= 5;



--===================================================================
--Question 5: Earliest & latest order date
--Description: 
--===================================================================

SELECT 
	MIN(order_date) AS earliest_order_date,
	MAX(order_date) AS latest_order_date
FROM 
	orders;
 

