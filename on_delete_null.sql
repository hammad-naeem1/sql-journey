-- on DELETE set null = when a foreign_key  is deleted ,replace foreign_key with null
-- on delete cascade = when a foreign_key is Deleted ,delete row

-- CREATEing a tabe 
-- Parent table
CREATE TABLE departments (
    department_id INT NOT NULL PRIMARY KEY,
    department_name VARCHAR(50) NOT NULL
);

-- Child table with ON DELETE SET NULL
CREATE TABLE employees (
    employee_id INT NOT NULL PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    department_id INT NULL,
    CONSTRAINT fk_department
        FOREIGN KEY (department_id) 
        REFERENCES departments (department_id)
        ON DELETE SET NULL
);



