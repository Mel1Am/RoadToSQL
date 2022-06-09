-- % = any # characters, _ = one character
-- Like reserved word

-- Find any client's who are on LLC
-- This query finds any client that matches the 
-- wildcard %LLC, which means anything that comes before LLC
-- If something matches the pattern then it will return the VALUES
-- 
SELECT * FROM client
WHERE client_name LIKE '%LLC';

-- find any branch suppliers who are in the label business
SELECT * FROM branch_supplier
WHERE supplier_name LIKE '% Label%';

--find any employee born in october
-- the _ is for one character so here It uses 4_
-- it will match with any 4 numbers and then with the -10

SELECT * FROM employee
WHERE birth_date LIKE '____-10%';


-- find any clients who are schools
SELECT * FROM client
WHERE client_name LIKE '%school%';
