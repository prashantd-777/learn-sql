-- Use {TableName} to refer to the table name in the SQL query. For example:
use SalesDB;

-- Question: 
-- Show OrderDate as 10 days before
-- Add 3 months to OrderDate
-- Add 2 years to OrderDate
SELECT
    OrderID,
    OrderDate,
    DATEADD(day, -10, OrderDate) AS TenDaysBefore,
    DATEADD(month, 3, OrderDate) AS ThreeMonthsLater,
    DATEADD(year, 2, OrderDate) AS TwoYearsLater
FROM sales.Orders;