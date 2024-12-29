create database   SuperStore_Sales;
use SuperStore_Sales;

select * from Super_Store;

-- Retrieve all records from the table.
select * from Super_Store;

-- Get distinct values of Ship Mode.
SELECT DISTINCT Ship_Mode FROM Super_Store;

-- Find the total sales.
SELECT SUM(Sales) AS Total_Sales FROM Super_Store;

-- Count the total number of orders.
SELECT COUNT(Order_ID) AS Total_Orders FROM Super_Store;

-- List all customers from a specific state (e.g., 'California').
SELECT Customer_Name FROM Super_Store WHERE State = 'California';


# Aggregations

-- Find the average profit.
SELECT AVG(Profit) AS Average_Profit FROM Super_Store;

-- Get the maximum sales for a single order.
SELECT MAX(Sales) AS Max_Sales FROM Super_Store;

-- Count the number of orders for each Ship Mode.
SELECT Ship_Mode, COUNT(Order_ID) AS Order_Count 
FROM Super_Store 
GROUP BY Ship_Mode;

-- Calculate the total profit by region.
SELECT Region, SUM(Profit) AS Total_Profit 
FROM Super_Store 
GROUP BY Region;

-- Find the total sales and quantity for each product category.
SELECT Category, SUM(Sales) AS Total_Sales, SUM(Quantity) AS Total_Quantity 
FROM Super_Store 
GROUP BY Category;

# Filtering and Conditions

-- Find all orders with profit greater than 1000.
SELECT * FROM Super_Store WHERE Profit > 1000;

-- Retrieve all orders shipped in 'First Class' mode.
SELECT * FROM Super_Store WHERE Ship_Mode = 'First Class';

-- Find all customers who returned their orders.
SELECT Customer_Name FROM Super_Store WHERE Returns = TRUE;

-- Get orders placed in the year 2023.
SELECT * FROM Super_Store 
WHERE YEAR(Order_Date) = 2023;

-- Retrieve all records where sales are between 500 and 1000.
SELECT * FROM Super_Store 
WHERE Sales BETWEEN 500 AND 1000;

# sorting

-- Sort orders by Order Date in descending order.
SELECT * FROM Super_Store 
ORDER BY Order_Date DESC;

-- List top 5 products with the highest sales.
SELECT Product_Name, Sales 
FROM Super_Store 
ORDER BY Sales DESC 
LIMIT 5;

# Subqueries

-- Find the customer who placed the highest order (in terms of sales).
SELECT Customer_Name 
FROM Super_Store 
WHERE Sales = (SELECT MAX(Sales) FROM Super_Store);

-- List all products that have sales greater than the average sales.
SELECT Product_Name 
FROM Super_Store 
WHERE Sales > (SELECT AVG(Sales) FROM Super_Store);

# Advance

-- Find the percentage contribution of each category to total sales.
SELECT Category, 
       SUM(Sales) * 100.0 / (SELECT SUM(Sales) FROM Super_Store) AS Percentage_Contribution 
FROM Super_Store 
GROUP BY Category;

-- List the total sales and profit for each state, ordered by profit in descending order.
SELECT State, SUM(Sales) AS Total_Sales, SUM(Profit) AS Total_Profit 
FROM Super_Store 
GROUP BY State 
ORDER BY Total_Profit DESC;

-- Find the total number of returned orders by payment mode.
SELECT Payment_Mode, COUNT(*) AS Returned_Orders 
FROM Super_Store 
WHERE Returns = TRUE 
GROUP BY Payment_Mode;


SELECT * 
FROM Super_Store ;



















