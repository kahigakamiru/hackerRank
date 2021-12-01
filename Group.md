## What is the need for SQL GROUP functions?


- Group functions are built-in SQL functions that operate on groups of rows and return one value for the entire group. These functions are: __COUNT, MAX, MIN, AVG, SUM, DISTINCT__

__SQL COUNT ():__

- This function returns the number of rows in the table that satisfies the condition specified in the WHERE condition. If the WHERE condition is not specified, then the query returns the total number of rows in the table.

__For Example__: If you want the number of employees in a particular department, the query would be:

***SELECT COUNT (--) FROM employee***
***WHERE dept = 'Electronics';***

- The output would be '2' rows.

- If you want the total number of employees in all the department, the query would take the form:

***SELECT COUNT (--) FROM employee;***

- The output would be '5' rows.


__SQL DISTINCT():__

- This function is used to select the distinct rows.

__For Example__: If you want to select all distinct department names from employee table, the query would be:

***SELECT DISTINCT dept FROM employee;***

- To get the count of employees with unique name, the query would be:

***SELECT COUNT (DISTINCT name) FROM employee;***


__SQL MAX():__ 

- This function is used to get the maximum value from a column.

- To get the maximum salary drawn by an employee, the query would be:

***SELECT MAX (salary) FROM employee;***


__SQL MIN():__ 

- This function is used to get the minimum value from a column.

- To get the minimum salary drawn by an employee, he query would be:

***SELECT MIN (salary) FROM employee;***


__SQL AVG():__ 

- This function is used to get the average value of a numeric column.

- To get the average salary, the query would be

***SELECT AVG (salary) FROM employee;***


__SQL SUM():__ 

- This function is used to get the sum of a numeric column

- To get the total salary given out to the employees,

***SELECT SUM (salary) FROM employee;***