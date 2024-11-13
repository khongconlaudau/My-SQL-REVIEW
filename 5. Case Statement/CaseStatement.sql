
SELECT first_name, age,
CASE 
    WHEN age < 18 THEN "child"
    WHEN age >= 18 AND age <= 45 THEN "JJ"
    ELSE "Senior" 
END AS group_age
FROM users;