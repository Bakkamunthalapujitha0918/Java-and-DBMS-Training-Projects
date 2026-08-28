-- Create database and employee table with constraints
CREATE DATABASE CompanyDB;
USE CompanyDB;

CREATE TABLE employee (
    emp_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    age INT CHECK (age >= 18),
    department VARCHAR(50) DEFAULT 'IT',
    salary DECIMAL(10,2) NOT NULL CHECK (salary > 0)
);

-- Insert 5 employee records (Including default department)
INSERT INTO employee (name, email, age, department, salary) VALUES 
('Anil', 'anil@gmail.com', 25, 'HR', 45000.00),
('Suresh', 'suresh@gmail.com', 28, 'Finance', 60000.00),
('Divya', 'divya@gmail.com', 24, 'Testing', 40000.00),
('John', 'john@gmail.com', 32, 'Operations', 55000.00);

-- One record that automatically uses the DEFAULT department ('IT')
INSERT INTO employee (name, email, age, salary) VALUES 
('Mahesh', 'mahesh@gmail.com', 23, 50000.00);

-- Update one employee's salary using WHERE
UPDATE employee SET salary = 65000.00 WHERE emp_id = 2;

-- Delete one employee using WHERE
DELETE FROM employee WHERE emp_id = 4;

-- Display all records using SELECT to verify changes
SELECT * FROM employee;
