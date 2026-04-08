-- Use {TableName} to refer to the table name in the SQL query. For example:
use MyDatabase;

-- Question: Calculate the lenght of each customer's first_name
SELECT
    first_name,
    LEN(first_name) AS len_name
FROM customers;