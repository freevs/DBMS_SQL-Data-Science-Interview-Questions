## Introduction

### 1. What is a Database?
Organized collection of data so that it can be easily accessed and managed. You can organize data into tables, rows, columns, and index it to make it easier to find relevant information.

### 2. What is DBMS?
-A software for storing and retrieving users’ data while considering appropriate security measures.

-It consists of a group of programs which manipulate the database. 

-The DBMS accepts the request for data from an application and instructs the operating system to provide the specific data.

-DBMS helps users and other third-party software to store and retrieve data.

-It provides an interface between the data and the software application.

### 3. What is the need for DBMS?
- Creation of a database.
- Retrieval of information from the database.
- Updating the database.
- Managing a database.

### 4. What is File System?
- File based systems were an early attempt to computerize the manual system. It is also called a traditional based approach in which a decentralized approach was taken where each department stored and controlled its own data with the help of a data processing specialist.
- The main role of a data processing specialist was to create the necessary computer file structures, and also manage the data within structures and design some application programs that create reports based on file data.

### 5. Differnce between DBMS and FIle System.
Meaning | DBMS | File System 
--- | ----- | -----
Meaning | Collection of data, user not required to write procedures | Collection of data, user has to write the procedures for many database
Sharing of data | Due to the centralized approach, data sharing is easy | Data is distributed in many files, and it may be of different formats, so it isn't easy to share data.
Data Abstraction | DBMS gives an abstract view of data that hides the details | The file system provides the detail of the data representation and storage of data.
Recovery Mechanism | DBMS provides a crash recovery mechanism, i.e., DBMS protects the user from system failure | The file system doesn't have a crash mechanism, i.e., if the system crashes while entering some data, then the content of the file will be lost.
Concurrency Problems | DBMS takes care of Concurrent access of data using some form of locking | In the File system, concurrent access has many problems like redirecting the file while deleting some information or updating some information.
Data Redundancy and Inconsistency | Due to the centralization of the database, the problems of data redundancy and inconsistency are controlled | In this, the files and application programs are created by different programmers so that there exists a lot of duplication of data which may lead to inconsistency.
Structure | The database structure is complex to design | The file system approach has a simple structure.
Data Models | In the database approach, 3 types of data models exist:Hierarchal data models, Network data models, Relational data models | There is no concept of data models exists.
Examples |	Oracle, SQL Server, Sybase etc |	Cobol, C++ etc.

### 6. What are the functions of DBA?
-The DBA creates the original database schema by executing a set of data deﬁnition statements in the DDL. 
 
-The DBA carries out changes to the schema and physical organization to reﬂect the changing needs of the organization, or to alter the physical organization to improve performance.

-By granting different types of authorization, the database administrator can regulate which parts of the database various users can access.

-Periodically backing up the database, either onto tapes or onto remote servers, to prevent loss of data in case of disasters such as ﬂooding.

-Ensuring that enough free disk space is available for normal operations, and upgrading disk space as required.

-Monitoring jobs running on the database and ensuring that performance is not degraded by very expensive tasks submitted by some users.
 
 ### 7. Database Languages
 SQL commands are mainly categorized into four categories as: 

1. DDL – Data Definition Language

2. DML – Data Manipulation Language

3. DCL – Data Control Language

4. TCL - Transaction Control Language

**DDL:-** 
Data Definition Language actually consists of the SQL commands that can be used to define the database schema. It simply deals with descriptions of the database schema and is used to create and modify the structure of database objects in the database.

    -*CREATE*: This command is used to create the database or its objects (like table, index, function, views, store procedure, and triggers).

    -*DROP8: This command is used to delete objects from the database.

    -*ALTER*: This is used to alter the structure of the database.

    -*TRUNCATE*: This is used to remove all records from a table, including all spaces allocated for the records are removed.

    -*COMMENT*: This is used to add comments to the data dictionary.

    -*RENAME*: This is used to rename an object existing in the database.

**DQL**
The SQL commands that deals with the manipulation of data.

    -*INSERT* : It is used to insert data into a table.

    -*UPDATE*: It is used to update existing data within a table.

    -*DELETE* : It is used to delete records from a database table.

**DCL**
Mainly deal with the rights, permissions, and other controls of the database system. 

    -*GRANT*: This command gives users access privileges to the database.

    -*REVOKE*: This command withdraws the user’s access privileges given by using the GRANT command.

**TCL**
Transactions group a set of tasks into a single execution unit. Each transaction begins with a specific task and ends when all the tasks in the group successfully complete. If any of the tasks fail, the transaction fails. Therefore, a transaction has only two results: success or failure. 

    -*COMMIT*: Commits a Transaction.

    -*ROLLBACK*: Rollbacks a transaction in case of any error occurs.

    -*SAVEPOINT*:Sets a savepoint within a transaction.

    -*SET TRANSACTION*: Specify characteristics for the transaction.

### 8. What is Data Abstraction in DBMS?
Data Abstraction refers to the process of hiding irrelevant details from the user. Example: If we want to access any mail from our Gmail then we don't know where that data is physically stored i.e is the data present in India or USA or what data model has been used to store that data? We are not concerned about these things. We are only concerned with our email. So, information like these i.e. location of data and data models are irrelevant to us and in data abstraction, we do this only. Apart from the location of data and data models, there are other factors that we don't care of. We hide the unnecessary data from the user and this process of hiding unwanted data is called Data Abstraction.

### 9. Levels of Data Abstraction
<p align="center">
<img width="400" height="400" src="https://s3.ap-south-1.amazonaws.com/afteracademy-server-uploads/what-is-data-abstraction-in-dbms-and-what-are-its-three-levels-data-abstraction-levels-771e879679d76dea.jpg">
</p>

**View Level**:- This level tells the application about how the data should be shown to the user. Different users will have a different view according to the authorization they have.

**Conceptual Level**:- This level tells how the data is actually stored and structured.Though the data is stored in the database but the structure of the tables like the student table, teacher table, books table, etc are defined here in the conceptual level or logical level. Also, how the tables are related to each other are defined here. Overall, we can say that we are creating a blueprint of the data at the conceptual level.

**Physical Level**:- As the name suggests, the Physical level tells us that where the data is actually stored i.e. it tells the actual location of the data that is being stored by the user.The Database Administrators(DBA) decide that which data should be kept at which particular disk drive, how the data has to be fragmented, where it has to be stored etc. They decide if the data has to be centralized or distributed. Though we see the data in the form of tables at view level the data here is actually stored in the form of files only. It totally depends on the DBA, how he/she manages the database at the physical level.

## RDBMS

### 1. What is RDBMS?
It is basically a program that allows us to create, delete, and update a relational database. Relational Database is a database system that stores and retrieves data in a tabular format organized in the form of rows and columns by maintaining data intregrity.

### 2. How DBMS is stored in memory?
**It uses B+ tree data structure allowing to efficiently store (i.e. access and update) a large sorted dictionary on a block storage device (i.e. HDD or SSD).**

### 3. Degrees of relations

### 4. Why keys are needed in DBMS?
Tables store a lot of data in them. Tables generally extends to thousands of records stored in them, unsorted and unorganised.

Now to fetch any particular record from such dataset, you will have to apply some conditions, but what if there is duplicate data present and every time you try to fetch some data by applying certain condition, you get the wrong data. How many trials before you get the right data?

To avoid all this, **Keys** are defined to easily identify any row of data in a table.

### 5. What are the different keys in realtionship model?
Lets take a simple student table

student_id | name | phone | age                                      
--- | --- | --- | ---
1	| Akon | 9876723452 | 17
2|	Akon|9991165674 |	19
3|	Bkon |	7898756543 |	18
4|	Ckon |	8987867898 |	19

***Super Key:-***  Super Key is defined as a set of attributes within a table that can uniquely identify each record within a table. Super Key is a superset of Candidate key.

In the table defined above super key would include student_id, (student_id, name), phone etc.
Confused? The first one is pretty simple as student_id is unique for every row of data, hence it can be used to identity each row uniquely.

Next comes, (student_id, name), now name of two students can be same, but their student_id can't be same hence this combination can also be a key.

Similarly, phone number for every student will be unique, hence again, phone can also be a key.

So they all are super keys.

***Candidate Key:-*** Candidate keys are defined as the minimal set of fields which can uniquely identify each record in a table. It is an attribute or a set of attributes that can act as a Primary Key for a table to uniquely identify each record in that table. There can be more than one candidate key.

In our example, student_id and phone both are candidate keys.

-A candiate key can never be NULL or empty. And its value should be unique.

-There can be more than one candidate keys for a table.

-A candidate key can be a combination of more than one columns(attributes).

***Primary Key::-*** It is a key that can uniquely identify each record in a table.For the table Student we can make the student_id column as the primary key.

***Foreign Key:-***  A foreign key is a key used to link two tables together. This is sometimes also called as a referencing key. A Foreign Key is a column or a combination of columns whose values match a Primary Key in a different table. The relationship between 2 tables matches the Primary Key in one of the tables with a Foreign Key in the second table.

***Composite Key:-*** Key that consists of two or more attributes that uniquely identify any record in a table is called Composite key. But the attributes which together form the Composite key are not a key independentely or individually.

student_id | subject_id | marks | exam_name                                     
--- | --- | --- | --- 
1 | 344 | 56 | Physics
2 | 556 | 78 | Maths

In the above table we have a Score table which stores the marks scored by a student in a particular subject. In this table student_id and subject_id together will form the primary key, hence it is a composite key.

***Secondary or Alternative key:-*** The candidate key which are not selected as primary key are known as secondary keys or alternative keys.

### 6. What is database schema? The Types of schema?
A schema is the set of metadata (data dictionary) used by the database, typically generated using DDL. It defines attributes of the database, such as tables, columns, and properties. A database schema is a description of the data in a database.

Physical Database Schema − This schema pertains to the actual storage of data and its form of storage like files, indices, etc. It defines how the data will be stored in a secondary storage.

Logical Database Schema − This schema defines all the logical constraints that need to be applied on the data stored. It defines tables, views, and integrity constraints.Here is where you have your data files, redo logs, control files etc, physical objects that reside on a O.S. and are in row state. These objects are used by logical structures to make our data make sense and readable.
