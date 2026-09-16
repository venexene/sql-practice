SELECT c.name AS Customers 
FROM Customers as c
LEFT JOIN Orders AS o ON c.id = o.customerId 
WHERE o.customerID IS NULL
