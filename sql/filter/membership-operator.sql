-- Use {TableName} to refer to the table name in the SQL query. For example:
use MyDatabase;

-- Question: Retrieve all the customers either from Germany or USA.
SELECT *
FROM customers
WHERE country IN ('Germany', 'USA');

-- Question: Retrieve all the customers neither from Germany nor USA.
SELECT *
FROM customers
WHERE country NOT IN ('Germany', 'USA');