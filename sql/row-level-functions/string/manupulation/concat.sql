-- Use {TableName} to refer to the table name in the SQL query. For example:
use MyDatabase;

-- Question: Show a list of customers' First Name together with their country in one column.
SELECT
    first_name,
    country,
    CONCAT(first_name, '-', country) AS name_country
FROM customers;