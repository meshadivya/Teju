
--RDBMS - tabular
--ms sql server, my sql, ...

--sql 

---database - collection of tables
--database objects - tables, viws, stored procesdures, triggers...

-- sql datatypes --
--integer --
--int - 1,2,3 --- 4, 26-- - 4 bytes
--bigint -  8 bytes

/*
character datatypes
char - 'm', 'f' - one bit 
char(3) - 'abc'
varchar - 2bits 
varchar(50) - 
nvarchar - 
text - passages

date datatypes 
-date - '2025-01-01'
-date time - '2025-01-01 12:05:05'
-timestamp - '2025-01-01 12:05:05:05'

decimal datatypes 
float - 99.2 
decimal - 
decimal(5,2) -- 1112.3- precison , 2 -scale  
numeric(3,2) -- 

*/

/*
sql commands 

--ddl - blueprint - data definition language - 
1.create 
2.drop
3.alter - 
4.truncate - 

--dml - data manipulation language 
1.insert 
2.update
3.delete

--dcl - data control language 
1. grant 
2. revoke 
3. deny 

--tcl - transaction control language
1. commit 
2. rollback -- original 
3. save transaction 

dql  - data query languange 
select,  groupby, 

*/

--database creation

create database teju;

--shifting databases
use teju;

--table
create table student
(
studentid   int,
studentname  varchar(256),
phonenumber  int);


--drop
drop table student;

--alter 
--adding new column in to table structure 
alter table student
add  marks int;

--modifyng datatype
alter table student
alter column phonenumber bigint;

--dropping column
alter table student
drop column marks;


--renaming column

execute sp_rename 'student.phonenumber', 'contact', 'column'

--renaming tqable
execute sp_rename  'student', 'students';

--truncate  -- to delete all rows from a table preserving structure
truncate table students;

--dml
--insert

insert into students (studentid, studentname, contact) values(1, 'abc', 789302567);
--to insert multiple rows

insert into students(studentid, studentname, contact) values 
(2, 'def', 657934672),
(3, 'ghi', 5643742775);

insert into students(studentid, studentname) values
(4, 'jkl');

insert into students values(5, 'mno',4354264656 );

create table t2
(studentid int,
studentname varchar(256),
contact bigint);

--inserting records from one table to other
insert into t2 select studentid, studentname, contact from students


--update 
update students set contact = 3421342156 where studentid = 3

update students set contact = 7893097429,studentname = 'JKH' where studentid = 4 and studentname = 'xyz';

insert into students values(4, 'xyz', 567890123)


--delete

delete from students --where studentid = 4 equivalent to truncate 



--drop, truncate, delete
drop -- drops table from database without preserving structure
truncate -- preserves structures
delete with where condition -- deletes only specific records


-------------------------------------------------------------------------------------------------------------------------------------------

--dcl -- 
username--
grant select, update, delete, insert to user
revoke
deny

----------------------------------------------------------------------------------------------------------------------------------------------

--tcl  -- writes 
select * from students

update students set contact = 43217895 where contact is null;

--rollback
begin transaction
update students set contact = 43217895 where studentname = 'abc';
save transaction s1

update students set studentname = 'kgh' where studentname = 'abc';

rollback transaction  s1
commit transaction
