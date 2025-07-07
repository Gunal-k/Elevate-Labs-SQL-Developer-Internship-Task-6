SELECT Name, City
FROM Customers c
WHERE EXISTS (
    SELECT * FROM Customers c2 
    WHERE c2.City = c.City AND c2.CustomerID <> c.CustomerID
);