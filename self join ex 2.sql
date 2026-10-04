SELECT a.employee_id,a.first_name,a.last_name,
CONCAT(b.first_name," ",b.last_name) as 'reports to'
FROM employees as a
INNER join employees as b
on a.super_visior_id=b.employee_id