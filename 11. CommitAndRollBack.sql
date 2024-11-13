-- TURN OFF AUTO COMMIT BY DEFAULT
SET AUTOCOMMIT = OFF;

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

COMMIT;
DELETE FROM employees;
SELECT * FROM employees;

ROLLBACK;

SELECT * FROM employees;