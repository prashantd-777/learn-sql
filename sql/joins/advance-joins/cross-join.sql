-- Use {TableName} to refer to the table name in the SQL query. For example:
use MyDatabase;

-- Question: Get all possible combinations of customers and orders.
SELECT *
FROM customers
CROSS JOIN orders;