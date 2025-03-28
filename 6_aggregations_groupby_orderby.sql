--Aggregation Functions
--used to perform aggregations on a table
--SUM() -- sums the column values
--AVG() --Averages the column values
--MAX() --Retrieves maximum values from a given column
--MIN() --Retrieves minimum value from a given column
--COUNT() --retrieves the total count of rows 

--Syntax
select sum(col) as total_sum, avg(col) as avrg_col, max(col) as max_col, min(col) as min_col, count(*) as cnt_col from table
--retrievs single value as output
select sum(salary) as total_salary, avg(salary) as avrg_salary, max(salary) as max_salary, min(salary) as min_salary, count(*) as cnt_salary from table

--if we want to apply aggregations with respect to groups of a column, will go for group by clause

--GROUP BY -- used to group the data
--syntax
select col, sum(column_name) as col_n from table group by col
--group by with single column
select company_id, sum(salary) as total_salary from salaries group by company_id

--group by with multiple columns 
select company_id,employee_id, sum(salary) as total_salary from salaries group by company_id, employee_id

--HAVING CLAUSE -- used to apply conditions on group by output 
select company_id, sum(salary) as total_salary from salaries group by company_id having sum(salary) > 10000

--why having rather than where clause?
--since where clause executes firt as per the execution order the newly derived column will be not found in the table when we go with where cluse 
--and since hving executes after the group by clause, it can able to find newly created derived column so, we use having instead of where clause to apply conditions on group by otput

-- where applicable for table defined columns where as having applicable for grouped output

--ORDER BY -- to sort the output in ascending or descending order

--syntax
select * from table order by column_name asc/ desc

--asc - tosort output in ascending order
--desc -- to sort output in descending order

--example-

select company_id,employee_id, sum(salary) as total_salary from salaries group by company_id, employee_id order by sum(salary) desc









