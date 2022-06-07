--Command to create the table with the correspending columns
CREATE TABLE student (
    student_id INT PRIMARY KEY,
    name VARCHAR (20),
    major VARCHAR(20)
); 

--Comand to show the composition of the table
DESCRIBE student;

--Command to print all the table
SELECT * FROM STUDENT;


--Command to delete table
DROP TABLE student;

--Command to add a column
ALTER TABLE student ADD gpa DECIMAL(3,2);

--Command to delete column
ALTER TABLE student DROP COLUMN gpa;

--this command is to input values into all of the columns in the table
INSERT INTO student VALUES(2,'Kate','Sociology');

--This command allows you to input certain info into specific columns on the table
--without getting an error for missing one column
INSERT INTO student(student_id, name) VALUES(3,'Claire');

INSERT INTO student VALUES (4,'Jack','Biology');
INSERT INTO student VALUES (5,'Mike','Computer Science');

create table student2 (
    student_id INT,
    name VARCHAR(20) NOT NULL,
    major VARCHAR(20) UNIQUE,
    PRIMARY KEY(student_id)
);

