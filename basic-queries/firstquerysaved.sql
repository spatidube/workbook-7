USE northwind;

-- 01 What categories of products does Northwind Traders sell?
SELECT *
FROM categories;

-- 02 What is the name of a product that sounds interesting to you?
SELECT * FROM products WHERE ProductName = 'Escargots de Bourgogne';

-- 03 What are some of the countries in which we have customers?
SELECT Country FROM customers;

-- 4. What date was our first order placed? How did you determine that?
SELECT min(OrderDate) from orders;

-- 5. What date was our last order placed?
SELECT max(OrderDate) FROM orders;

-- 6. How many customers do we currently have?
SELECT count(CustomerID) FROM orders;

-- 7. Do we have any suppliers in South America? Europe? Africa?
SELECT DISTINCT(COUNTRY) FROM suppliers;

-- 8. What is our most expensive product?
SELECT MAX(UnitPrice) from products;

-- 9. What is our least expensive product?
SELECT MIN(UnitPrice) from products;

-- 10. We have a customer named "The Big Cheese" if I wanted to get details
SELECT customerID = 'The Big Cheese' FROM customers;
-- hat about their last order from us how would you find that information?
SELECT max(OrderDate) from orders;

-- a. What tables would you use?
select OrderDate FROM orders;




