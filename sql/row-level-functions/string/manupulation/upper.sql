-- Use {TableName} to refer to the table name in the SQL query. For example:
use MyDatabase;

-- Question: Transform the customer's first name to uppercase.
SELECT
    first_name,
    UPPER(first_name) AS up_name
FROM customers;