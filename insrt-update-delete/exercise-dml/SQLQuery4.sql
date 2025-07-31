--Write a query to insert a record in Customer table.
create table Customer(
CustomerID int,
CustomerName varchar(30),
Email varchar(20),
Age int,
phone varchar(10)
)

insert into Customer values(1,'Peter','Peter@gmail.com', 28, '234-364-2879')

--Write an insert query to insert multiple records in Customer table.
insert into Customer values(2, 'James','James@gmail.com',25,'346-238-2737'),(3,'Steve','Steve@gmail.com',30,'384-238-1278')

--Write a query to update Age to 28 and Email to James@hotmail.com in Customer table for CustomerID=2.
update Customer set Age=28, email='James@hotmail.com' where CustomerID=2

--Write a query to delete a record from Customer table where CustomerID is 3
delete from Customer where CustomerID=3

--Write a query to delete all records from Customer table and make sure it cannot be rolled back
Truncate table Customer