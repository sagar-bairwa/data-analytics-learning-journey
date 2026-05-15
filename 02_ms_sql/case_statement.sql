--case statements

-- Create the Products table
CREATE TABLE Product (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Category VARCHAR(20),
    Price DECIMAL(10, 2),
    StockQuantity INT,
    Supplier VARCHAR(50),
    Rating DECIMAL(3, 1)
);

-- Insert data into the Products table
INSERT INTO Product (ProductID, ProductName, Category, Price, StockQuantity, Supplier, Rating) VALUES
(1, 'Wireless Mouse', 'Electronics', 25.99, 150, 'Tech Supplies', 4.5),
(2, 'Office Chair', 'Furniture', 120.00, 85, 'Comfort Co', 4.7),
(3, 'Water Bottle', 'Accessories', 15.00, 250, 'AquaGear', 4.3),
(4, 'Laptop Backpack', 'Accessories', 45.99, 200, 'GearUp', 4.6),
(5, 'Gaming Laptop', 'Electronics', 999.99, 45, 'Tech Supplies', 4.8),
(6, 'Desk Lamp', 'Furniture', 35.00, 120, 'LightHouse', 4.2),
(7, 'Bluetooth Speaker', 'Electronics', 59.99, 95, 'SoundWave', 4.4),
(8, 'Standing Desk', 'Furniture', 250.00, 50, 'Comfort Co', 4.9),
(9, 'Fitness Tracker', 'Electronics', 129.99, 180, 'FitTech', 4.7),
(10, 'Coffee Mug', 'Accessories', 9.99, 300, 'MugMasters', 4.1);

select * from Product

--example 1
select 
*,
case 
    when price>500 then 'High'
    when price>200 then 'Medium'
    else 'low'
end  as [Low/Medium/high]
from Product

--example 2
select * from product
order by 
case
    when Category = 'Electronics' then 1
    when Category = 'Furniture' then 2
    else 3
end

--Nested case statement
select 
*,
case 
    when Category = 'Electronics' then
        case when price>200 then 'Expensive Electronics'
        else 'Affordable Electronics'
        end
    when category = 'Furniture' then 
        case when price>200 then 'Expensive Furniture'
        else 'Affordable Furniture'
        end
    when Category = 'Accessories' then
        case when price>30 then 'Expensive Accessories'
        else 'Affordable Accessories'
        end
end as [group price]       
from product