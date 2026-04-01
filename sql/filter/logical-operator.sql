-- Use {TableName} to refer to the table name in the SQL query. For example:
use MyDatabase;

-- Question: Retrieve all the customers who are from the USA AND have a score greater than 500.
SELECT *
FROM customers
WHERE country = 'USA' AND score > 500;

-- Question: Retrieve all the customers who are either from the USA OR have a score greater than 500.
SELECT *
FROM customers
WHERE country = 'USA' OR score > 500;

-- Question: Retrieve all the customers with a score NOT less than 500.
SELECT *
FROM customers
WHERE NOT score < 500;
