-- Use {TableName} to refer to the table name in the SQL query. For example:
use MyDatabase;

-- Question: Get all customers along with their orders, including orders without matching customers.
SELECT *
FROM customers;
SELECT *
FROM orders;

-- Right Join
SELECT c.id, c.first_name, o.order_id, o.sales
FROM customers AS C
    RIGHT JOIN orders AS o
    ON c.id = o.customer_id;


-- Solve using Left Join
SELECT c.id, c.first_name, o.order_id, o.sales
FROM orders AS o
LEFT JOIN customers AS c
ON c.id = o.customer_id;