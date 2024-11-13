-- --------------------------------------------------------------
CREATE TABLE engineer (
    engineer_id INT AUTO_INCREMENT PRIMARY KEY,
    engineer_name VARCHAR(255) NOT NULL,
    profession VARCHAR(255) NOT NULL,
    email VARCHAR(50)
);

CREATE TABLE tasks (
    task_id INT AUTO_INCREMENT PRIMARY KEY,
    task_name VARCHAR(255),
    task_description TEXT,
    engineer_id INT,
    CONSTRAINT fk_engineer_id FOREIGN KEY (engineer_id) REFERENCES engineer(engineer_id)
);

INSERT INTO engineer (engineer_name, profession, email)
VALUES
    ('Alice Johnson', 'Full-Stack', 'aj@gmail.com'),
    ('Bob Smith', 'Back-End', 'bobsmith@gmail.com'),
    ('Charlie Brown', 'Front-End', 'charilebrown@gmail.com');

INSERT INTO tasks (task_name, task_description, engineer_id)
VALUES
    ('Task 1', 'Design the UI in Figma', 1),
    ('Task 2', 'Build the Server In Bun', 2),
    ('Task 3', 'Code the UI in TailwindCSS', 1),
    ('Task 3', 'Code the UI in TailwindCSS', 3);
    -- ('Task 40', 'Description for Task 40', 40); ❌
-- --------------------------------------------------------------

CREATE TABLE engineer (
    engineer_id INT AUTO_INCREMENT PRIMARY KEY,
    engineer_name VARCHAR(255) NOT NULL,
    profession VARCHAR(255) NOT NULL,
    email VARCHAR(50)
);

CREATE TABLE tasks (
    task_id INT AUTO_INCREMENT PRIMARY KEY,
    task_name VARCHAR(255),
    task_description TEXT,
    engineer_id INT,
    FOREIGN KEY (engineer_id) REFERENCES engineer(engineer_id)
);

INSERT INTO engineer (engineer_name, profession, email)
VALUES
    ('Alice Johnson', 'Full-Stack', 'aj@gmail.com'),
    ('Bob Smith', 'Back-End', 'bobsmith@gmail.com'),
    ('Charlie Brown', 'Front-End', 'charilebrown@gmail.com');

INSERT INTO tasks (task_name, task_description, engineer_id)
VALUES
    ('Task 1', 'Design the UI in Figma', 1),
    ('Task 2', 'Build the Server In Bun', 2),
    ('Task 3', 'Code the UI in TailwindCSS', 1)
    -- ('Task 40', 'Description for Task 40', 40); ❌

SELECT * FROM tasks

-- ------------------- CROSS JOIN
-- A cross join is a type of join operation that combines each row from one table with every row from another table. It essentially creates a new result set containing all possible combinations of rows from the joined tables.

SELECT * FROM engineer CROSS JOIN tasks;
SELECT * FROM engineer, tasks

-- ------------------ INNER JOIN
-- An inner join selects records that have matching values in both tables.
SELECT * FROM engineer  
INNER JOIN tasks  ON engineer.engineer_id = tasks.engineer_id;

SELECT * FROM engineer e 
INNER JOIN tasks t ON e.engineer_id = t.engineer_id;

SELECT engineer_name, email, task_name, task_description FROM engineer e 
INNER JOIN tasks t ON e.engineer_id = t.engineer_id;

SELECT * FROM tasks t
JOIN engineer e  ON e.engineer_id = t.engineer_id;
------------------------------------------

------------------------------------------
-- LEFT JOIN
-- A left join returns all records from the left table (engineer), and the matched records from the right table (tasks).
--  If there's no match, the result is NULL from the right side.
SELECT * FROM engineer e 
LEFT JOIN tasks t ON e.engineer_id = t.engineer_id;

------------------------------------------
-- RIGHT JOIN
-- A right join returns all records from the right table (tasks), and the matched records from the left table (engineer). If there's no match, the result is NULL from the left side.
SELECT * FROM engineer e 
RIGHT JOIN tasks t ON e.engineer_id = t.engineer_id;


-- ABOUT FOREIGN KEY
--  TURN OFF CASECASE OF THE FOREIGN KEY
SET foreign_key_checks = 0;

--  TURN ON CASECASE OF THE FOREIGN KEY
SET foreign_key_checks = 1;
DELETE FROM employees
WHERE id = 3;

SELECT * FROM tasks;
SELECT * FROM employees ;

SELECT * FROM tasks;

-- ON DELETE SET NULL = WHEN a FK is deleted, replace FK with NULL
-- ON DELETE CASCADE = WHEN a FK is deleted, delete ROW

ALTER TABLE tasks
DROP FOREIGN KEY fk_engineer_id;

ALTER TABLE tasks
ADD CONSTRAINT fk_engineer_id FOREIGN KEY(engineer_id) REFERENCES engineer(engineer_id) 
ON DELETE SET NULL;





INSERT INTO engineer (engineer_name, profession, email)
VALUES
    ('Alice Johnson', 'Full-Stack', 'aj@gmail.com');

SELECT * FROM engineer;
SELECT * FROM tasks;

INSERT INTO tasks(task_name, engineer_id) 
VALUES ("Task 10", 4);

DELETE FROM engineer
WHERE engineer_id = 4;

SELECT * FROM tasks;