#### This script is for use with the Parks_and_Rec database created with: MySQL-YouTube-Series/Beginner - Parks_and_Rec_Create_db.sql

## Joins

SELECT *
FROM parks_and_recreation.employee_demographics
;


SELECT gender, AVG(age)
FROM parks_and_recreation.employee_salary
;


# both tables contain the employee_id field




#### inner join
# rows that appear in BOTH tables
# inner join is the default if only JOIN is specified

SELECT *
FROM parks_and_recreation.employee_demographics 
INNER JOIN parks_and_recreation.employee_salary
    ON employee_demographics.nemployee_id = employee_salary.employee_id
;


# combine with aliasing to shorten the names of everything
SELECT *
FROM parks_and_recreation.employee_demographics AS dem
INNER JOIN parks_and_recreation.employee_salary AS sal
    ON dem.employee_id = sal.employee_id
;


# if selecting cols present in > table, you must specify in the select argument
SELECT dem.employee_id, age, occupation
FROM parks_and_recreation.employee_demographics AS dem
INNER JOIN parks_and_recreation.employee_salary AS sal
    ON dem.employee_id = sal.employee_id
;



## outer joins
# left takes everythign from the left (first) and everything matching in right
# right takes everything from the right (second) and everything matching from left

SELECT dem.employee_id, age, occupation
FROM parks_and_recreation.employee_demographics AS dem
LEFT JOIN parks_and_recreation.employee_salary AS sal
    ON dem.employee_id = sal.employee_id
;


SELECT dem.employee_id, age, occupation
FROM parks_and_recreation.employee_demographics AS dem
RIGHT JOIN parks_and_recreation.employee_salary AS sal
    ON dem.employee_id = sal.employee_id
;



## self joins
# ties a table to itself

# assign secret santa pairs
SELECT emp1.employee_id AS emp_santa,
emp1.first_name AS first_name_santa,
emp1.last_name AS first_name_santa,
emp2.employee_id AS emp_name,
emp2.first_name AS first_name_emp
emp2.last_name AS last_name_emp
FROM parks_and_recreation.employee_salary AS emp1
JOIN parks_and_recreation.employee_salary AS emp2
    ON emp1.employee_id + 1 = emp2.employee_id
;





## joining multiple tables
# 

SELECT *
FROM parks_departments


SELECT *
FROM parks_and_recreation.employee_demographics AS dem
INNER JOIN parks_and_recreation.employee_salary AS sal
    ON dem.nemployee_id = sal.employee_id
INNER JOIN parks_departments AS pd
    ON sal.dept.id = pd.department_id
;

