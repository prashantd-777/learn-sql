-- Use {TableName} to refer to the table name in the SQL query. For example:
use SalesDB;

-- Question: Retrieve the month wise data for CreationTime date in the Sales.Orders table.
SELECT
    DATETRUNC(month, CreationTime) AS trunc_creation_date,
    COUNT(*)
FROM Sales.Orders
GROUP BY DATETRUNC(month, CreationTime);

-- Question: Retrieve the year wise data for CreationTime date in the Sales.Orders table.
SELECT
DATETRUNC(year, CreationTime) AS trunc_year_cd,
COUNT(*)
FROM Sales.Orders
GROUP BY DATETRUNC(year, CreationTime);

-- Question: Retrieve the quarter wise data for CreationTime date in the Sales.Orders table.
SELECT
DATETRUNC(quarter, CreationTime) AS trunc_quarter_cd,
COUNT(*)
FROM Sales.Orders
GROUP BY DATETRUNC(quarter, CreationTime);
