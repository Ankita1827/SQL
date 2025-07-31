--Write a query to find the second highest UnitPrice from Products table.
select * from Products
select max(UnitPrice) as secondmax from Products where UnitPrice< (select max(UnitPrice) from Products)

--Write a query to find the records of the products where UnitPrice is greater than the maximum UnitsInStock value.
select * from Products where UnitPrice>(select max(UnitsInstock) from Products)

--Write a query to display the complete record of the Product where UnitPrice is second highest.
select * from Products where UnitPrice=(select max(UnitPrice) from Products 
where UnitPrice< (select max(UnitPrice) from Products))

--Write a query to find all records from Customers and Orders table where CustomerID is common.
select * from Orders
select * from Customers
Select * from Customers, Orders where Customers.CustomerID= Orders.CustomerID

--Write a query to find all records from Customers and only those records 
--from Orders whose CustomerID is common with Customers table CustomerID.
select * from Customers left join orders on Customers.CustomerID=Orders.CustomerID

--In Employees table there are three columns - EmployeeId, EmployeeName & MgrId. MgrId is ManagerId.
--Each employee reports to the corresponding manager with respective MgrId. 
--Write a query to display records from Employees table so that the names of the Employee and Manager 
--should be displayed side by side based on which Employee reports to which Manager. 
--The expected output is shown below in the screenshot. Hint: you have to use self join.

select EmployeeName from Employees
select e.EmployeeName as EmployeeName, m.EmployeeName as ManagerName 
from Employees e left join Employees m on e.MgrId = m.EmployeeId;
