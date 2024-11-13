CREATE TABLE Users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    age INT
);

INSERT INTO Users (first_name, last_name, email, password, age)
VALUES
('Jane', 'Doe', 'jane@example.com', 'password4', 10),
('Michael', 'Brown', 'michael@example.com', 'password5', 20),
('Emma', 'Johnson', 'emma1@example.com', 'password6', 35),
('William', 'Davis', 'william@example.com', 'password7', 30),
('Olivia', 'Martinez', 'olivia@example.com', 'password8', 35),
('James', 'Miller', 'james@example.com', 'password9', 35),
('Sophia', 'Garcia', 'sophia@example.com', 'password10', 40),
('Benjamin', 'Rodriguez', 'benjamin@example.com', 'password11', 42),
('Amelia', 'Lopez', 'amelia@example.com', 'password12', 45),
('Elijah', 'Lee', 'elijah@example.com', 'password13', 50),
('Charlotte', 'Harris', 'charlotte@example.com', 'password14', 60),
('David', 'Clark', 'david@example.com', 'password15', 70),
('Mia', 'Lewis', 'mia@example.com', 'password16', 80),
('Alexander', 'Allen', 'alexander@example.com', 'password17', 15),
('Isabella', 'Young', 'isabella@example.com', 'password18', 18),
('Ethan', 'Wright', 'ethan@example.com', 'password19', 22),
('Ava', 'King', 'ava@example.com', 'password20', 24),
('Noah', 'Scott', 'noah@example.com', 'password21', 21),
('Liam', 'Green', 'liam@example.com', 'password22', 34),
('Emma', 'Baker', 'emma2@example.com', 'password23', 31);



--------------------------
-- SELECT first_name, last_name
-- FROM Users
-- -- WHERE age != 35
-- -- WHERE first_name != "Emma";
-- WHERE password != "password4";
--------------------------

--------------------------
SELECT *
FROM Users
-- WHERE age > 50;
-- WHERE age > 60;
WHERE LENGTH(first_name) > 5;
--------------------------

--------------------------
SELECT *
FROM Users
-- WHERE age < 50;
-- WHERE age < 60;
WHERE LENGTH(first_name) < 5;
--------------------------


--------------------------
SELECT *
FROM Users
-- WHERE age > 50 AND LENGTH(first_name) > 5
WHERE first_name = "Emma" AND last_name = "Johnson"
--------------------------

--------------------------
SELECT *
FROM Users
-- WHERE age < 30 OR age > 70;
WHERE first_name = 'Jane' OR last_name = 'Johnson';
--------------------------

--------------------------
SELECT *
FROM Users
WHERE age BETWEEN 40 AND 60;
--------------------------

--------------------------
SELECT *
FROM Users
-- WHERE age IN (25, 30, 35);
-- WHERE first_name IN ('Jane', 'Emma', 'Olivia');
WHERE email IN ('jane@example.com', 'olivia@example.com');
--------------------------

--------------------------
SELECT first_name, age,
    CASE
        WHEN age < 30 THEN 'Young'
        WHEN age >= 30 AND age < 60 THEN 'Middle-aged'
        ELSE 'Senior'
    END AS age_group
FROM
    Users;
--------------------------


SELECT COUNT()
