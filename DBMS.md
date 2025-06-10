## Introduction

###  What is a Database?
Organized collection of data so that it can be easily accessed and managed. You can organize data into tables, rows, columns, and index it to make it easier to find relevant information.

###  What is DBMS?
-A software for storing and retrieving users’ data while considering appropriate security measures.

-It consists of a group of programs which manipulate the database. 

-The DBMS accepts the request for data from an application and instructs the operating system to provide the specific data.

-DBMS helps users and other third-party software to store and retrieve data.

-It provides an interface between the data and the software application.

###  What is the need for DBMS?
- Creation of a database.
- Retrieval of information from the database.
- Updating the database.
- Managing a database.

###  What is File System?
- File based systems were an early attempt to computerize the manual system. It is also called a traditional based approach in which a decentralized approach was taken where each department stored and controlled its own data with the help of a data processing specialist.
- The main role of a data processing specialist was to create the necessary computer file structures, and also manage the data within structures and design some application programs that create reports based on file data.

###  Differnce between DBMS and FIle System.
Meaning | DBMS | File System 
--- | ----- | -----
Sharing of data | Due to the centralized approach, data sharing is easy | Data is distributed in many files, and it may be of different formats, so it isn't easy to share data.
Data Redundancy and Inconsistency | Due to the centralization of the database, the problems of data redundancy and inconsistency are controlled | In this, the files and application programs are created by different programmers so that there exists a lot of duplication of data which may lead to inconsistency.
Structure | The database structure is complex to design | The file system approach has a simple structure.
User access| Multiple users can access data at a time.|Only one user can access data at a time.
Data Abstraction|It hides the internal details of Database|It give details of storage and representation of data
Security Constraints|DBMS has more security mechanisms as compared to file systems.|File systems provide less security in comparison to DBMS.
Examples |	Oracle, SQL Server, Sybase etc |	Cobol, C++ etc.

 ###  Database Languages
 SQL commands are mainly categorized into four categories as: 

1. DDL – Data Definition Language

2. DML – Data Manipulation Language

3. DCL – Data Control Language

4. TCL - Transaction Control Language

**DDL:-** 
Data Definition Language actually consists of the SQL commands that can be used to define the database schema. It simply deals with descriptions of the database schema and is used to create and modify the structure of database objects in the database.

    -*CREATE*: This command is used to create the database or its objects (like table, index, function, views, store procedure, and triggers).

    -*DROP: This command is used to delete objects from the database.

    -*ALTER*: This is used to alter the structure of the database.

    -*TRUNCATE*: This is used to remove all records from a table, including all spaces allocated for the records are removed.

    -*COMMENT*: This is used to add comments to the data dictionary.

    -*RENAME*: This is used to rename an object existing in the database.

**DML**
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

    -*COMMIT*: This command is used to save the data permanently. 

    -*ROLLBACK*: This command is used to get the data or restore the data to the last savepoint or last committed state. If due to some reasons the data inserted,  deleted or updated is not correct, you can rollback the data to a particular savepoint or if savepoint is not done, then to the last committed state. 

    -*SAVEPOINT*:This command is used to save the data at a particular point temporarily, so that whenever needed can be rollback to that particular point. 

### What is Schema
Schema is the overall description of the database. In DBMS, the term schema refers to the architecture of the database which describes how it will appear or will be constructed. It describes the organization of data such as tables, relationships as well as constraints. It also dictates how data items in a database will be stored, arranged, and accessed.

### What is Instance?
An instance of DBMS refers to real data present in a database at some particular point in time. It refers to the content in the database in as much as it refers to the structure defined under a particular schema at a given point. 

### Difference Between Schema and Instance
Schema| Instance 
--- | ----- 
It is the overall description of the database |It is the collection of information stored in a database at a particular moment.
The schema is same for the whole database|Data in instances can be changed using addition, deletion, and updation.
Does not change Frequently| Changes Frequently.
Affects the entire database structure | Affects only the current state of data.
Requires significant effort and planning to change | Easily altered by performing CRUD (Create, Read, Update, Delete) operations.
Table structures, relationships, constraints | Data entries, records in tables.


###  What is Data Abstraction in DBMS?
Data Abstraction refers to the process of hiding irrelevant details from the user. Example: If we want to access any mail from our Gmail then we don't know where that data is physically stored i.e is the data present in India or USA or what data model has been used to store that data? We are not concerned about these things. We are only concerned with our email. So, information like these i.e. location of data and data models are irrelevant to us and in data abstraction, we do this only. Apart from the location of data and data models, there are other factors that we don't care of. We hide the unnecessary data from the user and this process of hiding unwanted data is called Data Abstraction.

###  Levels of Data Abstraction / 3-Tier Schema Architecture in DBMS
<p align="center">
<img width="400" height="400" src="https://sqlmentalist.com/wp-content/uploads/2011/12/image6.png">
</p>

**View Level**:- This level tells the application about how the data should be shown to the user. Different users will have a different view according to the authorization they have.

**Conceptual Level**:- This level tells how the data is actually stored and structured.Though the data is stored in the database but the structure of the tables like the student table, teacher table, books table, etc are defined here in the conceptual level or logical level. Also, how the tables are related to each other are defined here. Overall, we can say that we are creating a blueprint of the data at the conceptual level.

**Physical Level**:- As the name suggests, the Physical level tells us that where the data is actually stored i.e. it tells the actual location of the data that is being stored by the user.The Database Administrators(DBA) decide that which data should be kept at which particular disk drive, how the data has to be fragmented, where it has to be stored etc. They decide if the data has to be centralized or distributed. Though we see the data in the form of tables at view level the data here is actually stored in the form of files only. It totally depends on the DBA, how he/she manages the database at the physical level.

### 3-Tier Architecture in DBMS
In DBMS, the 3-tier architecture is a client-server architecture that separates the user interface, application processing, and data management into three distinct tiers or layers

1. Presentation Tier (User Interface Layer)
2. Application Tier (Business Logic Layer)
3. Data Management Tier (Database Layer)

**Presentation Tier (User Interface Layer)**
The presentation tier is the user interface or client layer of the application. It is responsible for presenting data to the user and receiving input from the user. This tier communicates with the Application Tier to process user requests and display relevant information. This tier can be a web browser, mobile app, or desktop application.
It abstracts the business logic and data management complexities, making the system more user-friendly.

Example: If you’re using a banking app, the presentation tier would display your account balance, allow you to make transfers, and display results based on your actions.

**Application Tier ( Business Logic Layer)**
The application tier is the middle layer of the 3-tier architecture. It acts as the intermediary between the Presentation Tier and the Data Management Tier. It is responsible for processing and managing the business logic of the application. This tier communicates with the presentation tier to receive user input and communicates with the data management tier to retrieve or store data. This tier may include application servers, web servers, or APIs.

Example: If you're purchasing an item through an e-commerce platform, the Application Layer handles all the logic like verifying available stock, applying discounts, calculating taxes, and confirming your payment method.

**Data Management Tier ( Database Layer)**
The Data Management tier is the bottom layer of the 3-tier architecture. It is responsible for managing and storing data. This tier can include databases, data warehouses, or any other persistent data storage solution. The data management tier communicates with the application tier save, retrieve, or manipulate data according to the business logic.


Example: In a customer relationship management (CRM) system, this tier would store customer details, transaction history, and other data relevant to the business.

### Data Independence in DBMS
Data independence is the capacity of a database system to allow changes at one schema level without requiring changes at the next higher level. This property is fundamental for maintaining, scaling, and evolving databases efficiently, as it separates the way data is stored from how it is accessed and viewed

There are two main types:


**Physical Data Independence**
The capacity to change the internal schema (how data is physically stored) without requiring changes to the conceptual schema (the logical structure of the database).

**Logical Data Independence**
The capacity to change the conceptual schema (tables, relationships, constraints) without having to alter the external schemas (user views) or application programs.


## RDBMS

###  What is RDBMS?
It is basically a program that allows us to create, delete, and update a relational database. Relational Database is a database system that stores and retrieves data in a tabular format organized in the form of rows and columns by maintaining data intregrity.

### DBMS vs RDBMS
DBMS|RDBMS
---|---
DBMS stores data as file.|RDBMS stores data in tabular form
No relationship between data.|Data is stored in the form of tables which are related to each other.
Normalization is not present.|Normalization is present.
Data redundancy is common in this model.|Keys and indexes do not allow Data redundancy.
Data fetching is slower for the large amount of data.|Data fetching is fast because of relational approach.
The data in a DBMS is subject to low security levels with regards to data manipulation|There exists multiple levels of data security in a RDBMS.

###  Why keys are needed in DBMS?
Tables store a lot of data in them. Tables generally extends to thousands of records stored in them, unsorted and unorganised.

Now to fetch any particular record from such dataset, you will have to apply some conditions, but what if there is duplicate data present and every time you try to fetch some data by applying certain condition, you get the wrong data. How many trials before you get the right data?

To avoid all this, **Keys** are defined to easily identify any row of data in a table.

###  What is ER model?
ER model stands for an Entity-Relationship model. It is a high-level data model. This model is used to define the data elements and relationship for a specified system.

It develops a conceptual design for the database. It also develops a very simple and easy to design view of data.

<p align="center">
<img width="400" height="400" src="https://static.javatpoint.com/dbms/images/dbms-er-model-concept-diagram.png">
</p>

**Entity:**

An entity may be any object, class, person or place. In the ER diagram, an entity can be represented as rectangles.
Consider an organization as an example- student, product, employee, department etc. can be taken as an entity.

**Attributes:**

Attributes are the properties which define the entity type. For example, Roll_No, Name, DOB, Age, Address, Mobile_No are the attributes which defines entity type Student.
1. Key Attribute – 
The attribute which uniquely identifies each entity in the entity set is called key attribute.For example, Roll_No will be unique for each student.
2. Composite Attribute – 
An attribute composed of many other attribute is called as composite attribute. For example, Address attribute of student Entity type consists of Street, City, State, and Country.
3. Multivalued Attribute – 
An attribute consisting more than one value for a given entity. For example, Phone_No (can be more than one for a given student).
4. Derived attribute -
 These are the attributes which are not present in the whole database management system, but are derived using other attributes. For example, average age of students in a class.

**Relationship Type and Relationship Set:**

A relationship type represents the association between entity types. For example,‘Enrolled in’ is a relationship type that exists between entity type Student and Course. In ER diagram, relationship type is represented by a diamond and connecting the entities with lines. 

<p align="center">
<img width="700" height="300" src="https://media.geeksforgeeks.org/wp-content/uploads/Database-Management-System-ER-Model-8.png">
</p>

###  What are the degrees of relationship?
1. One to one – When each entity in each entity set can take part only once in the relationship, the cardinality is one to one. Let us assume that a male can marry to one female and a female can marry to one male. So the relationship will be one to one. 
2.  Many to one – When entities in one entity set can take part only once in the relationship set and entities in other entity set can take part more than once in the relationship set, cardinality is many to one. Let us assume that a student can take only one course but one course can be taken by many students. So the cardinality will be n to 1. It means that for one course there can be n students but for one student, there will be only one course. 
3. Many to many – When entities in all entity sets can take part more than once in the relationship cardinality is many to many. Let us assume that a student can take more than one course and one course can be taken by many students. So the relationship will be many to many. 

### What are the different keys in realtionship model?
Lets take a simple student table

student_id | name | phone | age                                      
--- | --- | --- | ---
1	| Akon | 9876723452 | 17
2|	Akon|9991165674 |	19
3|	Bkon |	7898756543 |	18
4|	Ckon |	8987867898 |	19

***Super Key:-***  Super Key is defined as a set of attributes that can uniquely identify each record within a table. Super Key is a superset of Candidate key.

In the table defined above super key would include student_id, (student_id, name), phone etc.
Confused? The first one is pretty simple as student_id is unique for every row of data, hence it can be used to identity each row uniquely.

Next comes, (student_id, name), now name of two students can be same, but their student_id can't be same hence this combination can also be a key.

Similarly, phone number for every student will be unique, hence again, phone can also be a key.


***Candidate Key:-*** Candidate keys are defined as the minimal set of fields which can uniquely identify each record in a table. It is an attribute or a set of attributes that can act as a Primary Key for a table to uniquely identify each record in that table. There can be more than one candidate key.

A candidate key is a super key which cannot have any columns removed from it without losing the unique identification property.

In our example, student_id and phone both are candidate keys.

-A candiate key can never be NULL or empty. And its value should be unique.

***Primary Key::-*** It is a key that can uniquely identify each record in a table.For the table Student we can make the student_id column as the primary key.

***Foreign Key:-***  A foreign key is a key used to link two tables together. This is sometimes also called as a referencing key. A Foreign Key is a column or a combination of columns whose values match a Primary Key in a different table. The relationship between 2 tables matches the Primary Key in one of the tables with a Foreign Key in the second table.

***Composite Key:-*** When table don't have any column which is not capable of getting unique row then we might need more than 2 columns to get unique row. Then it's called composite key.
Example: First Name & Last Name

student_id | subject_id | marks | exam_name                                     
--- | --- | --- | --- 
1 | 344 | 56 | Physics
2 | 556 | 78 | Maths

In the above table we have a Score table which stores the marks scored by a student in a particular subject. In this table student_id and subject_id together will form the primary key, hence it is a composite key.

***Secondary or Alternative key:-*** The candidate key which are not selected as primary key are known as secondary keys or alternative keys.

###  What is database schema? The Types of schema?
A schema is the set of metadata (data dictionary) used by the database, typically generated using DDL. It defines attributes of the database, such as tables, columns, and properties. A database schema is a description of the data in a database.

Physical Database Schema − This schema pertains to the actual storage of data and its form of storage like files, indices, etc. It defines how the data will be stored in a secondary storage.

Logical Database Schema − This schema defines all the logical constraints that need to be applied on the data stored. It defines tables, views, and integrity constraints.Here is where you have your data files, redo logs, control files etc, physical objects that reside on a O.S. and are in row state. These objects are used by logical structures to make our data make sense and readable.

### what is normalization?
Normalization is a database design technique that reduces data redundancy and eliminates undesirable characteristics like Insertion, Update and Deletion Anomalies. 

Normalization rules divides larger tables into smaller tables and links them using relationships. The purpose of Normalisation in SQL is to eliminate redundant (repetitive) data and ensure data is stored logically.

### What is the purpose of normalization?







