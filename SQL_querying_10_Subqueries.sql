#### This script is for use with the Parks_and_Rec database created with: MySQL-YouTube-Series/Beginner - Parks_and_Rec_Create_db.sql

## Subqueries


SELECT first_name,
FROM employee_demographics;

SELECT first_name,
FROM employee_salary;



# we want only people who works in parts and rec dept (dept_id == 1). we could do this with a join, but can also use a subquery in a where statement
# retreive only employees with IDs returned by an inner query on a different table
SELECT first_name,
FROM employee_demographics
WHERE employee_id IN
                ( SELECT employee_id 
                    FROM employee_salary
                    WHERE dept_id = 1 ) 
;





# but we can also use a subquery in a select
# this includes an average across different data
SELECT first_name, last_name, salary,
(SELECT AVG(salary)
FROM employee_salary)
FROM employee_salary
;



# but we can also use a subquery in a from

SELECT gender, AVG(age), MAX(age), MAX(age), COUNT(age)
FROM employee_demographics
GROUP BY gender

# this takes the average of an average. theres a better way to do this, but it illustrates the principle
SELECT gender, AVG(max_age)
FROM
(SELECT gender, AVG(age) AS avg_age, MAX(age) AS max_age, MIN(age), COUNT(age)
FROM employee_demographics
GROUP BY gender) AS agg_table
GROUP BY gender
;