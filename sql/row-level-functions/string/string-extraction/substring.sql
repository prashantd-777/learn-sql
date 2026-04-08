-- Use {TableName} to refer to the table name in the SQL query. For example:
use MyDatabase;

-- Question: Retrieve a list of customer's first names after removing the first character.
SELECT
    first_name,
    SUBSTRING(TRIM(first_name), 2, LEN(first_name)) AS sub_name
FROM customers;