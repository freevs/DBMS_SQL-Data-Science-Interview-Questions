# SQL

##  What is SQL?
SQL is a standard language for accessing and manipulating databases. SQL lets you access and manipulate databases

## What is a query?
A query is a request for data or information from a database table or combination of tables. 

##  Difference between SQL and MySQL
-While SQL is a language used for operating different relational databases, MySQL boasts of being the first open-source relational database in the early 90s. 

-SQL is a query language, whereas MySQL is a relational database that uses SQL to query a database.

-You can use SQL to access, update, and manipulate the data stored in a database. However, MySQL is a database that stores the existing data in a database in an organized manner. 

-SQL is used for writing queries for databases, MySQL facilitates data storing, modifying, and management in a tabular format. 

-SQL does not have support for any connectors. However, MySQL comes with an integrated tool – MySQL workbench – for designing and building databases. 

-SQL follows a standard format wherein the basic syntax and commands used for DBMS and RDBMS remain pretty much the same, whereas MySQL receives frequent updates. 

##  What are Joins and types?
A SQL Join statement is used to combine data or rows from two or more tables based on a common field between them.

**INNER JOIN:** Returns records that have matching values in both tables

**LEFT JOIN:** Returns all records from the left table, and the matched records from the right table

**RIGHT JOIN:** Returns all records from the right table, and the matched records from the left table

**FULL JOIN:** FULL JOIN creates the result-set by combining result of both LEFT JOIN and RIGHT JOIN. The result-set will contain all the rows from both the tables. The rows for which there is no matching, the result-set will contain NULL values.

**CARTESIAN/CROSS JOIN:** The CARTESIAN JOIN is also known as CROSS JOIN. In a CARTESIAN JOIN there is a join for each row of one table to every row of another table. This usually happens when the matching column or WHERE condition is not specified.
In the absence of a WHERE condition the CARTESIAN JOIN will behave like a CARTESIAN PRODUCT . i.e., the number of rows in the result-set is the product of the number of rows of the two tables. In the presence of WHERE condition this JOIN will function like a INNER JOIN.

**SELF JOIN:-** Returns all records when there is a match in either left or right table

##  Difference between DROP, DELETE, TRUNCATE
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

##  Difference between Primary and Unique Key
Primary Key | Unique Key                                     
--- | --- 
Primary key cannot have a NULL value | Unique Key can have multiple NULL values
Primary Key is used to uniquely identify a row | Unique key is used to prevent duplicate values in a column
A table can have only one primary key | It can have multiple unique keys.
We cannot change the value of a primary key in a table | We can change the value of the unique key

## Difference between UNION and UNION ALL
UNION | UNION ALL                                    
--- | --- 
It combines the result set from multiple tables and returns distinct records into a single result set |It combines the result set from multiple tables and returns all records into a single result set.
Its performance is slow because it takes time to find and then remove duplicate records | Its performance is fast because it does not eliminate the duplicate rows

##  What are constraints?
Constraints are used to specify the rules concerning data in the table. It can be applied for single or multiple fields in an SQL table during the creation of the table or after creating using the ALTER TABLE command. The constraints are:

NOT NULL - Restricts NULL value from being inserted into a column.

CHECK - Verifies that all values in a field satisfy a condition.

DEFAULT - Automatically assigns a default value if no value has been specified for the field.

UNIQUE - Ensures unique values to be inserted into the field.

INDEX - Indexes a field providing faster retrieval of records.

PRIMARY KEY - Uniquely identifies each record in a table.

FOREIGN KEY - Ensures referential integrity for a record in another table.

##  Common clauses in SQL
**WHERE** clause in SQL is used to filter records that are necessary, based on specific conditions.

**ORDER BY** clause in SQL is used to sort the records based on some field(s) in ascending (ASC) or descending order (DESC).

**GROUP BY** clause in SQL is used to group records with identical data and can be used in conjunction with some aggregation functions to produce summarized results from the database.

**HAVING** clause in SQL is used to filter records in combination with the GROUP BY clause. It is different from WHERE, since the WHERE clause cannot filter aggregated records.

##  Difference between WHERE and HAVING
WHERE| HAVING
--- | ---
WHERE Clause is used to filter the records from the table based on the specified condition. | HAVING Clause is used to filter record from the groups based on the specified condition.
WHERE Clause can be used without GROUP BY Clause |	HAVING Clause cannot be used without GROUP BY Clause
WHERE Clause implements in row operations	| HAVING Clause implements in column operation
WHERE Clause cannot contain aggregate function |	HAVING Clause can contain aggregate function
WHERE Clause can be used with SELECT, UPDATE, DELETE statement. | HAVING Clause can only be used with SELECT statement.
WHERE Clause is used before GROUP BY Clause |	HAVING Clause is used after GROUP BY Clause
WHERE Clause is used with single row function like UPPER, LOWER etc.| HAVING Clause is used with multiple row function like SUM, COUNT etc.

## Difference between GROUP BY vs HAVING
GROUP BY| HAVING
--- | ---
It is used for applying some extra condition to the query. | The groupby clause is used to group the data according to particular column or row.
Having can be used without groupby clause,in aggregate function,in that case it behaves like where clause. |	groupby can be used without having clause with the select statement.
The having clause can contain aggregate functions. | 	It cannot contain aggregate functions.
It restrict the query output by using some conditions	| It groups the output on basis of some rows or column

## What are UNION, MINUS and INTERSECT commands?
The **UNION** operator combines and returns the result-set retrieved by two or more SELECT statements.

**MINUS** The Minus Operator in SQL is used with two SELECT statements. The MINUS operator is used to subtract the result set obtained by first SELECT query from the result set obtained by second SELECT query. In simple words, we can say that MINUS operator will return only those rows which are unique in only first SELECT query and not those rows which are common to both first and second SELECT queries.

**INTERSECT** The INTERSECT clause in SQL is used to combine two SELECT statements but the dataset returned by the INTERSECT statement will be the intersection of the data-sets of the two SELECT statements. In simple words, the INTERSECT statement will return only those rows which will be common to both of the SELECT statements.

## What are the different aggregate functions?
AVG() - Calculates the mean of a collection of values.

COUNT() - Counts the total number of records in a specific table or view.

MIN() - Calculates the minimum of a collection of values.

MAX() - Calculates the maximum of a collection of values.

SUM() - Calculates the sum of a collection of values.

FIRST() - Fetches the first element in a collection of values.

LAST() - Fetches the last element in a collection of values.

## What are the different scalar functions??
LEN() - Calculates the total length of the given field (column).

UCASE() - Converts a collection of string values to uppercase characters.

LCASE() - Converts a collection of string values to lowercase characters.

MID() - Extracts substrings from a collection of string values in a table.

CONCAT() - Concatenates two or more strings.

RAND() - Generates a random collection of numbers of a given length.

ROUND() - Calculates the round-off integer value for a numeric field (or decimal point values).

NOW() - Returns the current date & time.

FORMAT() - Sets the format to display a collection of values

## How to create empty tables with the same structure as another table?
Creating empty tables with the same structure can be done smartly by fetching the records of one table into a new table using the INTO operator while fixing a WHERE clause to be false for all records. Hence, SQL prepares the new table with a duplicate structure to accept the fetched records but since no records get fetched due to the WHERE clause in action, nothing is inserted into the new table.

  SELECT * INTO Students_copy FROM Students WHERE 1 = 2;
  
## What is Pattern Matching in SQL?
SQL pattern matching provides for pattern search in data if you have no clue as to what that word should be. This kind of SQL query uses wildcards to match a string pattern, rather than writing the exact word. The LIKE operator is used in conjunction with SQL Wildcards to fetch the required information.
- Using the % wildcard to perform a simple search
- Omitting the patterns using the NOT keyword
- Matching a pattern anywhere using the % wildcard twice
- Using the _ wildcard to match pattern at a specific position
- Matching patterns for a specific length

## What is the main disadvantage of deleting data from an existing table using the DROP TABLE command?
DROP TABLE command deletes complete data from the table along with removing the complete table structure too. In case our requirement entails just remove the data, then we would need to recreate the table to store data in it. In such cases, it is advised to use the TRUNCATE command.

## What is an Alias in SQL?
An alias is a feature of SQL that is supported by most, if not all, RDBMSs. It is a temporary name assigned to the table or table column for the purpose of a particular SQL query. In addition, aliasing can be employed as an obfuscation technique to secure the real names of database fields. A table alias is also called a correlation name.

## What are views?
A view in SQL is a virtual table based on the result-set of an SQL statement. A view contains rows and columns, just like a real table. 

A VIEW does not require any storage in a database because it does not exist physically. In a VIEW, we can also control user security for accessing the data from the database tables. We can allow users to get the data from the VIEW, and the user does not require permission for each table or column to fetch data.

<p align="center">
<img width="400" height="400" src="https://s3.ap-south-1.amazonaws.com/myinterviewtrainer-domestic/public_assets/assets/000/001/017/original/SQL_View.jpg?1631025207">
</p>

## What is a subquery? what are the types?
A subquery, or nested query, is a query placed within another SQL query. 

**1. Scalar Subqueries**
When a subquery returns a single value, or exactly one row and exactly one column, we call it a scalar subquery. This type of subquery is frequently used in the WHERE clause to filter the results of the main query.

id| name | gallery_id | price
--- | --- | --- | ---
1	| Patterns | 3	| 5000
2 |	Ringer|	1	| 4500
3	| Gift|	1 |	3200
4 |	Violin Lessons|2 | 6700
5	| Curiosity |	2 |	980

For example, let’s say we want to see the average price of all our paintings next to the price of each painting.

 - SELECT name AS painting,
     price,
     (SELECT AVG(price)
  FROM paintings) AS avg_price
FROM paintings;

The subquery here returns a scalar value ($5840) that is simply added to each row of the resulting table:
painting| price | avg_price
--- | --- | --- 
Patterns |	5000 |	5840
Ringer |	4500 |	5840
Gift |	3200 |	5840
Violin Lessons |	6700 |	5840
Curiosity |	9800 | 5840

**2. Multi row Subueries**
If your subquery returns more than one row, it can be referred to as a multiple-row subquery. Note that this subquery type includes (1) subqueries that return one column with multiple rows (i.e. a list of values) and (2) subqueries that return multiple columns with multiple rows (i.e. tables).

Subqueries that return one column and multiple rows are often included in the WHERE clause to filter the results of the main query. In this case, they are usually used with operators like IN, NOT IN, ANY, ALL, EXISTS, or NOT EXISTS that allow users to compare a particular value with the values in the list returned by the subquery.

 let’s say you want to calculate the average agency fee for those agents who are not managers.
   - SELECT AVG(agency_fee)
FROM sales_agents
WHERE id NOT IN (SELECT id
                 FROM managers);
                 
*The inner query will return a list of all manager IDs. Then the outer query filters only those sales agents who are not in the managers list and calculates an average agency fee paid to these agents. The query returns a single value – the average agency fee paid to non-managers ($1885).*

**3. Correlated Subqueries**
SQL subqueries where the inner query relies on information obtained from the outer query. These are correlated subqueries. Because of the interdependence between the main query and the inner query.

Correlated subqueries are commonly used in the SELECT, WHERE, and FROM statements.

If we want to calculate the  number of paintings found in each of our galleries, we can use the following query. Note the correlated subquery in the SELECT statement:

   - SELECT city,
 (SELECT count(*)
  FROM paintings p
  WHERE g.id = p.gallery_id) total_paintings
FROM galleries g;

Here, the subquery returns a scalar value with the total number of paintings in the corresponding gallery. The main query displays this information together with the city where that art gallery is located.

city| total_paintings 
--- | --- 
London |	2
New York |	2
Munich |	1

here the inner query depends on the outer query. We pull the gallery ID from the galleries table, which is in the outer query. In other words, you cannot run the inner query as an independent query – it will just throw an error.

Note also that, in this case, you could use JOIN instead of a subquery and get the same result:

  - SELECT g.city, count(p.name) AS total_paintings
FROM galleries g
JOIN paintings p
ON g.id = p.gallery_id
GROUP BY g.city;

## What is a trigger?
Trigger: A trigger is a stored procedure in database which automatically invokes whenever a special event in the database occurs. For example, a trigger can be invoked when a row is inserted into a specified table or when certain table columns are being updated.

**Syntax:**
```
create trigger [trigger_name] 
[before | after]  
{insert | update | delete}  
on [table_name]  
[for each row]  
[trigger_body] 
```

**Explanation of syntax:**

* create trigger [trigger_name]: Creates or replaces an existing trigger with the trigger_name.
* [before | after]: This specifies when the trigger will be executed.
* {insert | update | delete}: This specifies the DML operation.
* on [table_name]: This specifies the name of the table associated with the trigger.
* [for each row]: This specifies a row-level trigger, i.e., the trigger will be executed for each row being affected.
* [trigger_body]: This provides the operation to be performed as trigger is fired


**BEFORE and AFTER of Trigger:**

BEFORE triggers run the trigger action before the triggering statement is run.
AFTER triggers run the trigger action after the triggering statement is run.

**Example:**
Given Student Report Database, in which student marks assessment is recorded. In such schema, create a trigger so that the total and average of specified marks is automatically inserted whenever a record is insert.

Here, as trigger will invoke before record is inserted so, BEFORE Tag can be used.

Suppose the database Schema –
Fields |
---|
tid |
name |
subj1 |
subj2 |
subj3 |
total |
per |

***SQL Trigger to problem statement.***
```
create trigger stud_marks 
before INSERT 
on 
Student 
for each row 
set Student.total = Student.subj1 + Student.subj2 + Student.subj3, Student.per = Student.total * 60 / 100;
```
***Above SQL statement will create a trigger in the student database in which whenever subjects marks are entered, before inserting this data into the database, trigger will compute those two values and insert with the entered values. i.e.,***

tid | name | subj1 | subj2 | subj3 | total | per
---| --- | --- | --- | --- | --- |--- |
100 | ABCDE | 20 |20 | 20 | 60 |36

## What is Cursor?
Cursor is a Temporary Memory or Temporary Work Station. It is Allocated by Database Server at the Time of Performing DML(Data Manipulation Language) operations on Table by User. Cursors are used to store Database Tables. There are 2 types of Cursors: Implicit Cursors, and Explicit Cursors. These are explained as following below.

**Implicit Cursors:**
Implicit Cursors are also known as Default Cursors of SQL SERVER. These Cursors are allocated by SQL SERVER when the user performs DML operations.

**Explicit Cursors :**
Explicit Cursors are Created by Users whenever the user requires them. Explicit Cursors are used for Fetching data from Table in Row-By-Row Manner.

***How to create Explicit Cursor:***

1. **Declare Cursor Object.**

Syntax : DECLARE cursor_name CURSOR FOR SELECT * FROM table_name
```
DECLARE s1 CURSOR FOR SELECT * FROM studDetails
```

2. **Open Cursor Connection.**

Syntax : OPEN cursor_connection
```
OPEN s1
```

3. **Fetch Data from cursor.**

There are total 6 methods to access data from cursor. They are as follows :

* FIRST is used to fetch only the first row from cursor table.
*LAST is used to fetch only last row from cursor table.
* NEXT is used to fetch data in forward direction from cursor table.
* PRIOR is used to fetch data in backward direction from cursor table.
* ABSOLUTE n is used to fetch the exact nth row from cursor table.
* RELATIVE n is used to fetch the data in incremental way as well as decremental way.

Syntax : FETCH NEXT/FIRST/LAST/PRIOR/ABSOLUTE n/RELATIVE n FROM cursor_name

```
FETCH FIRST FROM s1
FETCH LAST FROM s1
FETCH NEXT FROM s1
FETCH PRIOR FROM s1
FETCH ABSOLUTE 7 FROM s1
FETCH RELATIVE -2 FROM s1
```

4. **Close cursor connection.**

Syntax : CLOSE cursor_name

```
CLOSE s1
```

5. **Deallocate cursor memory.**

Syntax : DEALLOCATE cursor_name
```
DEALLOCATE s1
```







