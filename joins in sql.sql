-- joins  (allow to combine two tables or more together if the have common column) inner, outer, self
-- eg employee id
-- inner join - return rows same in both columns from both tables

select *
from employee_demographics
;

select *
from employee_salary
;

select *
from employee_demographics as dem
inner join employee_salary as sal
	on dem.employee_id = sal.employee_id
;

select dem.employee_id, age, occupation
from employee_demographics as dem
inner join employee_salary as sal
	on dem.employee_id = sal.employee_id
;
