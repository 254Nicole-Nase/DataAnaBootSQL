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
-- Outer Joins
-- left(outer)join take everything from left table and only return matches from right tables
-- exact opposite for the right(outer)join
select *
from employee_demographics as dem
left join employee_salary as sal
	on dem.employee_id = sal.employee_id
;
-- Self join where you tie the table to itself
select  emp1.employee_id as emp_santa,
emp1.first_name as first_name_santa,
emp1.last_name as last_name_santa,
emp2.employee_id as emp_name_emp,
emp2.first_name as first_name_emp,
emp2.last_name as last_name_emp
from employee_salary emp1
join employee_salary emp2
	on emp1.employee_id + 1 = emp2.employee_id
;
-- Joining multiple tables together eg tie emp_dem to pd through emp_sal
select *
from employee_demographics as dem
inner join employee_salary as sal
	on dem.employee_id = sal.employee_id
inner join parks_departments pd
	on sal.dept_id = pd.department_id
;
select * 
from parks_departments
;