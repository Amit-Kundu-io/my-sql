
-- 1. CREATE DATABASE

-- Create a new database
CREATE DATABASE student_management;

-- Select the database
USE student_management;


-- 2. CREATE TABLE

-- Create students table with required columns
CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(150),
    age INT,
    fees DECIMAL(10,2) DEFAULT 0.00,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


-- 3. ALTER TABLE

-- Add a phone column
-- NOT NULL means a value is required
ALTER TABLE students ADD COLUMN phone VARCHAR(15) NOT NULL;

-- Change name column size and add NOT NULL constraint
ALTER TABLE students MODIFY COLUMN name VARCHAR(150) NOT NULL;

-- Add UNIQUE constraint to email
-- Duplicate email addresses will not be allowed
ALTER TABLE students MODIFY COLUMN email VARCHAR(150) UNIQUE;

-- Enable automatic ID generation
-- AUTO_INCREMENT generates the next ID automatically
ALTER TABLE students MODIFY COLUMN id INT AUTO_INCREMENT;


-- 4. INSERT DATA

-- Insert a student without specifying fees or ID
-- ID is generated automatically
-- Fees uses its default value (0.00)
INSERT INTO students
(name, email, age, phone) VALUES
('Priya', 'priya@gmail.com', 21, '987654321');


-- 5. UPDATE DATA

-- Update Priya's fees
-- Priya received ID 1
UPDATE students SET fees = 18000.00 WHERE id = 1;

-- Update multiple columns in one query
UPDATE students SET fees = 20000.00,age = 22 WHERE id = 1;


-- 6. DELETE DATA

-- Delete only the student whose ID is 1
DELETE FROM students WHERE id = 1;


-- 7. TRANSACTIONS

-- Start a transaction
START TRANSACTION;

-- Delete a student inside the transaction
DELETE FROM students WHERE id = 1;

-- Undo uncommitted changes
ROLLBACK;

-- Alternatively, use COMMIT instead of ROLLBACK
-- to permanently save the deletion.
-- Do not execute both for the same transaction.


-- 8. CHECK TABLE STRUCTURE AND DATA

-- Display all columns, data types and constraints
DESCRIBE students;

-- Display all student records
SELECT * FROM students;
