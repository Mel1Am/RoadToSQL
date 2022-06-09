--SQL Functions

-- Find the number of employees
-- Count how many entries in the data value, COUNT() literally counts the value specified within a TABLE
SELECT COUNT(emp_id)
FROM employee;

SELECT COUNT(super_id)
FROM employee;

-- Find the number of female employees born after 1970
SELECT COUNT(emp_id)
FROM employee
WHERE sex = 'F' AND birth_date > '1970-01-01';

--Alter column name
ALTER TABLE employee CHANGE birth_day birth_date DATE;

SELECT * FROM employee;

-- Find the average of all employee's salaries
SELECT AVG(salary)
FROM employee
WHERE sex = 'M';

SELECT SUM(salary)
FROM employee;

-- Find out how many males and females there are
-- group by is an example of aggregation, display data in a
-- more helpful way
SELECT COUNT(sex), sex
from employee
GROUP BY sex;

--Find the total sales for each salesman
SELECT SUM(total_sales), emp_id
from works_with
GROUP BY emp_id;

-- How much each client spent
-- GROUP BY groups data according to the name of the column provided
-- client_id is the column that will be used
SELECT SUM(total_sales), client_id
from works_with
GROUP BY client_id;

SELECT SUM(total_sales), b.client_name
FROM works_with a, client b
GROUP BY a.client_id, b.client_name;
