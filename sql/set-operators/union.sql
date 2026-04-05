-- Use {TableName} to refer to the table name in the SQL query. For example:
use SalesDB;

-- UNION
-- Returns all DISTINCT/UNIQUE rows from both the queries.
-- Remove duplicate rows from the result

-- Question: Combine the data from employees and customers into one table.
    SELECT
        FirstName,
        LastName
    FROM Sales.Customers

UNION

    SELECT
        FirstName,
        LastName
    FROM Sales.Employees;