-- Use {TableName} to refer to the table name in the SQL query. For example:
use MyDatabase;

-- Select all customers
SELECT * FROM customers;

-- Select all orders
SELECT * from orders;

-- Select all customers first_name, score
SELECT first_name, score FROM customers;

-- WHERE clause start
-- Question: Retrieve the customers whose score are not equal to 0
SELECT * FROM customers WHERE score != 0;

-- Question: Retrieve the customers from Germany
SELECT * FROM customers WHERE country = 'Germany';

-- Using LIKE operator to find customers from Germany
SELECT * FROM customers WHERE country LIKE '%GER%';

-- WHERE clause end


-- ORDER BY clause start
-- Question: Retrieve all customers and sort the results by the highest score first
SELECT * FROM customers ORDER BY score DESC;

-- Nested Sorting
-- Question: Retrieve all customers and sort the results by country in ascending order and then by score in descending order
SELECT * from customers ORDER BY country ASC, score DESC;
-- ORDER BY clause end

-- Group By clause start (Aggregate your data)
-- Question: Find the total scores and total customers for each country
SELECT country, SUM(score) AS total_score, COUNT(id) AS total_customers FROM customers GROUP BY country;
-- Group By clause end

-- Having clause start (Filter groups)
-- Question: Find the average score for each country and considering only customers with score not equal to 0 and return only those countries with an average greater than 430.
SELECT country, AVG(score) AS average_score
FROM customers
WHERE score != 0
GROUP BY country
HAVING AVG(score) > 430;
-- Having clause end

-- Distinct keyword start
SELECT DISTINCT country FROM customers;
-- Distinct keyword end

-- Top keyword start
-- Question: Retrieve the top 3 customers with the highest scores
SELECT TOP 3 *
FROM customers
ORDER BY score DESC;

-- Question: retrieve the lowest 2 customers based on the score
SELECT TOP 2 *
FROM customers
ORDER BY score ASC;

-- Question: Get the two most recent orders
SELECT TOP 2 * 
FROM orders
ORDER BY order_date DESC
-- Top keyword end

