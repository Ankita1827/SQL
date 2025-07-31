Create database exercise

Create table Customer(
--Write a query to add Primary Key constraint on CustomerID column.
CustomerID varchar(10) primary key,
CustomerName varchar(30),

--Write a query to add Check constraint on Age column with validation that age should be in the range of 18 and 30
age int check (age>=18 AND age<=30) ,

--Write a query to add Unique constraint to Email column.
email varchar(30) unique,

--Write a query to add Foriegn Key constraint on CustomerID column of Orders table with reference of Customers table.
Alter table Orders add constraint fk foreign key (CustomerID) references Orders(CustomerID)
)


insert into Customer values('101','Alice',30,'alice@gmail.com'),('102','Anki',22,'anki@gmail.com'),('103','Loren',25,'loren@gmail.com')

Create table Orders(
orderID varchar(10) primary key,
orderName varchar(30),
)

insert into Orders values('101','chocolate'),('102','chips')