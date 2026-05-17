-- Use {TableName} to refer to the table name in the SQL query. For example:
use SalesDB;

-- Question: Find the average score of each customers 
SELECT 
CustomerID, 
Score,
COALESCE(score, 0) As Score2,
AVG(Score) OVER() AS AvgScore,
AVG(COALESCE(score, 0)) OVER() AS AvgScore2 -- Always check NULL before Aggregation
FROM Sales.Customers;