-- Use {TableName} to refer to the table name in the SQL query. For example:
use SalesDB;

-- EXCEPT / MINUS
-- Returns all distinct/unique rows from the first query that are not found in the second query
-- It is the only one where the order of queries affect the final result

-- Question: Find the employees who are not customers at the same time.
    SELECT
        FirstName,
        LastName
    FROM Sales.Employees

EXCEPT

    SELECT
        FirstName,
        LastName
    FROM Sales.Customers;