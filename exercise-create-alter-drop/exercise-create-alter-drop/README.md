## SQL Server Exercise 1

### Create, Alter & Drop Statement

In this exercise you have to perform DDL operations by using Create, Alter and Drop Statements

1. Write a query to create database with name `ShoppingDB`.
2. Write a query to create a `Customer` table in `ShoppingDB` database with below mentioned structure details.

Column Name  | Datatype   |
-------------|------------|
CustomerID   |   int      |
CustomerName |varchar(10) |
Email        |varchar(20) |
Age          |   int      |
DOB          | Datetime   |

2. Write a query to create an `Orders` table in `ShoppingDB` database with below mentioned structure details.

Column Name | Datatype   |
------------|------------|
OrderID     |   int      |
OrderDate   | Datetime   |
CustomerID  |   int      |

3. Write a query to add a new column as `Phone` with datatype `varchar(10)` on `Customers` table.
4. Write a query to modify `Customer` Table `CustomerName` column datatype to `varchar(20)` and make it as `not null`.
5. Write a query to remove `DOB` column from `Customer` table.
6. Write a query to remove `Customer` table from `ShoppingDB` database.
