-- Union combines two statements into one
-- to see more data into one result
-- There exist rules for using it
-- 1. You have to have the same number of culumns selected to use
-- 2. Similar datatype
-- 3. 

--find a list of employee and branch names

SELECT first_name
FROM employee
UNION
SELECT branch_name
FROM branch;

-- Find a list of all clients & branch suppliers' names
SELECT client_name, branch_id
FROM client
UNION
SELECT supplier_name, branch_id
FROM branch_supplier;

--Find a list of all money spent or earned by the company
SELECT salary
from employee
UNION
SELECT total_sales
FROM works_with;