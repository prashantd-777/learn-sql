-- Use {TableName} to refer to the table name in the SQL query. For example:
use SalesDB;

-- Question: Using a SalesDB, Retrieve a list of all orders, along with the related customer, product and employee details
-- For each order display:
-- orderID, customer's name, product name, Sales Amount, product price, Sales person's name
SELECT *
FROM Sales.Orders;
SELECT *
FROM Sales.Customers;
SELECT *
FROM Sales.Products;
SELECT *
FROM Sales.Employees;


SELECT o.OrderID, c.FirstName AS CustomerFirstName, c.LastName AS CustomerLastName, p.Product AS ProductName,
    p.Price AS ProductPrice, e.FirstName AS EmployeeFirstName, e.LastName AS EmployeeLastName
FROM Sales.Orders AS o
    LEFT JOIN Sales.Customers AS c
    ON o.CustomerID = c.CustomerID
    LEFT JOIN Sales.Products AS p
    ON o.ProductID = p.ProductID
    LEFT JOIN Sales.Employees AS e
    ON o.SalesPersonID = e.EmployeeID;