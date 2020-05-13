-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
select p.ProductName, c.CategoryName
from Product as p
join Category as c where p.CategoryId = c.id

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
select distinct d.OrderId, o.OrderDate, s.CompanyName
from OrderDetail as d
join [Order] as o on o.Id = d.OrderId
join Shipper as s on o.shipvia = s.id
where o.OrderDate < "2012-08-09"

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
select p.ProductName, d.OrderId, d.Quantity
from Product as p
join OrderDetail as d on d.ProductId = p.id
where d.OrderId = 10251

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
select o.id as OrderID, c.CompanyName as CustomerCompanyName, e.LastName as EmployeeLastName
from [Order] as o
join Customer as c on c.id = o.CustomerId
join Employee as e on e.id = o.EmployeeId