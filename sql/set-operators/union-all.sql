-- Use {TableName} to refer to the table name in the SQL query. For example:
use SalesDB;

-- UNION ALL
-- Returns all rows from both the queries including duplicates.
-- i.e, Faster than the UNION Operator

-- Question: Combine the data from employees and customers into one table, including duplicates.
    SELECT
        FirstName,
        LastName
    FROM Sales.Customers

UNION ALL

    SELECT
        FirstName,
        LastName
    FROM Sales.Employees;