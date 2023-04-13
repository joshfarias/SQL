# Lab 9

## Northwind Traders Database:
- [comsc210-lab9-database.sql](https://github.com/joshfarias/SQL/blob/main/COMSC210/Lab9/comsc210-lab9-database.sql)

## Northwind Traders Queries:
- [comsc210-lab9-queries.sql](https://github.com/joshfarias/SQL/blob/main/COMSC210/Lab9/comsc210-lab9-queries.sql)


## Queries

### a. Order Subtotals:  For each order, calculate a subtotal for each Order (identified by OrderID). This is a simple query using GROUP BY to aggregate data for each order.

![Query A](https://i.imgur.com/zYGDrQO.png)

### b. Sales by Year: This query shows how to get the year part from Shipped_Date column. A subtotal is calculated by a sub-query for each order. The sub-query forms a table and then joined with the Orders table. Note how we need to use field names that match the field names in our table. In this database the field names combine upper and lower case.

![Query B](https://i.imgur.com/0OqXL7t.png)

### c. Employees Sales by Name: For each employee, get their sales amount, broken down by country name.

![Query C](https://i.imgur.com/hWJAYM5.png)

### d. Alphabetical Listing of Products: This is a rather simple query to get an alphabetical list of products.

![Query D](https://i.imgur.com/LGK3riP.png)
