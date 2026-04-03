-- Use {TableName} to refer to the table name in the SQL query. For example:
use MyDatabase;

-- Question: Find customers without orders & orders without customers.
SELECT *
FROM customers;
SELECT *
FROM orders;

SELECT *
FROM customers AS c
    FULL JOIN orders AS o
    ON c.id = o.customer_id
WHERE c.id IS NULL OR o.customer_id IS NULL;