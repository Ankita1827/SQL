--Write an SQL statement to create a scalar function with name fnFactorial which should take an integer parameter and 
--returns the factorial of the given number.

create function fnFactorial(@n int)
returns int
as
begin
	declare @i int
	declare @sol int
	set @i=1
	set @sol=1
	while @i  <=@n
	begin
		set @sol=@sol*@i
		set @i=@i+1
	end
	return @sol
end

drop function fnFactorial

select dbo.fnFactorial(3) as sol

--Write an SQL statement to create a function with name fnGetCustomersByAge which should take Age
--as parameter and returns the records from Customer table where age is greater than or equal to the Age parameter.

select * from Customers
create function fnGetCustomerByAge (@age int)
returns table
as
	return select * from Customer where Customer.age >= @age
select * from fnGetCustomerByAge(1000)

drop function fnGetCustomerByAge

--Write an SQL statement to create a function with name fnGetOldestCustomer 
--which should return the record of the oldest customer by age.

create function fnGetOldestCustomer()
returns table
as
	return select * from Customer where age=(select max(age) from Customer )

--Write an SQL statement to alter a function fnGetCustomersByAge which should take
--Age as parameter and returns only the CustomerName.

alter function fnGetCustomerByAge(@age int)
returns table
as
	return select CustomerName from Customer where Customer.age=@age
select CustomerName from fnGetCustomerByAge(60)

--Write an SQL statement to delete a function fnFactorial.
drop function fnFactorial
