#### #### This script is for use with the Parks_and_Rec database created with: MySQL-YouTube-Series/Beginner - Parks_and_Rec_Create_db.sql

## WHERE CLAUSE

SELECT *
FROM parks_and_recreation.employee_salary
WHERE first_name = 'Leslie'
;


SELECT *
FROM parks_and_recreation.employee_salary
WHERE salary >= 50000
;


SELECT *
FROM parks_and_recreation.employee_demographics
WHERE gender != 'Female'
;


SELECT *
FROM parks_and_recreation.employee_demographics
WHERE birth_date > '1985-01-01'
;




#### AND / OR / NOT

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE birth_date > '1985-01-01'
OR NOT gender = 'Male'
;

## PEMDAS also applies to logical operations
SELECT *
FROM parks_and_recreation.employee_demographics
WHERE (frist_name = 'Leslie' AND age = 44) OR age > 55
;

## LIKE statement  % and _
SELECT *
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE 'Jer%'
;


SELECT *
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE 'a__'
;


SELECT *
FROM parks_and_recreation.employee_demographics
WHERE birth_date LIKE '1989%'
;