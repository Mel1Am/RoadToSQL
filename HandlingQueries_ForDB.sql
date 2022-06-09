-- Find all employees

SELECT *
FROM employee;

SELECT *
FROM client;

-- find all employees ordered by salary
SELECT * FROM employee
ORDER BY salary;

SELECT * FROM employee
ORDER BY salary DESC;

-- find all employees ordered by sex then name
SELECT * from employee
ORDER BY sex, first_name, last_name;

-- find the first 5 employees in the TABLE
SELECT * FROM employee
LIMIT 5;

-- find the first and last names of all employees
SELECT first_name, last_name
from employee;
--Name columns different to what they are
SELECT first_name AS forname, last_name AS surname
FROM employee;

--Find out all the different genders
-- Reserve word 'Distinct' prints back all the different
-- values within the specified column in a TABLE
SELECT DISTINCT sex
FROM employee;

SELECT DISTINCT branch_id
FROM employee;

