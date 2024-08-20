-- WHERE clause

select*
from employee_salary
where salary <= 50000
;

select*
from employee_demographics
where birth_date > '1985-01-01'
;

-- AND OR NOT (Logical operators)
select *
from employee_demographics
where (first_name = 'Leslie' AND age = 44) OR age > 55
;

-- LIKE statement
-- % (anything) and _  (specific value)
select *
from employee_demographics
where birth_date like '1989%'
;