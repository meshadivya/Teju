--Constraints

--Primary key constraint -- doesnt allow duplicates and nulls -- to identify unique row  (combination of unique key + null key constraints)
--unique key constraint -- doesnt not allow duplicates but one null value 
--not null key constraint -- doesnt allow nulls but allows duplicates
--check key constraint -- checks condition if passes the condition then a value will be inserted
--default key constraint -- assigns default value to the column
--foriegn key constraint -- establishes relationship between tables

create table employee
(empid  int primary key, -- one per table 
empname varchar(256) not null,
email_id varchar(256) unique,
login_status varchar(3) default 'Yes',
age int check(age >= 21));

insert into employee(empid, empname, email_id, age) values(3, 'def', 'de@gamil.com', 22)


select * from employee















