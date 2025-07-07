SELECT City, TotalOrders
FROM (
    SELECT c.City, COUNT(o.OrderID) AS TotalOrders
    FROM Customers c
    JOIN Orders o ON c.CustomerID = o.CustomerID
    GROUP BY c.City
) AS CityOrders;