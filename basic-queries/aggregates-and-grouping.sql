-- 1. How many suppliers are there?  Use a query! 
Select COUNT(*) FROM suppliers;
-- 2. What is the sum of all the employee's salaries? 
SELECT SUM(Salary) FROM employees;
-- 3. What is the price of the cheapest item that Northwind sells?   
SELECT MIN(UnitPrice) AS CheapestPrice FROM products;

-- 4. What is the average price of items that Northwind sells?   
select avg(UnitPrice) AS AveragePrice from products;
-- 5. What is the price of the most expensive item that Northwind sells?  
select max(UnitPrice) As MaximumPrice from products; 
-- 6. What is the supplier ID of each supplier and the number of items they supply?  You can answer this query by only looking at the Products table. 
Select SupplierID, Count(*) AS NumberOfProducts from products GROUP BY SupplierID;
-- 7. What is the category ID of each category and the average price of each item in the category?  You can answer this query by only looking at the Products table. 
SELECT CategoryID, avg(CategoryID) AS AverageOfProducts from categories GROUP BY CategoryID;
-- 8. For suppliers that provide at least 5 items to Northwind, what is the supplier ID of each supplier and the number of items they supply?  You can answer this query by only looking at the Products table. 
SELECT SupplierID, Count(*) AS NumberofProducts FROM products GROUP by SupplierID;
-- 9. List the product id, product name, and inventory value (calculated by multiplying unit price by the number of units on hand).  Sort the results in descending order by value.  If two or more have the same value, order by product name.alte
SELECT ProductID, ProductName, UnitPrice*UnitsInStock AS InventoryValue FROM products ORDER BY InventoryValue DESC, ProductName ASC;