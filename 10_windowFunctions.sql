/*
Window Functions are a type of function in SQL that allow you to perform calculations across a set of rows that are related to the current row, such as aggregating values or ranking rows. 
Unlike aggregate functions, which group rows into a single output row, window functions return a value for each row in the result set.

Key Characteristics
- Window: A set of rows that are related to the current row, defined by a window specification.
- Partitioning: Dividing the data into partitions based on one or more columns.
- Ordering: Specifying the order of the rows within a partition.

Types of Window Functions
- Aggregate Window Functions: Calculate aggregated values, such as SUM, AVG, MAX, MIN, and COUNT.
- Ranking Window Functions: Assign rankings to rows, such as ROW_NUMBER, RANK, DENSE_RANK, and NTILE.
- Navigation Window Functions: Access values from previous or next rows, such as LAG, LEAD, FIRST_VALUE, and LAST_VALUE.

Benefits
- Flexible calculations: Perform complex calculations that involve multiple rows.
- Improved performance: Often faster than using self-joins or subqueries.
- Simplified queries: Reduce the need for complex queries with multiple joins or subqueries.

Common Use Cases
- Ranking and sorting: Assign rankings to rows based on specific criteria.
- Aggregating values: Calculate aggregated values, such as sums or averages, over a set of rows.
- Comparing rows: Compare values between rows, such as finding the difference between consecutive rows.
*/

/*
Here are the general syntaxes for window functions:

Basic Syntax

SELECT 
    column1, 
    column2, 
    WINDOW_FUNCTION(column_name) OVER (
        [PARTITION BY column_name]
        [ORDER BY column_name]
        [ROWS|RANGE frame_spec]
    )
FROM 
    table_name;


PARTITION BY Clause

SELECT 
    column1, 
    column2, 
    WINDOW_FUNCTION(column_name) OVER (
        PARTITION BY column_name1, column_name2
        [ORDER BY column_name]
        [ROWS|RANGE frame_spec]
    )
FROM 
    table_name;


ORDER BY Clause

SELECT 
    column1, 
    column2, 
    WINDOW_FUNCTION(column_name) OVER (
        [PARTITION BY column_name]
        ORDER BY column_name1, column_name2
        [ROWS|RANGE frame_spec]
    )
FROM 
    table_name;


ROWS|RANGE Frame Spec

SELECT 
    column1, 
    column2, 
    WINDOW_FUNCTION(column_name) OVER (
        [PARTITION BY column_name]
        [ORDER BY column_name]
        ROWS frame_spec
    )
FROM 
    table_name;

-- or

SELECT 
    column1, 
    column2, 
    WINDOW_FUNCTION(column_name) OVER (
        [PARTITION BY column_name]
        [ORDER BY column_name]
        RANGE frame_spec
    )
FROM 
    table_name;


Frame Spec
- ROWS frame_spec:
    - ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    - ROWS BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING
    - ROWS BETWEEN 1 PRECEDING AND 1 FOLLOWING
- RANGE frame_spec:
    - RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    - RANGE BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING
    - RANGE BETWEEN 1 PRECEDING AND 1 FOLLOWING

Examples
- ROW_NUMBER():
    - ROW_NUMBER() OVER (PARTITION BY column_name ORDER BY column_name)
- RANK():
    - RANK() OVER (PARTITION BY column_name ORDER BY column_name)
- SUM():
    - SUM(column_name) OVER (PARTITION BY column_name ORDER BY column_name ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW)
*/

window functions:

ROW_NUMBER()

SELECT 
    employee_id, 
    name, 
    salary, 
    ROW_NUMBER() OVER (ORDER BY salary DESC) AS row_num
FROM 
    employees;


Result:


+-------------+--------+--------+---------+
| employee_id | name   | salary | row_num |
+-------------+--------+--------+---------+
| 1           | John   | 100000 | 1       |
| 2           | Jane   | 90000  | 2       |
| 3           | Joe    | 80000  | 3       |
| 4           | Sarah  | 70000  | 4       |
| 5           | Michael| 60000  | 5       |
+-------------+--------+--------+---------+


RANK()

SELECT 
    employee_id, 
    name, 
    salary, 
    RANK() OVER (ORDER BY salary DESC) AS rank
FROM 
    employees;


Result:


+-------------+--------+--------+------+
| employee_id | name   | salary | rank |
+-------------+--------+--------+------+
| 1           | John   | 100000 | 1    |
| 2           | Jane   | 90000  | 2    |
| 3           | Joe    | 80000  | 3    |
| 4           | Sarah  | 70000  | 4    |
| 5           | Michael| 60000  | 5    |
+-------------+--------+--------+------+


SUM()

SELECT 
    employee_id, 
    name, 
    salary, 
    SUM(salary) OVER (ORDER BY salary DESC ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS running_total
FROM 
    employees;


Result:


+-------------+--------+--------+--------------+
| employee_id | name   | salary | running_total |
+-------------+--------+--------+--------------+
| 1           | John   | 100000 | 100000       |
| 2           | Jane   | 90000  | 190000       |
| 3           | Joe    | 80000  | 270000       |
| 4           | Sarah  | 70000  | 340000       |
| 5           | Michael| 60000  | 400000       |
+-------------+--------+--------+--------------+


LAG()

SELECT 
    employee_id, 
    name, 
    salary, 
    LAG(salary, 1) OVER (ORDER BY salary DESC) AS prev_salary
FROM 
    employees;


Result:


+-------------+--------+--------+------------+
| employee_id | name   | salary | prev_salary |
+-------------+--------+--------+------------+
| 1           | John   | 100000 | NULL       |
| 2           | Jane   | 90000  | 100000     |
| 3           | Joe    | 80000  | 90000      |
| 4           | Sarah  | 70000  | 80000      |
| 5           | Michael| 60000  | 70000      |
+-------------+--------+--------+------------+


LEAD()

SELECT 
    employee_id, 
    name, 
    salary, 
    LEAD(salary, 1) OVER (ORDER BY salary DESC) AS next_salary
FROM 
    employees;


Result:


+-------------+--------+--------+------------+
| employee_id | name   | salary | next_salary |
+-------------+--------+--------+------------+
| 1           | John   | 100000 | 90000      |
| 2           | Jane   | 90000  | 80000      |
| 3           | Joe    | 80000  | 70000      |
| 4           | Sarah  | 70000  | 60000      |
| 5           | Michael| 60000  | NULL       |
+-------------+--------+--------+------------+









