CREATE TABLE employees(
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    hourly_pay DECIMAL(5,2),
    salary DECIMAL(10,2)
);

INSERT INTO employees (first_name, last_name, hourly_pay)
VALUES
    ('John', 'Doe', 25.50),
    ('John', 'Doe', 20),
    ('Jane', 'Smith', 15.50),
    ('Jane', 'Smith', 17.50),
    ('Alice', 'Johnson', 10.00);

UPDATE employees
SET salary = hourly_pay * 2080;


-- Trigger = When an event happens, do something
--  ex. (INSERT, DELETE, UPDATE)

CREATE TRIGGER before_hourly_pay_update
BEFORE UPDATE ON employees
FOR EACH ROW 
SET NEW.salary = (NEW.hourly_pay * 2028); 

SELECT * FROM employees;

UPDATE employees
SET hourly_pay = 30
WHERE id = 5;