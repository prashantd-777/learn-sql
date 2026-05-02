-- Use {TableName} to refer to the table name in the SQL query. For example:
use SalesDB;


SELECT
    OrderDate,
    ISDATE(OrderDate),
    CASE WHEN ISDATE
(OrderDate) = 1 THEN CAST
(OrderDate AS DATE)
    ELSE '9999-01-01'
END NewOrderDate
FROM
    (
                    
    SELECT '2025-08-20' As OrderDate
    UNION
        SELECT '2025-08-21'
    UNION
        SELECT '2025-08-23'
    UNION
        SELECT '2025-08'
)
AS t;