-- Use {TableName} to refer to the table name in the SQL query. For example:
use MyDatabase;

-- Question: Get all customers along with their orders, but only for customers who have placed an order.
-- Without using inner join

SELECT *
FROm customers;
SELECT *
FROM orders;

/* USING Inner JOIN
SELECT *
FROM customers AS c
INNER JOIN orders AS o
ON c.id = o.customer_id;
*/

-- USING LEFT JOIN
SELECT *
FROM customers as c
    LEFT JOIN orders as o
    ON c.id = o.customer_id
WHERE o.customer_id IS NOT NULL;


-- USING RIGHT JOIN
SELECT *
FROM orders as o
    RIGHT JOIN customers AS c
    ON c.id = o.customer_id
WHERE o.customer_id IS NOT NULL;
