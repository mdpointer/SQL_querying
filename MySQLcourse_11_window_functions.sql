#### This script is for use with the Parks_and_Rec database created with: MySQL-YouTube-Series/Beginner - Parks_and_Rec_Create_db.sql

## Window functions
# like group by, but doesnt roll up the data into a single column


# group by does it like this
SELECT gender, AVG(salary), AS avg_salary
FROM employee_demographics dem
JOIN employee_salary sal
    ON dem.employee_id = sal.employee_id
GROUP BY gender
;



# but a window functions keep all the rows intact, so you can add other cols
SELECT dem.first_name, dem.last_name, gender,
AVG(salary) OVER(PARTITION BY gender)
FROM employee_demographics dem
JOIN employee_salary sal
    ON dem.employee_id = sal.employee_id
;



# and you can also do cool stuff like rolling totals, aeparately for each gender (or not if you remove the partition by)
SELECT dem.first_name, dem.last_name, gender, salary,
SUM(salary) OVER(PARTITION BY gender ORDER BY dem.employee_id) AS rolling_total
FROM employee_demographics dem
JOIN employee_salary sal
    ON dem.employee_id = sal.employee_id
;




# you can also use this to add row numbers partitioned by categories and ordered by another col
# rank is simular, but scores ties as equal to eachother and assign the same number (positional rather than numerical scoring, so the number after a tie will be skipped)
# dense rank doesnt skip a number after a tie
SELECT dem.first_name, dem.last_name, gender, salary,
ROW_NUMBER() OVER(PARTITION BY gender ORDER BY salary DESC) AS row_num,
RANK() OVER(PARTITION BY gender ORDER BY salary DESC) AS rank_num, 
DENSE_RANK() OVER(PARTITION BY gender ORDER BY salary DESC) AS rank_num, 
FROM employee_demographics dem
JOIN employee_salary sal
    ON dem.employee_id = sal.employee_id
;

