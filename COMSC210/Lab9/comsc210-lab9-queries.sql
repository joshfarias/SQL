-- Joshua Farias

USE COMSC210_LAB9;

-- a. Order Subtotals:
SELECT OrderID, SUM(UnitPrice * Quantity) AS Subtotal
FROM order_details
GROUP BY OrderID;

-- b. Sales by Year:
SELECT YEAR(o.ShippedDate) AS SalesYear, SUM(od.UnitPrice * od.Quantity) AS TotalSales
FROM order_details od
JOIN Orders o ON o.OrderID = od.OrderID
GROUP BY YEAR(o.ShippedDate);

-- c. Employees Sales by Name:
SELECT e.EmployeeID, e.FirstName, e.LastName, e.Country, SUM(od.UnitPrice * od.Quantity) AS SalesAmount
FROM Employees e
JOIN Orders o ON o.EmployeeID = e.EmployeeID
JOIN Customers cu ON cu.CustomerID = o.CustomerID
JOIN order_details od ON od.OrderID = o.OrderID
GROUP BY e.EmployeeID, e.Country;

-- d. Alphabetical Listing of Products:
SELECT ProductName
FROM Products
ORDER BY ProductName;
