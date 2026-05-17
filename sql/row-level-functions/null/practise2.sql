-- Use {TableName} to refer to the table name in the SQL query. For example:
use SalesDB;

-- Question: Display the full name of customers in a single field by merging their first and last names,
--  And add 10 bonus points to each customers score;

SELECT CustomerID,
    (COALESCE(FirstName, '') + ' ' + COALESCE(LastName, '')) As FUllName,
    Score + 10 AS BonusPoints,
    (COALESCE(Score, 0) + 10) AS BonusPoints2
FROM Sales.Customers;