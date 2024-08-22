-- limit and Aliasing (specifying how many rows you want in your output)

select *
from employee_demographics
order by age desc
limit 2, 1 -- 1 row after row 2
;

-- aliasing (way to change the name of a column)

select gender, avg(age) AS avg_age -- not must AT though
from employee_demographics
group by gender
having avg_age > 40
;
