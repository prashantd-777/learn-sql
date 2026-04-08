-- Use {TableName} to refer to the table name in the SQL query. For example:
use MyDatabase;

-- Question: Transform the customer's first name to lowercase.
SELECT
    first_name,
    LOWER(first_name) AS low_name
FROM customers;