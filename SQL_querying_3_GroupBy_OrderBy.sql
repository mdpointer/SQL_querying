#### #### This script is for use with the Parks_and_Rec database created with: MySQL-YouTube-Series/Beginner - Parks_and_Rec_Create_db.sql

## Group by

SELECT *
FROM parks_and_recreation.employee_demographics;

## select and group by arguments must agree
SELECT gender, AVG(age)
FROM parks_and_recreation.employee_demographics
GROUP BY gender
;


SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM parks_and_recreation.employee_demographics
GROUP BY gender
;




## order by

## default order is ASC (ascending)
SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY first_name DESC
;


SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY gender, age DESC
;


# can also call cols by position - below is equivalent to previous query
SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY 5, 4 DESC
;