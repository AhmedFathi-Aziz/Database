select max(salary * months), count(employee_id) from employee
where salary * months = (select max(salary * months) from employee)
