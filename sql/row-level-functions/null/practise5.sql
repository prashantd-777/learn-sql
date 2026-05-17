-- Use {TableName} to refer to the table name in the SQL query. For example:
use SalesDB;

-- Question: Identify the customers who have no scores.
SELECT *
FROM Sales.Customers
WHERE Score IS NULL;

-- Question: List all customers who have scores
SELECT *
FROM Sales.Customers
WHERE Score IS NOT NULL;