-- Use {TableName} to refer to the table name in the SQL query. For example:
use SalesDB;

-- Question: Retrieve the end of the month date & start of the month date from CreationTime column in the Sales.Orders table.
SELECT
    OrderID,
    CreationTime,
    EOMONTH(CreationTime) AS EndOfMonth,
    DATETRUNC(month, CreationTime) AS StartOfMonth,
    CAST(DATETRUNC(month, CreationTime) AS DATE) AS FormattedStartOfMonth
FROM Sales.Orders;