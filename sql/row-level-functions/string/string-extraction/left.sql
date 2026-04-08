-- Use {TableName} to refer to the table name in the SQL query. For example:
use MyDatabase;

-- Question: Retrieve the first two characters of each first name.
SELECT
    first_name,
    LEFT(TRIM(first_name), 2) AS first_2_char
FROM customers;