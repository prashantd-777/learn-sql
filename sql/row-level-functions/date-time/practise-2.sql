-- Use {TableName} to refer to the table name in the SQL query. For example:
use SalesDB;

SELECT OrderDate
FROM Sales.Orders;

-- Question: How many orders were placed each year?
SELECT
    YEAR(OrderDate) AS OrderDateYear,
    COUNT(*) As NrOFOrders
FROM Sales.Orders
GROUP BY YEAR(OrderDate);

-- Question: How many orders were placed each month?
SELECT
    MONTH(OrderDate) AS OrderDateMonthNumber,
    COUNT(OrderDate) AS NrOfOrders
FROM Sales.Orders
GROUP BY MONTH(OrderDate);

-- Above query will return month in number. but if actual month need to dsiplay then,
SELECT
    DATENAME(month, OrderDate) AS OrderDate,
    COUNT(*)
FROM Sales.Orders
GROUP BY DATENAME(month, OrderDate);
