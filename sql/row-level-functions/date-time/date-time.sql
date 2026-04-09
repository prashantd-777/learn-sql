-- Use {TableName} to refer to the table name in the SQL query. For example:
use SalesDB;

SELECT
    OrderID,
    CreationTime,
    '2026-04-09' AS Hardcoded,
    GETDATE() AS Today
FROM sales.Orders;

-- Question: Add DATETRUNC, DATENAME, DATEPART for DAY, MONTH, YEAR, QUARTER, WEEK and Get DAY, MONTH, YEAR from CreationTime
SELECT
    OrderID,
    CreationTime,
    -- DATETRUNC Example
    DATETRUNC(year, CreationTime) AS Year_dt,
    DATETRUNC(day, CreationTime) AS Day_dt,
    DATETRUNC(minute, CreationTime) AS Minute_dt,

    -- DATENAME Example
    DATENAME(month, CreationTime) AS Month_dn,
    DATENAME(weekday, CreationTime) AS Weekday_dn,
    DATENAME(day, CreationTime) AS Day_dn, -- Datatype as string
    DATENAME(year, CreationTime) AS Year_dn, -- Datatype as string
    -- DATEPART Example
    DATEPART(year, CreationTime) AS Year_dp,
    DATEPART(month, CreationTime) AS Month_dp,
    DATEPART(day, CreationTime) AS Day_dp,
    DATEPART(quarter, CreationTime) AS Quarter_dp,
    DATEPART(week, CreationTime) AS Week_dp,

    YEAR(CreationTime) AS Year,
    MONTH(CreationTime) AS Month,
    DAY(CreationTime) AS DAY
FROM Sales.Orders; 