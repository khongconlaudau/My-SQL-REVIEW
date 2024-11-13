CREATE TABLE employees(
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL (10, 2)
);


INSERT INTO employees (first_name, last_name, department, salary)
VALUES
    ('John', 'Doe', 'IT', 50000.00),
    ('Jane', 'Smith', 'HR', 60000.00),
    ('Alice', 'Johnson', 'Finance', 70000.00);


-- Create a view
CREATE VIEW employee_full_n AS
SELECT id, CONCAT(first_name, last_name) FROM employees;

-- Query the view
SELECT * FROM employee_full_n;

-- Update the view (recreate it)
-- Create a view if didn't exists already, or replace it with this new one.

CREATE OR REPLACE VIEW employee_full_n AS
SELECT id, CONCAT(first_name," ", last_name) FROM employees
WHERE department = "HR";

SELECT * FROM employee_full_n;
