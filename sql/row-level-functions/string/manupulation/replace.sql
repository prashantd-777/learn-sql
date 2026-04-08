-- Use {TableName} to refer to the table name in the SQL query. For example:
use MyDatabase;

-- Question: Remove dashes from phone.
SELECT
    '123-456-7890' AS phone,
    REPLACE('123-456-7890', '-', '');

-- Question: Replace finle extence from txt to csv.
SELECT
    'report.txt' AS old_filename,
    REPLACE('report.txt', '.txt', '.csv') AS new_filename;