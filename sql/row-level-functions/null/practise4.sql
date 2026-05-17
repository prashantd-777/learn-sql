-- Use {TableName} to refer to the table name in the SQL query. For example:
use SalesDB;

-- Question: Find the sales price for each order by dividing the sales by the quantity
SELECT
    OrderID,
    Sales,
    Quantity,
    Sales/NULLIF(Quantity, 0) As Price
FROM Sales.Orders;