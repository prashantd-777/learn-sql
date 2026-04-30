-- Use {TableName} to refer to the table name in the SQL query. For example:
use SalesDB;

-- Question: Show creation time using following format:
-- Day Wed Jan Q1 2025 12:34:56 PM
SELECT
    OrderID,
    CreationTime,
    'Day ' + FORMAT(CreationTime, 'ddd MMM') + ' ' + 'Q' + DATENAME(QUARTER, CreationTime) + ' ' + FORMAT(CreationTime, 'yyyy hh:mm:ss tt') AS CustomFomat
FROM Sales.Orders;


SELECT
FORMAT(CreationTime, 'MMM yy'),
COUNT(*)
FROM Sales.Orders
GROUP BY FORMAT(CreationTime, 'MMM yy');