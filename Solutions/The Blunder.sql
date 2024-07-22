select abs(floor(avg(replace(salary, 0, '')) - avg(salary))) from employees
