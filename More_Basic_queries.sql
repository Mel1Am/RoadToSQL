-- * : means grab all the info
-- SELECT: you are saying what to use

SELECT * FROM student;

SELECT name FROM student;

-- constraint DESC means to order by descending order.
-- ASC means ascending order
SELECT student.name, student.major
FROM student
ORDER BY name;

SELECT student.name, student.major
FROM student
ORDER BY major DESC;

SELECT student.name, student.major
FROM student
ORDER BY major, student_id ASC;

SELECT name
FROM student;

SELECT *
FROM student
LIMIT 2;

SELECT *
FROM student
WHERE major = 'Undecided';

-- Compare operators <, >, <=, >=, =, <>, AND, OR
-- Using IN to see if there is specific value
SELECT *
FROM student
WHERE name IN ('Claire', 'Kate', 'Mike');




