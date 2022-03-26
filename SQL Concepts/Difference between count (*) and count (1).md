# Difference between count (*) and count (1)

The results for COUNT(*) and COUNT(1) are identical.

The number in the parenthesis doesn’t mean the number of the column in the table. If you put any number in the parenthesis, the result will be the same.

So what does the value in the parenthesis of COUNT() mean?

It’s the value that the COUNT() function will assign to every row in the table. The function will then count how many times the asterisk (*) or (1) or (-13) has been  assigned. Of course, it will be assigned a number of times that’s equal to the number of rows in the table. 

In other words, COUNT(1) assigns the value from  parentheses (number 1, in this case) to every row in the table, then the same function counts how many times the value in the parenthesis (1, in our case) has been assigned; naturally, this will always be equal to the number of rows in the table. 

The parentheses can contain any value; the only thing that won’t work will be leaving the parentheses empty.

***Lets try this code:***

          SELECT COUNT('it will always be 8 rows') AS number_of_rows FROM orders;


No of rows|
--- | 
8

Since it doesn’t matter which value you put in the parentheses, it follows that COUNT(*) and COUNT(1) are precisely the same. They are precisely the same because the value in the COUNT() parentheses serves only to tell the query what it will count.


**COUNT(*) vs COUNT(column name)**

COUNT(*) will count all the rows in the table, including NULL values. On the other hand, COUNT(column name) will count all the rows in the specified column while excluding NULL values.
COUNT(column name) will only count rows where the given column is NOT NULL.

**COUNT(column name) vs COUNT (DISTINCT column_name)**

COUNT(column_name) will include duplicate values when counting. In contrast, COUNT (DISTINCT column_name) will count only distinct (unique) rows in the defined column.

