## DIFFERENCE BETWEEN WHERE AND HAVING CLAUSES IN SQL


# WHERE CLAUSE

- The WHERE clause in MySQL is used with SELECT, INSERT, UPDATE, and DELETE queries to filter data from the table or relation. 

- It describes a specific condition when retrieving records from a single table or multiple tables using the JOIN clause. If the specified condition is satisfied, it returns the particular value from the table. The WHERE clause places conditions on the selected columns.

- The WHERE clause in MySQL can also implement the logical connectives AND, OR, and NOT. They are known as the Boolean condition that must be true to retrieve the data. 

- The logical connectives expressions use the comparison operators as their operands like <, <=, >, >=, =, and <>. 

- The comparison operators are usually used to compare strings and arithmetic expressions.

# SYNTAX

***SELECT column_lists,*** 
***FROM table_name***
***WHERE conditions***
***GROUP BY column_lists;***


# HAVING CLAUSE

- HAVING clause in MySQL used in conjunction with GROUP BY clause enables us to specify conditions that filter which group results appear in the result. 

- It returns only those values from the groups in the final result that fulfills certain conditions. 

- We can also use the WHERE and HAVING clause together during selection. In this case, WHERE clause first filters the individual rows, then rows are grouped, performs aggregate calculations, and at last HAVING clause filter the groups.

- This clause places conditions on groups created by the GROUP BY clause. 

- It behaves like the WHERE clause when the SQL statement does not use the GROUP BY keyword. We can use the aggregate (group) functions such as SUM, MIN, MAX, AVG, and COUNT only with two clauses: SELECT and HAVING.


# SYNTAX

***SELECT column_lists,***    
***aggregate_function (expression)***
***FROM table_name***
***WHERE conditions***
***GROUP BY column_lists***   
***HAVING condition;***