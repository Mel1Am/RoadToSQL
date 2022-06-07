SELECT * FROM student;

--change the name of some value in a row
-- specifying which row and not all of them
UPDATE student
SET major = 'Bio'
WHERE major = 'Biology';

UPDATE student
SET major = 'Chemistry'
WHERE student_id = '3';

UPDATE student
SET major = 'Biochemistry'
WHERE major = 'Chemistry' OR major = 'Bio';

UPDATE student
SET name = 'Tom', major = 'Undecided'
WHERE student_id = 1;

UPDATE student
set major = 'Undecided';

DELETE FROM student;
DELETE FROM student
WHERE name = 'Tom';

DELETE FROM student
WHERE name = 'Tom' AND major = 'Undecided';





