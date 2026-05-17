-- Use {TableName} to refer to the table name in the SQL query. For example:
use SalesDB;

-- Question: Sort the customers from lowest to highest scores, with nulls appearing last
SELECT 
CustomerID,
Score,
CASE WHEN Score IS NULL THEN 1 ELSE 0 END AS FLAG
FROM Sales.Customers
ORDER BY CASE WHEN Score IS NULL THEN 1 ELSE 0 END ASC;