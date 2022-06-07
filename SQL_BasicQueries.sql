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

--Insert more rows into table 1 named student
INSERT INTO student VALUES (4,'Jack','Biology');
INSERT INTO student VALUES (5,'Mike','Computer Science');

----------------------------------------------------------------------------
--Create a second table student2 with different config
-- Not NULL: Value cannot have a NUll
-- UNIQUE: only one row can have the same value
create table student2 (
    student_id INT,
    name VARCHAR(20) NOT NULL,
    major VARCHAR(20) UNIQUE,
    PRIMARY KEY(student_id)
);

--Add rows to the table student2
-- According to the config we stablished, major field cannot have the same VALUES
-- In more than one row so it will throw an error
-- also if you put Null on name it will throw an error

INSERT INTO student2 VALUES(1,'Jack','Biology');
INSERT INTO student2 VALUES(2,'Kate','Sociology');
INSERT INTO student2 VALUES(3,'Claire','Chemistry');
INSERT INTO student2 VALUES(4,'Jack','Biology');
INSERT INTO student2 VALUES(5,'Mike','Computer Science');

SELECT * FROM student2;

------------------------------------------------------------------------
--Create a third table student3 with different config
-- AUTO_INCREMENT: automates the function for primary key instead of placing it manually
-- DEFAULT: lets you established a default value
CREATE table student3 (
    student_id INT AUTO_INCREMENT,
    name VARCHAR(20),
    major VARCHAR(20) DEFAULT 'undecided',
    PRIMARY KEY(student_id)
);

-- Inserting rows into the table student3
INSERT INTO student3(name,major) VALUES('Jack','Biology');
INSERT INTO student3(name,major) VALUES('Kate','Sociology');

SELECT * FROM student3;

drop Table student3;
