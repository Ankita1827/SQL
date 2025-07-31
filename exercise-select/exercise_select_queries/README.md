## SQL Server -  Exercise 

### Select Queries, Group By, Order By Clause

In this exercise you have to write SQL statements to query data from database tables.

Note: Download & execute the attached script in SQL Server to create database and tables for this exercise.
[Download script here](./script.sql)

1. Write a query to retrieve data from `Customers` table whose `ContactTitle` is `Sales Manager`.
2. Write a query to retrieve data from `Customers` table whose `ContactName` starts with letter `s`.
3. Write a query to retrieve data from `Customers` table who lives in `London`, `Paris`, `Madrid` or `San Francisco` city.
4. Write a query to retrieve data from `Customers` table for all those customers who do not have `Fax` number.
5. Write a query to retrieve data from `Customers` table arranged in alphabetical order based on `ContactName`.
6. Write a query to retrieve data from `Products` table to find how much total `UnitsInStock` you have from each Supplier. Group the `SupplierID` and calculate the sum of corresponding `UnitsInStock` for each supplier. Further filter the data to display records where SupplierID range between 10 to 30.
7. Write a query to retrieve data from `Products` table to show only `ProductID`, `ProductName`, `UnitPrice` & `UnitsInStock`. Also show the `TotalAmount` by multiplying `UnitPrice` with `UnitsInStock`.
8. Write a query to retrieve data from `Products` table where `UnitsInStock` is greater than or equals to `10` and less than equals to `100`.
9. Write a query to retrieve data from `Products` table for all products with `ProductID` range between `10` to `20`.
10. Write a query to retrieve data from `Products` table whose `QuantityPerUnit` is in `bottles`.
