/*
CREATE TABLE Orders (
  OrderID INT PRIMARY KEY,
  CustomerID INT,
  OrderDate DATE,
  TotalAmount DECIMAL(10, 2)
);
 
INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount)
VALUES
  (1, 101, '2022-01-01', 100.00),
  (2, 102, '2022-01-05', 200.00),
  (3, 101, '2022-01-10', 50.00),
  (4, 103, '2022-01-15', 75.00),
  (5, 102, '2022-01-20', 150.00),
  (6, 101, '2022-01-25', 25.00),
  (7, 104, '2022-01-30', 100.00),
  (8, 103, '2022-02-01', 50.00),
  (9, 102, '2022-02-05', 75.00),
  (10, 101, '2022-02-10', 200.00);
*/

/*
GROUP BY Questions
 
1. Write a query to find the total amount spent by each customer.
2. Write a query to find the average order value for each customer.
3. Write a query to find the maximum order value for each customer.
4. Write a query to find the number of orders placed by each customer.
5. Write a query to find the total amount spent by customers who have placed more than 2 orders.
 
WHERE Questions
 
1. Write a query to find all orders placed by customer 101.
3. Write a query to find all orders with a total amount greater than $100.
4. Write a query to find all orders placed by customers who have spent more than $500 in total.
 
Combining GROUP BY and WHERE
 
1. Write a query to find the total amount spent by each customer who has placed more than 2 orders.
2. Write a query to find the average order value for each customer who has spent more than $500 in total.

1.create a new column price with 10k increment for each row
*/

