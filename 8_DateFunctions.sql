--To get current timestamp 
select getdate() as currenttime from table

--To reteieve month from the date column
select month(date) as month from table

--To retrieve year from the date column
select year(date) as year from table

--To retrieve day from date column
select day(date) as day from date column

--Dateadd(to traverse through the date to and fro)
select dateadd(month, -3, datecol) as previousmonthdate from table

--datepart
select datepart(month, datecol) from  table
select datepart(day, datecol) from table
select datepart(year, datecol) from table
select datepart(week, datecol) from table
select datepart(weeday, datecol) from table

--datename
select datename(month, datecol) from table
select datename(weekday, datecol) from table


