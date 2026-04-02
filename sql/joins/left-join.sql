-- Use {TableName} to refer to the table name in the SQL query. For example:
use MyDatabase;

-- Question: Get all customers along with their orders, including those without orders.
SELECT *
FROM customers;
SELECT *
FROM orders;

SELECT c.id, c.first_name, o.order_id, o.sales
FROM customers AS C
    LEFT JOIN orders AS o
    ON c.id = o.customer_id;