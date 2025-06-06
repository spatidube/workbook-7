-- 1. What is the name of the table that holds the items Northwind sells?   
SELECT ProductID, ProductName from products;
-- 2. Write a query to list the product id, product name, and unit price of every product. 
SELECT ProductID, ProductName, UnitPrice from products;
-- 3. Write a query to list the product id, product name, and unit price of every product.  Except this time, order then in ascending order by price. 
SELECT ProductID, ProductName, UnitPrice from products order by UnitPrice;
-- 4. What are the products that we carry where the unit price is $7.50 or less?   
SELECT ProductID, ProductName, UnitPrice from products where UnitPrice <= 7.50 ;
-- 5. What are the products that we carry where we have at least 100 units on hand?  Order them in descending order by price.  
Select ProductID, ProductName, UnitsInStock from products where UnitsInStock >= 100 order by UnitPrice DESC ;

-- 6. What are the products that we carry where we have at least 100 units on hand?  Order them in descending order by price. 
Select ProductID, ProductName, UnitsInStock from products where UnitsInStock >= 100 order by UnitPrice DESC, ProductName ASC;

-- 7. What are the products that we carry where we have no units on hand, but 1 or more units of them on backorder?  Order them by product name. 
Select ProductID, ProductName, UnitsInStock from products where UnitsInStock = 0 and UnitsOnOrder > 0  order by ProductName ASC;


-- 8. What is the name of the table that holds the types (categories) of the items Northwind sells? 
SELECT CategoryID from products;
-- 9. Write a query that lists all of the columns and all of the rows of the categories table?  What is the category id of seafood? 
SELECT * FROM categories WHERE CategoryName = 'Seafood'
;
-- 10. Examine the Products table.  How does it identify the type (category) of each item sold?  Write a query to list all of the seafood items we carry. 
select * FROM products where CategoryID = '8';
-- 11. What are the first and last names of all of the Northwind employees? 
select FirstName, LastName FROM employees;
-- 12. What employees have "manager" in their titles? 
Select Title from employees where Title like %manager%;
-- 13. List the distinct job titles in employees. 
SELECT DISTINCT Title FROM employees;
-- 14. What employees have a salary that is between $200 0 and $2500? 
Select * from employees where Salary between 200 and 2500; 
-- 15. List all of the information about all of Northwind's suppliers. 
select * from suppliers;
-- 16. Examine the Products table.  How do you know what supplier supplies each product?  Write a query to list all of the items that  "Tokyo Traders" supplies to Northwind
select * from suppliers where CompanyName = 'Tokyo Traders';