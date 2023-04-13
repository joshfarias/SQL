-- Joshua Farias

USE COMSC210_LAB9;

-- a. Order Subtotals:
select OrderID,
format(sum(UnitPrice * Quantity * (1 - Discount)), 2) as Subtotal
from order_details
group by OrderID
order by OrderID;

-- b. Sales by Year:
SELECT 
  LPAD(Order_Year, 4, ' ') AS Order_Year, 
  FORMAT(Total_Sales, 2) AS Total_Sales
FROM 
  (
    SELECT 
      YEAR(ShippedDate) AS Order_Year, 
      SUM(UnitPrice * Quantity * (1-Discount)) AS Total_Sales
    FROM 
      `order_details`
      INNER JOIN 
      Orders 
      ON 
      `order_details`.OrderID = Orders.OrderID
    GROUP BY 
      Order_Year
    ORDER BY 
      Order_Year
  ) AS SalesByYear;

-- c. Employees Sales by Name:
SELECT e.EmployeeID, e.FirstName, e.LastName, e.Country, FORMAT(SUM(od.UnitPrice * od.Quantity), 2) AS SalesAmount
FROM Employees e
JOIN Orders o ON o.EmployeeID = e.EmployeeID
JOIN Customers cu ON cu.CustomerID = o.CustomerID
JOIN order_details od ON od.OrderID = o.OrderID
GROUP BY e.EmployeeID, e.Country;

-- d. Alphabetical Listing of Products:
SELECT ProductName
FROM Products
ORDER BY ProductName;
