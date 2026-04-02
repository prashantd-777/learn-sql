-- Use {TableName} to refer to the table name in the SQL query. For example:
use MyDatabase;

-- Question: Get all customers who haven't placed any order
SELECT *
FROM customers;
SELECT *
FROM orders;

SELECT *
FROM customers AS c
    LEFT JOIN orders AS o
    ON c.id = o.customer_id
WHERE o.customer_id IS NULL;

