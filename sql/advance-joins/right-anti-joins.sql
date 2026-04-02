-- Use {TableName} to refer to the table name in the SQL query. For example:
use MyDatabase;

-- Question: Get all orders without matching customers.
SELECT *
FROM customers;
SELECT *
FROM orders;

-- Right Join
SELECT *
FROM customers AS C
    RIGHT JOIN orders AS o
    ON c.id = o.customer_id
WHERE c.id IS NULL;


-- Solve using Left Join
SELECT *
FROM orders AS o
    LEFT JOIN customers AS c
    ON c.id = o.customer_id
Where c.id IS NULL;