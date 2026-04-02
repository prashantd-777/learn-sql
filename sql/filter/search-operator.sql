-- Use {TableName} to refer to the table name in the SQL query. For example:
use MyDatabase;

-- Question: Find all customers whose first name start with 'M'.
SELECT *
FROM customers
WHERE first_name LIKE 'M%';

-- Question: Find all customers whose first name ends with 'n'.
SELECT *
FROM customers
WHERE first_name LIKE '%n';

-- Question: Find all customers whose first name contains 'r'.
SELECT *
FROM customers
WHERE first_name LIKE '%r%';

-- Question: Find all customers whose first name has 'r' in the 3rd position.
SELECT *
FROM customers
WHERE first_name LIKE '__r%';
