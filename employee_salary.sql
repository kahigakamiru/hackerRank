----1----Write a query that prints a list of employee names (i.e.: the name attribute) for 
----employees in Employee having a salary greater than per month who have been employees for less than months. Sort your result by ascending employee_id.
CREATE DATABASE EMPLOYEE;
-- DROP TABLE employee_job
CREATE TABLE job (
    employee_id int,
    names VARCHAR(255),
    months int,
    salary int
);

INSERT INTO job(employee_id, names, months, salary)
VALUES
    (12228, 'Rose', 15, 1968),
    (33645, 'Angela', 1, 3443),
    (45692, 'Frank', 17, 1608),
    (56118, 'Patrick', 7, 1345),
    (59725, 'Lisa', 11, 2330),
    (74197, 'Kimberly', 16, 4372),
    (78454, 'Bonnie', 8, 1771),
    (83565, 'Micheal', 6, 2017),
    (98607, 'Todd', 5, 3396),
    (99989, 'Joe', 9, 3573)

SELECT max(e.names)
FROM job e
where salary > 2000 and months < 10 
GROUP BY employee_id 
