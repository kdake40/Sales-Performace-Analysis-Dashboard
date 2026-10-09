show databases;
create database bank;
use bank;
show tables;
select * from sales;

create VIEW Master_Sales AS
SELECT 
s.Transaction_ID,
s.Date_ID,
s.Quantity,
s.Unit_price,
s.Discount,
s.Revenue,
s.Cost,
s.Profit,
s.Payment_Mode,
c.Customer_Name,
c.Gender,
c.Age,
c.City as Customer_city,
c.state,
c.Customer_Type,
c.join_date,
p.Product_Name,
p.Category,
p.Sub_Category,b.Branch_Name,
b.City as Branch_City,
b.Region,
b.Manager_Name
FROM Sales s
JOIN Customers c ON s.Customer_ID = c.Customer_ID
JOIN Products p ON s.Product_ID = p.Product_ID
JOIN Branches b ON s.Branch_ID = b.Branch_ID;

select * from master_sales;