-- Use {TableName} to refer to the table name in the SQL query. For example:
use SalesDB;

-- Question: Calculate the age of employees
SELECT
    EmployeeID,
    BirthDate,
    DATEDIFF(year, BirthDate, GETDATE()) AS Age
FROM Sales.employees;

-- Question: FInd the average shipping duration in days for each month
SELECT
    Month(OrderDate) As OrderDateMonth,
    AVG(DATEDIFF(day, OrderDate, ShipDate)) AS AvgShip
FROM Sales.Orders
GROUP BY Month(OrderDate);