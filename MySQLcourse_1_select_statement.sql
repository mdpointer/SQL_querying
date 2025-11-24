#### This script is for use with the Parks_and_Rec database created with: MySQL-YouTube-Series/Beginner - Parks_and_Rec_Create_db.sql


SELECT *
FROM parks_and_recreation.employee_demographics;



SELECT first_name,
last_name,
birth_date,
age,
(age + 10) * 10 + 10
FROM parks_and_recreation.employee_demographics;
# computations follow PEMDAS order of operations



# distinct selects only unique values, if multiple columns returns unique combinations
SELECT DISTINCT gender
FROM parks_and_recreation.employee_demographics;