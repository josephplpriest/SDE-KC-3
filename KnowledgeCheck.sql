-- SELECT just the customer name for a specific order
SELECT c.CustomerName AS "Customer Name" FROM Customers c
LEFT JOIN Orders o ON c.CustomerID = o.CustomerID
WHERE OrderID = 10310;

-- SELECT the address for a specific supplier of one product
SELECT Address + ', ' + City + ', ' + PostalCode as Full_Address FROM Products p
LEFT JOIN Suppliers s ON s.SupplierID = p.SupplierID
WHERE p.ProductID = 40
