#### This script is for use with the Parks_and_Rec database created with: MySQL-YouTube-Series/Beginner - Parks_and_Rec_Create_db.sql

## Unions


SELECT *
FROM employee_demographics;



# the default union is actually union distinct
SELECT first_name, last_name
FROM employee_demographics
UNION 
SELECT first_name, last_name
FROM employee_salary
;


# but you can override it with union all
SELECT first_name, last_name
FROM employee_demographics
UNION ALL
SELECT first_name, last_name
FROM employee_salary
;





# for immoral budget reasons, we want to find old OR highly paid employees
# you can use multiple selects and unions to add cols where certain conditions apply - similar to an R mutate (case_when()) 

SELECT first_name, last_name, 'Old man' AS Label
FROM employee_demographics
WHERE age > 40 AND gender = 'Male'
UNION
SELECT first_name, last_name, 'Old lady' AS Label
FROM employee_demographics
WHERE age > 40 AND gender = 'Female'
UNION
SELECT first_name, last_name, 'Highly paid' AS Label
FROM employee_salary
WHERE salary >70000
ORDER BY first_name, last_name
;