--two technical terms 
--schema -- table columns along with its corresponding datatypes
--metadata -- data about the data or data about the schema, statistics like number of rows 

--schema on write -- pre defined schema  before insert will provide schema 
--schema on read -- after insert will provide schema

--writes -- insert , delete, update
--reads -- all select queries/ dql 

--------------------------------------------------------------------------------------------------------------------------------------------------------------
--dql
--clauses -- select, from,groupby, where, order by, having, limit

--writing order-- select, from , join,where,groupby, having,select,orderby,limit
--execution order -- from , join, where, groupby, having, select,orderby,limit


select * from employee
--select - to select columns -- * represents all columns in a table 
select empid, empname from employee 


--where  -- to apply filters on a table 
-- = ,>,<,>=,<=,and, or, null, like 
select * from salaries where company_id = 2
select * from salaries where employee_id =2
select * from salaries where employee_name = 'Pronub'



select * from salaries where company_id > 2
select * from salaries where company_id >= 2
select * from salaries where company_id < 2
select * from salaries where company_id <= 2

--multiple conditions
select * from salaries where company_id = 1 and employee_name = 'Pronub' -- should satisfy two conditions
select * from salaries where company_id = 1 or employee_name = 'Pronub' -- should satisfy either one 


--between , in
select * from salaries where employee_id between 2 and 3 -- int, float, double, date

select * from salaries where employee_id in (2,3,4) 


--like operator 
--pattern matching
select * from salaries where employee_name like 'T%'

select * from salaries where employee_name like '%e'
select * from salaries where employee_name like 'P%b'
select * from salaries where employee_id like '1'

--wildcard matching

select * from salaries where employee_name like 'P_'


--null 
--sql doesnt support direct null comaprison 
select * from  salaries where employee_id is not null
select * from salaries where employee_id is null

