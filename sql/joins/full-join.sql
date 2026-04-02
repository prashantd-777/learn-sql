-- Use {TableName} to refer to the table name in the SQL query. For example:
use MyDatabase;

-- Question: Get all customers and all orders, even if there's no match.
SELECT *
FROM customers;
SELECT *
FROM orders;

SELECT c.id, c.first_name, o.order_id, o.sales
FROM customers AS c
    FULL JOIN orders AS o
    ON c.id = o.customer_id;