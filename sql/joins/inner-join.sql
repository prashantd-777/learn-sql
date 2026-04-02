-- Use {TableName} to refer to the table name in the SQL query. For example:
use MyDatabase;

-- Question: Get all customers along with their orders, but only for customers who have placed an order.
SELECT *
FROM customers;
SELECT *
FROM orders;

SELECT c.id, c.first_name, o.order_id, o.sales
FROM customers as c
    INNER JOIN orders as o
    ON c.id = o.customer_id;