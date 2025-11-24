#### This script is for use with the Parks_and_Rec database created with: MySQL-YouTube-Series/Beginner - Parks_and_Rec_Create_db.sql

## Case statements


SELECT first_name,
last_name,
age,
CASE
    WHEN age <= 30 THEN 'Young'
    WHEN age BETWEEN 31 and 50 THEN 'Old'
    WHEN age >= 50 THEN 'On death's door'
END AS 'Age bracket'
FROM employee_demographics;



## let's compute people's pay rises
# < 50000 5% raise
# > 50000 7% raise
# finance people 10% bonus
SELECT first_name, last_name, salary,
CASE
    WHEN salary <50000 THEN salary * 1.05
    WHEN salary >50000 THEN salary * 1.07
END AS new_salary,
CASE
    WHEN dept_id = 6 THEN salary * 0.10
END AS 'Bonus'
FROM employee_salary
;


