--select -- single line comment

/*
select * from  salaries where employee_id is not null
select * from salaries where employee_id is null

*/ -- multi line comment

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

select * from salaries

--derived columns  --extracted from original columns
select *, (salary + 10000) as new_salary, len(employee_name) as length_name from salaries 

--iif -- if we have single condition
select *, iif(salary < 700, salary+5000, salary + 10000) as new_salary from salaries

--case when  -- if we have multiple conditions
select *, case 
when salary < 700 then (salary +5000)
when salary between 700 and 20000 then (salary + 10000)
when salary  > 20000 then (salary + 20000)
else salary 
end as new_salary
from
salaries


--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--assignment
  
  CREATE TABLE SalesData (
    SaleID INT IDENTITY(1,1) PRIMARY KEY,
    SaleDate DATE,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    QuantitySold INT,
    UnitPrice DECIMAL(10,2),
    TotalSales AS (QuantitySold * UnitPrice), -- Computed Column
    Region VARCHAR(50),
    Salesperson VARCHAR(100)
);
 
-- Insert sample data
INSERT INTO SalesData (SaleDate, ProductName, Category, QuantitySold, UnitPrice, Region, Salesperson)
VALUES 
('2024-03-01', 'Laptop', 'Electronics', 5, 1200.00, 'North', 'Alice'),
('2024-03-02', 'Mouse', 'Electronics', 15, 25.50, 'South', 'Bob'),
('2024-03-03', 'Keyboard', 'Electronics', 10, 45.00, 'West', 'Charlie'),
('2024-03-04', 'Smartphone', 'Electronics', 8, 850.75, 'East', 'David'),
('2024-03-05', 'Tablet', 'Electronics', 6, 600.00, 'North', 'Eve'),
('2024-03-06', 'Monitor', 'Electronics', 4, 300.00, 'South', 'Frank'),
('2024-03-07', 'Headphones', 'Accessories', 12, 75.00, 'West', 'Grace'),
('2024-03-08', 'Speakers', 'Accessories', 7, 120.00, 'East', 'Henry'),
('2024-03-09', 'Printer', 'Electronics', 3, 250.00, 'North', 'Ivy'),
('2024-03-10', 'Router', 'Electronics', 9, 90.00, 'South', 'Jack');

--create a new column sold_price (quantitysold * unitprice) 




