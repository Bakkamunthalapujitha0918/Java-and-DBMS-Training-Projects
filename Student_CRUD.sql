-- Create database and table with all requested constraints
CREATE DATABASE CollegeDB;
USE CollegeDB;

CREATE TABLE student (
    std_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    age INT CHECK (age >= 17 AND age <= 30),
    branch VARCHAR(50) DEFAULT 'CSE',
    marks INT CHECK (marks >= 0 AND marks <= 100)
);

-- Insert 5 student records
INSERT INTO student (name, email, age, branch, marks) VALUES 
('Pujitha', 'pujitha@gmail.com', 21, 'Data Science', 95),
('Rahul', 'rahul@gmail.com', 22, 'CSE', 88),
('Sita', 'sita@gmail.com', 20, 'ECE', 79),
('Kiran', 'kiran@gmail.com', 21, 'CSE', 65),
('Ram', 'ram@gmail.com', 22, 'MECH', 82);

-- Display all student records
SELECT * FROM student;

-- Update one student's marks
UPDATE student SET marks = 98 WHERE std_id = 1;

-- Delete one student
DELETE FROM student WHERE std_id = 5;

-- Display final records to verify changes
SELECT * FROM student;

-- =======================================================
-- CONSTRAINT TESTING QUERIES (Uncomment to test failures)
-- =======================================================
-- INSERT INTO student (name, email, age, marks) VALUES (NULL, 'test@gmail.com', 21, 80); -- Fails NOT NULL
-- INSERT INTO student (name, email, age, marks) VALUES ('Duplicate', 'pujitha@gmail.com', 21, 80); -- Fails UNIQUE
-- INSERT INTO student (name, email, age, marks) VALUES ('Wrong Age', 'age@gmail.com', 15, 80); -- Fails CHECK age
-- INSERT INTO student (name, email, age, marks) VALUES ('Wrong Marks', 'marks@gmail.com', 21, 150); -- Fails CHECK marks
