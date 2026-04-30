-- Use {TableName} to refer to the table name in the SQL query. For example:
use SalesDB;

-- Question: Show creation time date in different formats
SELECT
OrderID,
CreationTime,
FORMAT(CreationTime, 'MM-dd-yyyy') AS USA_format,
FORMAT(CreationTime, 'dd-MM-yyyy') AS EURO_format,
FORMAT(CreationTime, 'dd') AS dd,
FORMAT(CreationTime, 'ddd') AS ddd,
FORMAT(CreationTime, 'dddd') AS dddd,
FORMAT(CreationTime, 'MM') AS MM,
FORMAT(CreationTime, 'MMM') AS MMM,
FORMAT(CreationTime, 'MMMM') AS MMMM
FROM Sales.Orders;