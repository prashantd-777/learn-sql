-- Use {TableName} to refer to the table name in the SQL query. For example:
use MyDatabase;

-- Question: Retrieve the last two characters of each first name.
SELECT
    first_name,
    RIGHT(TRIM(first_name), 2) AS last_2_char
FROM customers;