-- Create a new database
CREATE DATABASE student_management;

-- Select the database
USE student_management;

CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(150),
    age INT,
    fees DECIMAL(10,2) DEFAULT 0.00,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

ALTER TABLE students ADD phone VARCHAR(15) NOT NULL UNIQUE;

ALTER TABLE students MODIFY id INT AUTO_INCREMENT;

INSERT INTO students
(name, email, age, fees, phone)
VALUES
('Amit Kundu', 'amit@gmail.com', 23, 1000.00, '8391935630'),
('Rahul Sharma', 'rahul@gmail.com', 22, 12000.00, '9876543210'),
( 'Priya Das', 'priya@gmail.com', 21, 18000.00, '9123456780'),
( 'Sourav Roy', 'sourav@gmail.com', 24, 15000.00, '8765432109'),
('Neha Singh', 'neha@gmail.com', 22, 8000.00, '9988776655'),
('Arjun Das', 'arjun@gmail.com', 25, 25000.00, '9000011111'),
('Riya Sen', 'riya@gmail.com', 23, 10000.00, '9111122222');


SELECT * FROM students;

SELECT name , email FROM students;

SELECT id , name , fees FROM students;

-- PAGINATION 
SELECT * FROM students ORDER BY id LIMIT 5 OFFSET 5;

SELECT * FROM students WHERE age > 22;

SELECT * FROM students WHERE fees = 10000.00;

SELECT * FROM students WHERE age = 23 OR age < 23;
SELECT * FROM students WHERE age <= 23;

SELECT * FROM students WHERE email = 'priya@gmail.com';


-- AND, OR and NOT

SELECT * FROM students WHERE age > 22 AND fees > 10000;

SELECT * FROM students WHERE age = 25 OR age = 21;

SELECT * FROM students WHERE age <> 23;

SELECT * FROM students WHERE age > 21 and age < 25;

SELECT * FROM students WHERE age BETWEEN 22 AND 24;











