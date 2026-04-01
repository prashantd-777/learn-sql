-- Use {TableName} to refer to the table name in the SQL query. For example:
use MyDatabase;

-- Question: Retrieve all the customers whose score falls in the range between 100 and 500.
SELECT *
FROM customers
WHERE score BETWEEN 100 AND 500;