View - View is a temporary table/ virtual table that stores output of an sql query

syntax:

create View viewname as 
(Sql query);

ex:
CREATE VIEW TEJUVIEW AS
(SELECT * FROM SALARIES)

PROS : REUSABLE
CONS : OCCUPIES SPACE IN DATABASE 

ALTERING VIEW:
ALTER VIEW TEJUVIEW AS
(SELECT * FROM EMPLOYEE)
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

CTE(COMMON TABLE EXPRESSION): CTES ARE USED TO STORE OUTPUT OF A QUERY 

SYNTAX:

WITH CTENAME AS 
(SQL QUERY)
SELECT * FROM CTENAME;

EX:

WITH MY_CTE AS 
(SELECT * FROM EMPLOYEE)
SELECT * FROM MY_CTE;

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

NESTED CTE: CTE INSIDE A CTE 
WITH CTENAME AS 
(SQL QUERY1),
CTENAME1(SQL QUERY2)
SELECT * FROM CTENAME;
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
RECURSIVE CTE: IF A CHILD CTE USES PARENT CTE THEN SUCH KIND OF CTES CAN BE CONSIDERED AS RECURSIVE CTES

WITH CTENAME AS 
(SQL QUERY1)
CTE2 (SELECT * FROM CTENAME)
SELECT * FROM CTE2;
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
SUBQUERY -- QUERY INSIDE A QUERY

SYNTAX:

SELECT * FROM (SELECT * FROM TABLE) AS A;

EX:
SELECT * FROM (SELECT * FROM CUSTOMERS) AS A;

TYPES:

CORRELATED SUBQUERY --
SELECT * FROM (SELECT * FROM CUSTOMERS) AS A;

NONCORRELATED SUBQUERY--
SELECT * FROM CUSTOMERS WHERE CUSTOMERID IN (SELECT CUSTOMERID FROM ORDERID);

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

TEMPORARY TABLES:

TYPES: LOCAL TEMPORARY TABLES, GLOBAL TEMPORARY TABLES

LOCAL TEMPORARY TABLES: REPRESENTED BY #
SELECT * FROM TABLE INTO #TEMPTABLE FROM TABLENAME

--ONLY ACCESSEBLE UPTO CERTAIN PERIOD OF TIME AND CAN BE ACCESSABLE IN THE SAME SESSION THAT IT HAS BEEN CREATED

LOCAL TEMPORARY TABLES: REPRESENTED BY ##
SELECT * FROM TABLE INTO ##TEMPTABLE FROM TABLENAME

--ONLY ACCESSEBLE UPTO CERTAIN PERIOD OF TIME AND CAN BE ACCESSABLE IN THE ANY SESSION 










