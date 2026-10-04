-- ============================================================
-- SQL JOURNEY
-- Topics I have learned and practiced so far
-- ============================================================


-- ============================================================
-- 1. CREATE TABLE
-- ============================================================

-- CREATE TABLE is used to create a new table.

CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    city VARCHAR(50)
);


-- ============================================================
-- 2. INSERT
-- ============================================================

-- INSERT INTO adds new rows to a table.

INSERT INTO students (id, name, age, city)
VALUES (1, 'Ali', 17, 'Turbat');

INSERT INTO students (id, name, age, city)
VALUES (2, 'Ahmed', 18, 'Karachi');


-- ============================================================
-- 3. SELECT
-- ============================================================

-- SELECT is used to retrieve data.

-- Select everything:
SELECT * FROM students;

-- Select specific columns:
SELECT name, age
FROM students;


-- ============================================================
-- 4. WHERE
-- ============================================================

-- WHERE filters rows based on a condition.

SELECT *
FROM students
WHERE age = 17;

SELECT *
FROM students
WHERE city = 'Turbat';


-- ============================================================
-- 5. ORDER BY
-- ============================================================

-- ORDER BY sorts the results.

-- Ascending:
SELECT *
FROM students
ORDER BY age ASC;

-- Descending:
SELECT *
FROM students
ORDER BY age DESC;


-- ============================================================
-- 6. LIMIT
-- ============================================================

-- LIMIT controls how many rows are returned.

SELECT *
FROM students
LIMIT 2;

-- LIMIT can also be combined with ORDER BY:

SELECT *
FROM students
ORDER BY age DESC
LIMIT 1;


-- ============================================================
-- 7. UPDATE
-- ============================================================

-- UPDATE changes existing data.

UPDATE students
SET age = 18
WHERE id = 1;


-- ============================================================
-- 8. DELETE
-- ============================================================

-- DELETE removes rows from a table.

DELETE FROM students
WHERE id = 2;


-- ============================================================
-- 9. ALTER TABLE
-- ============================================================

-- ALTER TABLE changes the structure of an existing table.


-- ============================================================
-- 10. ADD
-- ============================================================

-- ADD can be used to add a new column.

ALTER TABLE students
ADD email VARCHAR(100);


-- ============================================================
-- 11. DROP
-- ============================================================

-- DROP can remove a column.

ALTER TABLE students
DROP COLUMN email;

-- DROP TABLE removes the entire table.
-- Use carefully!

-- DROP TABLE students;


-- ============================================================
-- 12. DEFAULT
-- ============================================================

-- DEFAULT gives a column a value automatically
-- when no value is provided.

CREATE TABLE users (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    status VARCHAR(20) DEFAULT 'active'
);

INSERT INTO users (id, name)
VALUES (1, 'Hammad');

-- status will automatically be 'active'.


-- ============================================================
-- 13. NOT NULL
-- ============================================================

-- NOT NULL means the column cannot be empty (NULL).

CREATE TABLE products (
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    price DECIMAL(10,2)
);


-- ============================================================
-- 14. UNIQUE
-- ============================================================

-- UNIQUE prevents duplicate values.

CREATE TABLE accounts (
    id INT PRIMARY KEY,
    username VARCHAR(50) UNIQUE
);


-- ============================================================
-- 15. PRIMARY KEY
-- ============================================================

-- PRIMARY KEY uniquely identifies each row.

CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);


-- ============================================================
-- 16. CONSTRAINTS
-- ============================================================

-- Constraints are rules applied to table data.

-- Examples:
-- PRIMARY KEY
-- UNIQUE
-- NOT NULL
-- DEFAULT

CREATE TABLE customers (
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    status VARCHAR(20) DEFAULT 'active'
);


-- ============================================================
-- 17. AGGREGATE FUNCTIONS
-- ============================================================

-- Aggregate functions perform calculations
-- using multiple rows.


-- AVG()
-- Finds the average.

SELECT AVG(age)
FROM students;


-- SUM()
-- Adds values together.

SELECT SUM(age)
FROM students;


-- ============================================================
-- 18. CONCAT()
-- ============================================================

-- CONCAT() combines strings together.

SELECT CONCAT(name, ' - ', city) AS student_info
FROM students;


-- ============================================================
-- 19. UNION
-- ============================================================

-- UNION combines the results of two SELECT statements.

SELECT name
FROM students

UNION

SELECT name
FROM employees;


-- ============================================================
-- 20. INNER JOIN
-- ============================================================

-- INNER JOIN returns matching rows
-- from both tables.

SELECT students.name, orders.order_id
FROM students
INNER JOIN orders
ON students.id = orders.student_id;


-- ============================================================
-- 21. LEFT JOIN
-- ============================================================

-- LEFT JOIN returns all rows from the left table
-- and matching rows from the right table.

SELECT students.name, orders.order_id
FROM students
LEFT JOIN orders
ON students.id = orders.student_id;


-- ============================================================
-- 22. RIGHT JOIN
-- ============================================================

-- RIGHT JOIN returns all rows from the right table
-- and matching rows from the left table.

SELECT students.name, orders.order_id
FROM students
RIGHT JOIN orders
ON students.id = orders.student_id;


-- ============================================================
-- 23. COMMIT
-- ============================================================

-- COMMIT permanently saves the changes
-- made during a transaction.

COMMIT;


-- ============================================================
-- 24. ROLLBACK
-- ============================================================

-- ROLLBACK undoes changes that have not been committed.

ROLLBACK;


-- ============================================================
-- END OF CURRENT SQL NOTES
-- ============================================================