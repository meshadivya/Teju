--JOINS - A JOIN is a clause used to combine rows from two or more tables based on a related column between them.

/*Types of JOINs:
1. INNER JOIN: Returns only the rows that have a match in both tables.
2. LEFT JOIN (or LEFT OUTER JOIN): Returns all the rows from the left table and the matching rows from the right table. If there's no match, the result will contain NULL values.
3. RIGHT JOIN (or RIGHT OUTER JOIN): Similar to LEFT JOIN, but returns all the rows from the right table and the matching rows from the left table.
4. FULL JOIN (or FULL OUTER JOIN): Returns all the rows from both tables, with NULL values in the columns where there are no matches.
5. CROSS JOIN: Returns the Cartesian product of both tables, with each row of one table combined with each row of the other table.
*/

JOIN Syntax:

SELECT 
  column_name(s)
FROM 
  table1
JOIN 
  table2
ON 
  table1.column_name = table2.column_name;


-- LEFT JOIN 
SELECT 
  column_name(s)
FROM 
  table1
LEFT JOIN 
  table2
ON 
  table1.column_name = table2.column_name;

--RIGHT JOIN 
SELECT 
  column_name(s)
FROM 
  table1
RIGHT JOIN 
  table2
ON 
  table1.column_name = table2.column_name;

--FULL OUTER JOIN
SELECT 
  column_name(s)
FROM 
  table1
FULL OUTER JOIN 
  table2
ON 
  table1.column_name = table2.column_name;

/*Replace:

- table1 and table2 with the names of the tables you want to join.
- column_name(s) with the names of the columns you want to select.
- table1.column_name = table2.column_name with the join condition.
*/

