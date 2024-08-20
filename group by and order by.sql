-- Group By (rows that have same values  in specified columns) and aggregate functions

select *
from employee_demographics
;

select gender, avg(age)
from employee_demographics
group by gender
;

select occupation, salary
from employee_salary
group by occupation, salary
;

select gender, avg(age), max(age), min(age), count(age)
from employee_demographics
group by gender
;

-- ORDER BY (sort in asc or desc order)
select *
from employee_demographics
order by gender, age
;