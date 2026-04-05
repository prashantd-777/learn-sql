-- Use {TableName} to refer to the table name in the SQL query. For example:
use SalesDB;

-- INTERSECT
-- Returns common rows between the two tables

-- Question: Find the employees who are also customers.
    SELECT
        FirstName,
        LastName
    FROM Sales.Employees

INTERSECT

    SELECT
        FirstName,
        LastName
    FROM Sales.Customers;