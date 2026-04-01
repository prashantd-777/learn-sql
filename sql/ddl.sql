-- Use {TableName} to refer to the table name in the SQL query. For example:
use MyDatabase;

-- CREATE
-- Create a new table called persons with columns id, person_name, birth_date, and phone
CREATE TABLE persons (
    id INT NOT NULL,
    person_name VARCHAR(100) NOT NULL,
    birth_date DATE,
    phone VARCHAR(15) NOT NULL,
    CONSTRAINT pk_persons PRIMARY KEY (id)
);

SELECT * FROM persons;

-- ALTER
 -- Add a new column called email to the persons table
 ALTER TABLE persons
 ADD email VARCHAR(50) NOT NULL;

 SELECT * FROM persons;

-- Remove the column phone from the persons table
ALTER TABLE persons
DROP COLUMN phone;

 SELECT * FROM persons;

 -- DROP
 -- Delete the persons table from the database
 DROP TABLE persons;