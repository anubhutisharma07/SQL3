CREATE DATABASE clgg;

CREATE TABLE stude3(
rollno INT PRIMARY KEY,
name VARCHAR(50),
marks INT NOT NULL,
grade VARCHAR(10),
city VARCHAR(20)
);


CREATE TABLE dept(
id INT PRIMARY KEY,
name VARCHAR(50)
);

INSERT INTO dept
VALUES 
(1001, 'ENG'),
(1002, 'MATHS'),
(1003, 'SCI');



UPDATE dept
SET name = 'BIO'
WHERE name = 'ENG';

UPDATE dept
SET id = 1045
WHERE id = 1001;

SELECT * FROM dept;


CREATE TABLE teacher (
id INT PRIMARY KEY,
name VARCHAR(50),
dept_id INT,
FOREIGN KEY (dept_id) REFERENCES dept(id)
ON UPDATE CASCADE
ON DELETE CASCADE
);

INSERT INTO teacher
VALUES
(1001, 'AMAN' , 1001),
(1002, 'CHIRAG', 1002),
(1003, 'AANA', 1002),
(1004, 'AKASH', 1001);

ALTER TABLE teacher
DROP COLUMN class;


SELECT * FROM teacher;

INSERT INTO student2 (rollno, name, marks, grade, city) 
VALUES
(1001, 'ANIL SHARMA', 78, 'C', 'PUNE'),
(1002, 'BHUMIKA KUMARI', 93, 'A', 'MUMBAI'),
(1003, 'CHETAN SINGH', 85, 'B', 'MUMBAI'),
(1004, 'DHRUN RANE', 93, 'A', 'DELHI'),
(1005, 'EMANUAL SIMON', 12, 'F', 'DELHI'),
(1006, 'FARAH KHAN', 82, 'B', 'DELHI');

SELECT MAX(marks) FROM stude3;
SELECT MIN(grade) FROM stude3;
SELECT COUNT(city) FROM stude3;

SELECT city
FROM stude3 
GROUP BY city;

SELECT city
FROM stude3 
GROUP BY city
HAVING MAX(marks) >= 90
ORDER BY city DESC;

UPDATE stude3
SET grade = 'O'
WHERE grade = 'A';

SELECT * FROM stude3;

UPDATE stude3
SET grade = 'G'
WHERE marks BETWEEN 80 AND 90;

SELECT * FROM stude3;

UPDATE stude3
SET marks = marks + 2;

UPDATE stude3
SET marks = 234
WHERE rollno = 1006;

DELETE stude3
WHERE rollno = 1006;

SELECT * FROM stude3;

