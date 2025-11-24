#### This script is for use with the Parks_and_Rec database created with: MySQL-YouTube-Series/Beginner - Parks_and_Rec_Create_db.sql

## Limit & aliasing


## Limit


SELECT gender, AVG(age)
FROM parks_and_recreation.employee_demographics
ORDER BY age DESC
LIMIT 3
;
# limit takes the X top rows


SELECT gender, AVG(age)
FROM parks_and_recreation.employee_demographics
ORDER BY age DESC
LIMIT 2,1
;
# if provided 2 arguments, limit begins at X and takes the next Y rows





## Aliasing


SELEC gender, AVG(age) AS avg_age
FROM parks_and_recreation.employee_demographics
GROUP BY gender
HAVING avg_age > 40
;
# alias changes the names of columns
