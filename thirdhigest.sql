/*Write an SQL query to get the third-highest salary of an employee from employee_table?*/
select min(salary) from employee
where salary in (select DISTINCT top(3) salary from employee order by salary desc)