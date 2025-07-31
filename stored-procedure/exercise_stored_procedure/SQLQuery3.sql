
create table Customer

--Write an SQL statement to create a stored procedure with name prcGetAllCustomers to display all records from Customer table.
create procedure prcGetAllCustomers
as
begin
select * from Customer
end
	
--Write an SQL statement to create a parameterized stored procedure with name prcGetCustomer 
--which should take CustomerID as parameter and displays the respective record based on that CustomerID.

create procedure prcGetCustomer (@CustomerID int)
as
begin
	select * from Customer where CustomerID = @CustomerID
end

--Write an SQL statement to create a parameterized stored procedure with name prcAddCustomer which should take 
--CustomerID, CustomerName, Email, Age, Phone as parameters and insert the record in Customer table.

		
create procedure prcAddCustomer
	@CustomerId varchar(10),
	@CustomerName varchar(30),
	@Email varchar(30),
	@age int,
	@phone varchar(10)	
as
begin
	insert into Customer(CustomerId, customerName, Email, Age, Phone)
	values(@CustomerId, @CustomerName, @email, @age, @phone )
end

--Write an SQL statement to alter the procedure prcGetCustomer to change its functionality.
--Instead of taking parameter CustomerID it should take CustomerName and display the respective record based on that CustomerName.

alter create procedure prcGetCustomer
	@CustomerName varchar(30)
as
begin
	select * from Customer where customerName=@CustomerName
end

--Write an SQL statement to create a parameterized stored procedure with prcAddOrUpdateCustomer which should take CustomerID, CustomerName, Email, Age, Phone as parameters. 
--If the record with same CustomerID already exists it should update the data otherwise it should insert a new record.
create procedure prcAddOrUpdateCustomer
	@CustomerId varchar(10),@CustomerName varchar(30),@Email varchar(30),@age int,@phone varchar(10)	
as
begin
	insert into Customer(CustomerId, customerName, Email, Age, Phone)
	values(@CustomerId, @CustomerName, @email, @age, @phone )

	if exists(Select CustomerID from Customer where CustomerID= @CustomerID)
	begin
		update Customer
		set
		CustomerName=@CustomerName, Email=@email, Age=@age, Phone=@phone	
	end
	else
		insert into Customer values(@CustomerId, @CustomerName, @email, @age, @phone) 
	
end

--Write an SQL statement to delete procedure prGetAllCustomers
drop procedure prGetAllCustomers

