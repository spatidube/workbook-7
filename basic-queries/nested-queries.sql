-- 1. What is the product name(s) of the most expensive products?  HINT:  Find the max price in a subquery and then use that value to
-- find products whose price equals that value.  
SELECT ProductName, UnitPrice FROM products where UnitPrice =  ( SELECT MAX(UnitPrice) FROM products);
-- 2. What is the order id, shipping name and shipping address of all orders shipped via "Federal Shipping"?  HINT:  Find the shipper id of "Federal Shipping" in a subquery and then use that value to find the orders that used that shipper. 
-- ECT OrderID, ShipName, ShipAddress FROM orders WHERE ShipName = 'Fedderal Shipping';
SELECT OrderID, ShipName, ShipAddress from orders where ShipVia = 'Federal Shipping';

-- 3.  are the order ids of the orders that ordered "Sasquatch Ale"?  HINT:   Find the product id of "Sasquatch Ale" in a subquery 
-- and then use that value to find the matching orders from the `order details` table.  Because the `order details` table has a space in 
-- its name, you will need to surround 
-- it with back ticks in the FROM clause. 
SELECT OrderID FROM orders where ProcuctID = ( SELECT ProductID FROM products where ProductName = 'Sasquatch Ale');

-- 4. What is the name of the employee that sold order 10266? 
SELECT FirstName, LastName FROM employees WHERE EmployeeID = ( select EmployeeID from orders where OrderID = 1-266);
-- 5. What is the name of the customer that bought order 10266?ID
Select CompanyName from customers WHERE CustomerID = ( SELECT CustomerID FROM orders Where OrderID = 10266);