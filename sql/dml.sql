-- Use {TableName} to refer to the table name in the SQL query. For example:
use MyDatabase;

-- INSERT
-- Question: Insert a new customer into the customers table with the following details: id, first_name, country, score
INSERT INTO customers
        (id, first_name, country, score)
VALUES
        (6, 'Anna', 'USA', NULL),
        (7, 'Sam', NULL, 100);

INSERT INTO customers
        (id, first_name, country, score)
VALUES
        (8, 'MAX', 'USA', NULL),
        (9, 'Andreas', 'Germany', null),
        (10, 'Sahra', NULL, NULL);

SELECT *
FROM customers;

-- Insert data from customers table into persons table;
INSERT INTO persons
        (id, person_name, birth_date, phone)
SELECT id, first_name, NULL, 'Unknown'
FROM customers;

SELECT *
FROM persons;

-- UPDATE
-- Question: Change the score of customer whose id 6 to 0.
UPDATE customers
SET score = 0
WHERE id = 6;

SELECT *
FROM customers;

-- Question: Change the score of customer with id 10 to 0 and update the country to UK.
UPDATE customers
SET score = 0, country = 'UK'
WHERE id = 10;

SELECT *
FROM customers;

-- Question: Update all customers with a null score by setting their score to 0.
UPDATE customers
SET score = 0
WHERE score IS NULL;

SELECT *
FROM customers
WHERE score IS NULL;

-- DELETE
-- Question: Delete all customers with an ID greater than 5.
DELETE FROM customers
WHERE id > 5;

SELECT *
FROM customers
WHERE id > 5;

-- Question: Delete all data from Table persons.
DELETE FROM persons;
-- Slow down your query
TRUNCATE TABLE persons; -- Faster execution