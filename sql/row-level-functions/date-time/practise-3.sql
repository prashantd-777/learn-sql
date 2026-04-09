-- Use {TableName} to refer to the table name in the SQL query. For example:
use SalesDB;

-- Question: Show all orders that were placed during the month of February.
SELECT
   *
FROM Sales.Orders
WHERE MONTH(OrderDate) = 2;