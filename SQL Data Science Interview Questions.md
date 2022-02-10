## SQL

### 1. What is SQL?
SQL is a standard language for accessing and manipulating databases. SQL lets you access and manipulate databases

### 2. Difference between SQL and MySQL
-While SQL is a language used for operating different relational databases, MySQL boasts of being the first open-source relational database in the early 90s. 

-SQL is a query language, whereas MySQL is a relational database that uses SQL to query a database.

-You can use SQL to access, update, and manipulate the data stored in a database. However, MySQL is a database that stores the existing data in a database in an organized manner. 

-SQL is used for writing queries for databases, MySQL facilitates data storing, modifying, and management in a tabular format. 

-SQL does not have support for any connectors. However, MySQL comes with an integrated tool – MySQL workbench – for designing and building databases. 

-SQL follows a standard format wherein the basic syntax and commands used for DBMS and RDBMS remain pretty much the same, whereas MySQL receives frequent updates. 

### 3. What are Joins and types?
A SQL Join statement is used to combine data or rows from two or more tables based on a common field between them.

**INNER JOIN:** The INNER JOIN keyword selects all rows from both the tables as long as the condition satisfies. This keyword will create the result-set by combining all rows from both the tables where the condition satisfies i.e value of the common field will be same.

**LEFT JOIN:** This join returns all the rows of the table on the left side of the join and matching rows for the table on the right side of join. The rows for which there is no matching row on right side, the result-set will contain null.

**RIGHT JOIN:** RIGHT JOIN is similar to LEFT JOIN. This join returns all the rows of the table on the right side of the join and matching rows for the table on the left side of join. The rows for which there is no matching row on left side, the result-set will contain null.

**FULL JOIN:** FULL JOIN creates the result-set by combining result of both LEFT JOIN and RIGHT JOIN. The result-set will contain all the rows from both the tables. The rows for which there is no matching, the result-set will contain NULL values.

**CARTESIAN/CROSS JOIN:** The CARTESIAN JOIN is also known as CROSS JOIN. In a CARTESIAN JOIN there is a join for each row of one table to every row of another table. This usually happens when the matching column or WHERE condition is not specified.
In the absence of a WHERE condition the CARTESIAN JOIN will behave like a CARTESIAN PRODUCT . i.e., the number of rows in the result-set is the product of the number of rows of the two tables. In the presence of WHERE condition this JOIN will function like a INNER JOIN.

**SELF JOIN:-** The SQL SELF JOIN is used to join a table to itself as if the table were two tables; temporarily renaming at least one table in the SQL statement.

### 4. Difference between DROP, DELETE, TRUNCATE
**TRUNCATE** 
-It is used to remove all the records from a table. It deletes all the records from an existing table but not the table itself. The structure or schema of the table is preserved.

-Truncate statement is equivalent to DELETE operation without a WHERE clause. The truncate command removes the records from a table without scanning it. This is why it is faster than the DELETE statement.

-TRUNCATE TABLE statement is a DDL command so it can not be rolled back.

**DELETE** 
- It is used to delete existing records from an existing table. We can delete a single record or multiple records depending on the condition specified in the query.

- The DELETE statement scans every row before deleting it. Thus it is slower as compared to TRUNCATE command. If we want to delete all the records of a table, it is preferable to use TRUNCATE in place of DELETE as the former is faster than the latter.

- DELETE is a DML Command so it can be rolled back.

**DROP**
. It can be used to delete databases, tables, views, triggers, etc.

-A DROP statement in SQL removes a component from a relational database management system (RDBMS).

-DROP is a DDL Command. Objects deleted using DROP are permanently lost and it cannot be rolled back.

- Unlike TRUNCATE which only deletes the data of the tables, the DROP command deletes the data of the table as well as removes the entire schema/structure of the table from the database.

### 5. Difference between Primary and Unique Key
Primary Key | Unique Key                                     
--- | --- 
Primary key cannot have a NULL value | Unique Key can have multiple NULL values
Primary Key is used to uniquely identify a row | Unique key is used to prevent duplicate values in a column
A table can have only one primary key | It can have multiple unique keys.
We cannot change the value of a primary key in a table | We can change the value of the unique key

### 6. Difference between UNION and UNION ALL
UNION | UNION ALL                                    
--- | --- 
It combines the result set from multiple tables and returns distinct records into a single result set |It combines the result set from multiple tables and returns all records into a single result set.
Its performance is slow because it takes time to find and then remove duplicate records | Its performance is fast because it does not eliminate the duplicate rows
