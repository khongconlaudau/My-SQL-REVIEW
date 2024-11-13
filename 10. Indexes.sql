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
    ('John', 'Doe', 'IT', 55000.00),
    ('Jane', 'Smith', 'HR', 60000.00),
    ('Jane', 'Smith', 'HR', 60200.00),
    ('Alice', 'Johnson', 'Finance', 70000.00);


-- CREATE INDEX ON EMPLOYEE's LAST NAME
CREATE INDEX last_name_idx 
ON employees(last_name);

-- DROP INDEX
DROP INDEX last_name_idx ON employees;

SHOW INDEXES FROM employees;