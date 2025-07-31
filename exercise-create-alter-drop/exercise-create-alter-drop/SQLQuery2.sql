--Write a query to create database with name ShoppingDB.
create database ShoppingDB

--Write a query to create a Customer table in ShoppingDB database with below mentioned structure details.
Create table Customer(CustomerID int,
CustomerName varchar(10),
Email varchar(20),
Age int,
DOB datetime
)

--Write a query to create an Orders table in ShoppingDB database with below mentioned structure details.
Create table orders(OrderID int,
OrderDate datetime,
CustomerID int
)

--Write a query to add a new column as Phone with datatype varchar(10) on Customers table.
alter table Customer add Phone varchar(10)

--Write a query to modify Customer Table CustomerName column datatype to varchar(20) and make it as not null.
alter table Customer 
	alter column CustomerName varchar(20) not null

--Write a query to remove DOB column from Customer table.
alter table Customer drop column DOB

--Write a query to remove Customer table from ShoppingDB database.
drop table Customer